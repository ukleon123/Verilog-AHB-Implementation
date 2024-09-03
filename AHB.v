module AHB( HADDR,
            
            HRDATA_I1,
            HRDATA_I2,
            HRDATA_I3,
            HRESP_I,
            HREADYOUT_I,
            HSEL,
            HRDATA_O,
            HRESP_O,
            HREADYOUT_O);

    input [2:0] HRESP_I, HREADYOUT_I;
    input [31:0] HADDR, HRDATA_I1, HRDATA_I2, HRDATA_I3;
    
    output HRESP_O, HREADYOUT_O;
    output [2:0] HSEL;
    output [31:0] HRDATA_O;

    wire [1:0] MSEL;

    decoder decode(.HADDR(HADDR), .MSEL(MSEL), .HSEL(HSEL));
    multiplexor mux(.MSEL(MSEL),
                    .HRDATA_I1(HRDATA_I1), 
                    .HRDATA_I2(HRDATA_I2), 
                    .HRDATA_I3(HRDATA_I3), 
                    .HRDATA_O(HRDATA_O), 
                    .HRESP_I(HRESP_I), 
                    .HRESP_O(HRESP_O), 
                    .HREADYOUT_I(HREADYOUT_I), 
                    .HREADYOUT_O(HREADYOUT_O));
   

endmodule