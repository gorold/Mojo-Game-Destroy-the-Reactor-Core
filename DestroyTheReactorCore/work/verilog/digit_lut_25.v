/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module digit_lut_25 (
    input [2:0] in,
    output reg [6:0] out
  );
  
  
  
  always @* begin
    out = 1'h0;
    
    case (in)
      1'h0: begin
        out = 7'h3f;
      end
      1'h1: begin
        out = 7'h06;
      end
      2'h2: begin
        out = 7'h5b;
      end
      2'h3: begin
        out = 7'h4f;
      end
      3'h4: begin
        out = 7'h66;
      end
      3'h5: begin
        out = 7'h6d;
      end
      default: begin
        out = 7'h3f;
      end
    endcase
  end
endmodule
