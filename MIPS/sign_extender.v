`timescale 1ns / 100 ps

module sign_extender( extend, extended );
input[5:0] extend;
output[15:0] extended;

 assign   extended[15:0] = { {10{extend[5]}}, extend[5:0] };

endmodule
