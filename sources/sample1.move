
// this is how to define a module  
// we should provide the address of the module in the Move.toml file
// then we should provide the name of the module
module aptos_move_addr::Sample1 {

    // to use external module we should import it
    // std is the first address (0x1)
    // debug is the module name
    // print is a function name with in the debug module
    use std::debug::print;
   
}
