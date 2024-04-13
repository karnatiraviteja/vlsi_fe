class env extends uvm_env;
   
  `uvm_component_utils(env);
  
  function new(string name = "env", uvm_component parent = null);
    super.new(name, parent);
  endfunction
  
  agent a;
  scoreboard s;
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    a = agent::type_id::create("a", this);
    s = scoreboard::type_id::create("s", this);
  endfunction
  
  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    a.m.send.connect(s.rcvd);
  endfunction
  
endclass
