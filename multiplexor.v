module multiplexor( HRDATA_I1,
                      HRDATA_I2,
                      HRDATA_I3,
                      HRESP_I,
                      HREADYOUT_I,
                      MSEL,
                      HRDATA_O,
                      HRESP_O,
                      HREADYOUT_O);
  input [1:0]MSEL;
  input [2:0]HRESP_I, HREADYOUT_I;
  input [31:0]HRDATA_I1, HRDATA_I2, HRDATA_I3;

  output HRESP_O, HREADYOUT_O;
  output [31:0]HRDATA_O;

  assign HRDATA_O = MSEL[1] ? HRDATA_I1 : MSEL[0] ? HRDATA_I2 : HRDATA_I3;
  assign HRESP_O = MSEL[1] ? HRESP_I[0] : MSEL[0] ? HRESP_I[1] : HRESP_I[2];
  assign HREADYOUT_O = MSEL[1] ? HREADYOUT_I[0] : MSEL[0] ? HREADYOUT_I[1] : HREADYOUT_I[2];

endmodule
