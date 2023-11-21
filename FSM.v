module FSM(reset,clk,data,Q);
  
  input reset;
  input clk; 
  input data;

  output Q;
  reg Q;

  integer state = 3'b000; //store the current state of the FSM

  always @ (negedge clk or negedge reset) 
  begin
    Q <= 0;
    if (reset) //If reset has been hit, 
    begin  
     state = 3'b000;
    end  
    else if (state == 0 && data == 0) //cycle through each possible state, check 
    begin
      state = 3'b001;
    end 
    else if (state == 0 && data == 1)
    begin
      state = 3'b010;
    end 
    else if (state == 3'b001 && data == 0)
    begin
      state = 3'b101;
    end 
    else if (state == 3'b001 && data == 1)
    begin
      state = 3'b011;
    end 
    else if (state == 3'b010 && data == 0)
    begin
      state = 3'b011;
    end 
    else if (state == 3'b010 && data == 1)
    begin
      state = 3'b101;
    end 
    else if (state == 3'b011 && data == 0)
    begin
      state = 3'b100;
    end 
    else if (state == 3'b011 && data == 1)
    begin
      state = 3'b110;
    end 
    else if (state == 3'b100 && data == 0)
    begin
      state = 3'b000;
    end 
    else if (state == 3'b100 && data == 1)
    begin
      state = 3'b000;
      Q <= 1;
    end 
    else if (state == 3'b101 && data == 0)
    begin
      state = 3'b110;
    end 
    else if (state == 3'b101 && data == 1)
    begin
      state = 3'b110;
    end 
    else if (state == 3'b110 && data == 0)
    begin
      state = 3'b000;
    end 
    else if (state == 3'b110 && data == 1)
    begin
      state = 3'b000;
    end 
  end
  
endmodule
  