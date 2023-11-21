module testbench();
  
  reg reset;
  reg clk; 
  reg data;
  wire Q;
  
  FSM finiteStateMachince(reset,clk,data,Q); 

localparam clkPeriod=2;// constant
initial 
  clk=0;  
always
  #(clkPeriod/2) clk=~clk;// toggling the clock
  
initial 
 begin	
   for (integer i=0; i <= 4'b1111; i++) // For each password combination
   begin
     for (integer j = 3'd3; j >= 0; j--) // For each digit in the password
       begin
         @(negedge clk);
         data = i[j]; //Enter the digit into the FSM
       end
   end
   $finish;
 end
  
initial 
begin
// Uncomment the next two lines if you want to see the timing diagram as well
$dumpfile("dump.vcd");// vcd=value change dump
  $dumpvars(0); // dump all variables in the wave form
end

endmodule