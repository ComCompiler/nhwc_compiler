use std::fmt::{self, Display, Write};

use antlr_rust::CoerceTo;
use petgraph::visit::{EdgeRef, GraphProp, IntoEdgeReferences, IntoNodeReferences, NodeIndexable, NodeRef};

use core::fmt::Debug;
/// `Dot` implements output to graphviz .dot format for a graph.
///
/// Formatting and options are rather simple, this is mostly intended
/// for debugging. Exact output may change.
///
/// # Examples
///
/// ```
/// use petgraph::Graph;
/// use petgraph::dot::{Dot, Config};
///
/// let mut graph = Graph::<_, ()>::new();
/// graph.add_node("A");
/// graph.add_node("B");
/// graph.add_node("C");
/// graph.add_node("D");
/// graph.extend_with_edges(&[
///     (0, 1), (0, 2), (0, 3),
///     (1, 2), (1, 3),
///     (2, 3),
/// ]);
///
/// println!("{:?}", Dot::with_config(&graph, &[Config::EdgeNoLabel]));
///
/// // In this case the output looks like this:
/// //
/// // digraph {
/// //     0 [label="\"A\""]
/// //     1 [label="\"B\""]
/// //     2 [label="\"C\""]
/// //     3 [label="\"D\""]
/// //     0 -> 1
/// //     0 -> 2
/// //     0 -> 3
/// //     1 -> 2
/// //     1 -> 3
/// //     2 -> 3
/// // }
///
/// // If you need multiple config options, just list them all in the slice.
/// ```
pub struct Dot<'a, G>
where
    G: IntoEdgeReferences + IntoNodeReferences,
{
    graph:G,
    get_edge_attributes:&'a dyn Fn(G, G::EdgeRef) -> String,
    get_node_attributes:&'a dyn Fn(G, G::NodeRef) -> String,
    config:Configs,
}

static TYPE:[&str; 2] = ["graph", "digraph"];
static EDGE:[&str; 2] = ["--", "->"];
static INDENT:&str = "    ";

impl<'a, G> Dot<'a, G>
where
    G: IntoNodeReferences + IntoEdgeReferences,
{
    /// Create a `Dot` formatting wrapper with default configuration.
    #[inline]
    pub fn new(graph:G) -> Self { Self::with_config(graph, &[]) }

    /// Create a `Dot` formatting wrapper with custom configuration.
    #[inline]
    pub fn with_config(graph:G, config:&'a [Config]) -> Self { Self::with_attr_getters(graph, config, &|_, _| String::new(), &|_, _| String::new()) }

    #[inline]
    pub fn with_attr_getters(graph:G, config:&'a [Config], get_edge_attributes:&'a dyn Fn(G, G::EdgeRef) -> String, get_node_attributes:&'a dyn Fn(G, G::NodeRef) -> String) -> Self {
        let config = Configs::extract(config);
        Dot { graph, get_edge_attributes, get_node_attributes, config }
    }
}

/// `Dot` configuration.
///
/// This enum does not have an exhaustive definition (will be expanded)
// TODO: #[non_exhaustive] once MSRV >= 1.40,
// and/or for a breaking change make this something like an EnumSet: https://docs.rs/enumset
#[derive(Debug, PartialEq, Eq)]
pub enum Config {
    /// edge's color  
    /// 官方帮助文档https://graphviz.org/docs/edges/  
    /// 暂时只指定颜色(red,blue,yellow...)  
    /// &[String]中有四种,分别指定find_sym, add_sym, find_field, add_field  
    EdgeColorConfig(Vec<String>),
    /// graph's title
    Title(String),
    /// Use indices for node labels.
    NodeIndexLabel,
    /// Use indices for edge labels.
    EdgeIndexLabel,
    /// Use no edge labels.
    EdgeNoLabel,
    /// Use no node labels.
    NodeNoLabel,
    /// Do not print the graph/digraph string.
    GraphContentOnly,
    /// Rect with special label
    Record,
    //// rounded style
    Rounded,
    /// symtab visualization
    SymTab,
    /// Cfg graph with subblocks
    CfgBlock,

    #[doc(hidden)]
    _Incomplete(()),
}
macro_rules! make_config_struct {
    ($edge_color_config:ident:Vec<String>,
        $title:ident:String,
        $($variant:ident,)* ) => {
        #[allow(non_snake_case)]
        #[derive(Default)]
        struct Configs {
            $edge_color_config:Vec<String>,
            $title:String,
            $($variant:bool,)*
        }
        impl Configs {
            #[inline]
            fn extract(configs: &[Config]) -> Self {
                let mut conf = Self::default();
                for c in configs {
                    match c{
                        $(Config::$variant=> conf.$variant = true,)*
                        Config::$title(s) => conf.$title= s.clone(),
                        Config::$edge_color_config(s) => conf.$edge_color_config=s.to_vec(),
                        Config::_Incomplete(()) => {},
                    }
                }
                conf
            }
        }
    }
}
make_config_struct!(
    EdgeColorConfig:Vec<String>,
    Title:String,
    NodeIndexLabel,
    EdgeIndexLabel,
    EdgeNoLabel,
    NodeNoLabel,
    GraphContentOnly,
    Record,
    Rounded,
    SymTab,
    CfgBlock,
);
#[derive(Clone)]
pub enum Title {
    Title(Option<String>),
}
impl Debug for Title {
    fn fmt(&self, f:&mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            Title::Title(Some(t)) => write!(f, "{:?}", t),
            Title::Title(None) => write!(f, "None"),
        }
    }
}
impl Title {
    pub fn new(s:String) -> Self { Title::Title(Some(s)) }
}
impl<'a, G> Dot<'a, G>
where
    G: IntoNodeReferences + IntoEdgeReferences + NodeIndexable + GraphProp,
{
    fn graph_fmt<NF, EF>(&self, f:&mut fmt::Formatter, node_fmt:NF, edge_fmt:EF) -> fmt::Result
    where
        NF: Fn(&G::NodeWeight, &mut fmt::Formatter) -> fmt::Result,
        EF: Fn(&G::EdgeWeight, &mut fmt::Formatter) -> fmt::Result,
    {
        let g = self.graph;
        // 拿到 图
        if !self.config.GraphContentOnly {
            writeln!(f, "{} {{", TYPE[g.is_directed() as usize])?;
        }
        // 给图添加标题
        if !self.config.Title.is_empty() {
            writeln!(f, "{}label=\"{}\";\n{}fontsize=\"40\";", INDENT, self.config.Title.clone(), INDENT)?;
        }

        // output all labels
        for node in g.node_references() {
            write!(f, "{}{} [ ", INDENT, g.to_index(node.id()),)?;
            if self.config.Record {
                write!(f, "shape = record,")?;
            }
            if self.config.Rounded {
                write!(f, "style=\"rounded\", margin=0.2, width=0, height=0,")?;
            }
            if !self.config.NodeNoLabel {
                write!(f, "label = \"")?;
                if self.config.SymTab {
                    SymtabEscaped(FnFmt(node.weight(), &node_fmt)).fmt(f)?;
                } else if self.config.Record {
                    if self.config.CfgBlock {
                        // RecordEscaped会把'{','}'替换为'\\{','\\}',因此考虑使用密码本的symtab
                        SymtabEscaped(FnFmt(node.weight(), &node_fmt)).fmt(f)?;
                        if self.config.NodeIndexLabel {
                            write!(f, "|{{NodeIndex | [{}]}}", g.to_index(node.id()))?;
                        }
                    }else{
                        RecordEscaped(FnFmt(node.weight(), &node_fmt)).fmt(f)?;
                        if self.config.NodeIndexLabel {
                            write!(f, "\\lNodeIndex:[{}]", g.to_index(node.id()))?;
                        }
                    }
                        
                } else {
                    Escaped(FnFmt(node.weight(), &node_fmt)).fmt(f)?;
                    if self.config.NodeIndexLabel {
                        write!(f, "\\lNodeIndex:[{}]", g.to_index(node.id()))?;
                    }
                }
                write!(f, "\" ")?;
            }
            writeln!(f, "{}]", (self.get_node_attributes)(g, node))?;
        }
        // output all edges
        for (i, edge) in g.edge_references().enumerate() {
            write!(f, "{}{} {} {} [ ", INDENT, g.to_index(edge.source()), EDGE[g.is_directed() as usize], g.to_index(edge.target()),)?;
            if !self.config.EdgeNoLabel {
                write!(f, "label = \"")?;
                if self.config.EdgeIndexLabel {
                    write!(f, "{}", i)?;
                } else {
                    Escaped(FnFmt(edge.weight(), &edge_fmt)).fmt(f)?;
                }
                write!(f, "\" ")?;
            }
            // if !self.config.EdgeColorConfig.is_empty(){
            //     // 匹配当前边属性:find_sym, add_sym, find_field, add_field
            //     write!(f,"color=\"{}\",",self.config.EdgeColorConfig);
            // }
            writeln!(f, "{}]", (self.get_edge_attributes)(g, edge))?;
        }

        if !self.config.GraphContentOnly {
            writeln!(f, "}}")?;
        }
        Ok(())
    }
}

impl<'a, G> fmt::Display for Dot<'a, G>
where
    G: IntoEdgeReferences + IntoNodeReferences + NodeIndexable + GraphProp,
    G::EdgeWeight: fmt::Display,
    G::NodeWeight: fmt::Display,
{
    fn fmt(&self, f:&mut fmt::Formatter) -> fmt::Result { self.graph_fmt(f, fmt::Display::fmt, fmt::Display::fmt) }
}

impl<'a, G> fmt::Debug for Dot<'a, G>
where
    G: IntoEdgeReferences + IntoNodeReferences + NodeIndexable + GraphProp,
    G::EdgeWeight: fmt::Debug,
    G::NodeWeight: fmt::Debug,
{
    fn fmt(&self, f:&mut fmt::Formatter) -> fmt::Result { self.graph_fmt(f, fmt::Debug::fmt, fmt::Debug::fmt) }
}

/// Escape for Graphviz
struct Escaper<W>(W);

impl<W> fmt::Write for Escaper<W>
where
    W: fmt::Write,
{
    fn write_str(&mut self, s:&str) -> fmt::Result {
        for c in s.chars() {
            self.write_char(c)?;
        }
        Ok(())
    }

    fn write_char(&mut self, c:char) -> fmt::Result {
        match c {
            '"' | '\\' => self.0.write_char('\\')?,
            // \l is for left justified linebreak
            '\n' => return self.0.write_str("\\l"),
            _ => {}
        }
        self.0.write_char(c)
    }
}
struct RecordEscaper<W>(W);

impl<W> fmt::Write for RecordEscaper<W>
where
    W: fmt::Write,
{
    fn write_str(&mut self, s:&str) -> fmt::Result {
        for c in s.chars() {
            self.write_char(c)?;
        }
        Ok(())
    }

    fn write_char(&mut self, c:char) -> fmt::Result {
        match c {
            '"' | '\\' => self.0.write_char('\\')?,
            // \l is for left justified linebreak
            '\n' => return self.0.write_str("\\l"),
            '{' => return self.0.write_str("\\{"),
            '}' => return self.0.write_str("\\}"),
            '|' => return self.0.write_str("\\|"),
            '<' => return self.0.write_str("\\<"),
            '>' => return self.0.write_str("\\>"),
            _ => {}
        }
        self.0.write_char(c)
    }
}

struct SymtabEscaper<W>(W);

impl<W> fmt::Write for SymtabEscaper<W>
where
    W: fmt::Write,
{
    fn write_str(&mut self, s:&str) -> fmt::Result {
        for c in s.chars() {
            self.write_char(c)?;
        }
        Ok(())
    }

    fn write_char(&mut self, c:char) -> fmt::Result {
        match c {
            '"' | '\\' => self.0.write_char('\\')?,
            // \l is for left justified linebreak
            '\n' => return self.0.write_str("\\l"),
            '{' => return self.0.write_str("\\{"),
            '}' => return self.0.write_str("\\}"),
            '|' => return self.0.write_str("\\|"),
            '<' => return self.0.write_str("\\<"),
            '>' => return self.0.write_str("\\>"),
            '@' => return self.0.write_str("|"),
            '#' => return self.0.write_str("{"),
            '$' => return self.0.write_str("}"),
            _ => {}
        }
        self.0.write_char(c)
    }
}

/// Pass Display formatting through a simple escaping filter
struct Escaped<T>(T);

impl<T> fmt::Display for Escaped<T>
where
    T: fmt::Display,
{
    fn fmt(&self, f:&mut fmt::Formatter) -> fmt::Result {
        if f.alternate() {
            writeln!(&mut Escaper(f), "{:#}", &self.0)
        } else {
            write!(&mut Escaper(f), "{}", &self.0)
        }
    }
}

/// Pass Display formatting through a simple escaping filter
struct RecordEscaped<T>(T);

impl<T> fmt::Display for RecordEscaped<T>
where
    T: fmt::Display,
{
    fn fmt(&self, f:&mut fmt::Formatter) -> fmt::Result {
        if f.alternate() {
            writeln!(&mut RecordEscaper(f), "{:#}", &self.0)
        } else {
            write!(&mut RecordEscaper(f), "{}", &self.0)
        }
    }
}
struct SymtabEscaped<T>(T);

impl<T> fmt::Display for SymtabEscaped<T>
where
    T: fmt::Display,
{
    fn fmt(&self, f:&mut fmt::Formatter) -> fmt::Result {
        if f.alternate() {
            writeln!(&mut SymtabEscaper(f), "{:#}", &self.0)
        } else {
            write!(&mut SymtabEscaper(f), "{}", &self.0)
        }
    }
}

/// Format data using a specific format function
struct FnFmt<'a, T, F>(&'a T, F);

impl<'a, T, F> fmt::Display for FnFmt<'a, T, F>
where
    F: Fn(&'a T, &mut fmt::Formatter<'_>) -> fmt::Result,
{
    fn fmt(&self, f:&mut fmt::Formatter) -> fmt::Result { self.1(self.0, f) }
}

#[cfg(test)]
mod test {
    use super::{Config, Dot, Escaper};
    use petgraph::prelude::Graph;
    use petgraph::visit::NodeRef;
    use std::fmt::Write;

    #[test]
    fn test_escape() {
        let mut buff = String::new();
        {
            let mut e = Escaper(&mut buff);
            let _ = e.write_str("\" \\ \n");
        }
        assert_eq!(buff, "\\\" \\\\ \\l");
    }

    fn simple_graph() -> Graph<&'static str, &'static str> {
        let mut graph = Graph::<&str, &str>::new();
        let a = graph.add_node("A");
        let b = graph.add_node("B");
        graph.add_edge(a, b, "edge_label");
        graph
    }

    #[test]
    fn test_nodeindexlable_option() {
        let graph = simple_graph();
        let dot = format!("{:?}", Dot::with_config(&graph, &[Config::NodeIndexLabel]));
        assert_eq!(dot, "digraph {\n    0 [ label = \"0\" ]\n    1 [ label = \"1\" ]\n    0 -> 1 [ label = \"\\\"edge_label\\\"\" ]\n}\n");
    }

    #[test]
    fn test_edgeindexlable_option() {
        let graph = simple_graph();
        let dot = format!("{:?}", Dot::with_config(&graph, &[Config::EdgeIndexLabel]));
        assert_eq!(dot, "digraph {\n    0 [ label = \"\\\"A\\\"\" ]\n    1 [ label = \"\\\"B\\\"\" ]\n    0 -> 1 [ label = \"0\" ]\n}\n");
    }

    #[test]
    fn test_edgenolable_option() {
        let graph = simple_graph();
        let dot = format!("{:?}", Dot::with_config(&graph, &[Config::EdgeNoLabel]));
        assert_eq!(dot, "digraph {\n    0 [ label = \"\\\"A\\\"\" ]\n    1 [ label = \"\\\"B\\\"\" ]\n    0 -> 1 [ ]\n}\n");
    }

    #[test]
    fn test_nodenolable_option() {
        let graph = simple_graph();
        let dot = format!("{:?}", Dot::with_config(&graph, &[Config::NodeNoLabel]));
        assert_eq!(dot, "digraph {\n    0 [ ]\n    1 [ ]\n    0 -> 1 [ label = \"\\\"edge_label\\\"\" ]\n}\n");
    }

    #[test]
    fn test_with_attr_getters() {
        let graph = simple_graph();
        let dot = format!(
            "{:?}",
            Dot::with_attr_getters(&graph, &[Config::NodeNoLabel, Config::EdgeNoLabel], &|_, er| format!("label = \"{}\"", er.weight().to_uppercase()), &|_, nr| format!(
                "label = \"{}\"",
                nr.weight().to_lowercase()
            ),),
        );
        assert_eq!(dot, "digraph {\n    0 [ label = \"a\"]\n    1 [ label = \"b\"]\n    0 -> 1 [ label = \"EDGE_LABEL\"]\n}\n");
    }
}
