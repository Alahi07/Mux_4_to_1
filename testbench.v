module mux4to1_tb;
  reg a, b, c, d;
  reg [1:0] sel;
  wire y;

  
  mux4to1 uut (
    .A(a),
    .B(b),
    .C(c),
    .D(d),
    .sel(sel),
    .y(y)
  );

  
  initial begin
    $dumpfile("mux4to1.vcd");
    $dumpvars(0, mux4to1_tb);
  end

  
  initial begin
    $monitor("Time = %0t | sel = %b | a = %b, b = %b, c = %b, d = %b | y = %b", 
              $time, sel, a, b, c, d, y);

    
    a = 0; b = 0; c = 0; d = 0; sel = 2'b00; #10;
    a = 0; b = 1; c = 0; d = 0; sel = 2'b01; #10;
    a = 0; b = 0; c = 1; d = 0; sel = 2'b10; #10;
    a = 0; b = 0; c = 0; d = 1; sel = 2'b11; #10;

    $finish;
  end
endmodule
