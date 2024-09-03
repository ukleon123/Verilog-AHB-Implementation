module decoder( HADDR,
                  HSEL,
                  MSEL);
  input [31:0]HADDR;
  
  output [1:0]MSEL;
  output [2:0]HSEL;
 
  assign MSEL = HADDR[11:10];
  assign HSEL = HADDR[11] ? 3'b100 : HADDR[10] ? 3'b010 : 3'b001;
endmodule
