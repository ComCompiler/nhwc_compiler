pub enum CfgEdge{
    Conditioned{
        // 这里对应的是 Expr ast node 的条件
        ast_node: u32 
    },
    Else{

    },
    Direct{
        
    }
}