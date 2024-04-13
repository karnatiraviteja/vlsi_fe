class transaction extends uvm_sequence_item;
    
  rand bit [3:0] a;
  rand bit [3:0] b;
  bit [7:0] y;
  
  function new(string name = "transaction");
    super.new(name);
  endfunction
  
  `uvm_object_utils_begin(transaction)
  `uvm_field_int(a, UVM_DEFAULT)
  `uvm_field_int(b, UVM_DEFAULT)
  `uvm_field_int(y, UVM_DEFAULT)
  `uvm_object_utils_end
    
endclass
