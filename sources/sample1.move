
// this is how to define a module  
// we should provide the address of the module in the Move.toml file
// then we should provide the name of the module
module aptos_move_addr::Sample1 {

    // to use external module we should import it
    // std is the first address (0x1)
    // debug is the module name
    // print is a function name with in the debug module
    use std::debug::print;
    use std::string::{String, utf8};
   
   const MAX_COUNT: u64 = 100;

   fun set_value(count: u64): u64 {
    let value: u64 = count;
    print(&value);

    // we need to convert the strings to bytes
    let string_value : String = utf8(b"Hello, World!");
    print(&string_value);

    // returning the value
    value
   }
   
   #[test]
   fun test_set_value() {
    let result: u64 = set_value(10);
    print(&result);
   }
}
