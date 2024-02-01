use std::collections::BTreeMap;

use crate::toolkit::{ast_node,cfg_node};


struct SymbolTable {
    map: BTreeMap<String, i32>,
}

impl SymbolTable {
    // 创建一个新的符号表
    fn new() -> SymbolTable {
        SymbolTable {
            map: BTreeMap::new(),
        }
    }

    // 添加或更新符号
    fn insert(&mut self, key: String, value: i32) {
        self.map.insert(key, value);
    }

    // 查找符号
    fn get(&self, key: &str) -> Option<&i32> {
        self.map.get(key)
    }

    // 删除符号
    fn remove(&mut self, key: &str) {
        self.map.remove(key);
    }
}



