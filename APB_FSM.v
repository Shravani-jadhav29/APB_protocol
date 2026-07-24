`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/14/2026 04:03:07 PM
// Design Name: 
// Module Name: APB_protocol
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module APB_protocol(
    input clk,
    input psel,
    input penable,
    input pready,
    input preset,
    output reg [1:0] state
);

parameter idle   = 2'b00;
parameter setup  = 2'b01;
parameter access = 2'b10;

reg [1:0] ns;

       always @(posedge clk or posedge preset) 
        begin
    if (preset)
        state <= idle;
    else
        state <= ns;
end

always @(*)
begin
    ns = state;

  case (state)
     idle:
     begin
            if (psel && !penable)
                ns = setup;
      end

      setup:
      begin
            if (!psel)
                ns = idle;
          else if (penable)
                ns = access;
      end

       access:
           begin
               if (!pready)
                  ns = access;       
               else if (psel)
                  ns = setup;        
                else
                  ns = idle;         
end

      default:
            ns = idle;
    endcase
end

endmodule

