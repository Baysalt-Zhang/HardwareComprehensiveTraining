/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Bit_Extender_8_32_SIGN                                       **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Bit_Extender_8_32_SIGN( imm_in,
                               imm_out);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[7:0]  imm_in;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output reg [31:0] imm_out;

	always @(*) begin
		imm_out = {{(24){imm_in[7]}}, imm_in};
	end

endmodule
