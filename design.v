module mux4to1 (
  input A,
  input B,
  input C,
  input D,
  input [1:0] sel,
  output y
);

  assign y = sel[1]? (sel[0]? D:C): (sel[0]? B:A); 
endmodule
