module slowClock(input logic clk, reset, output logic clk_1Hz = 0);

logic  [24:0] counter = 0;

always@(posedge reset or posedge clk)
begin
    if (reset == 1'b1)
        begin
            clk_1Hz <= 0;
            counter <= 0;
        end
    else
        begin
            counter <= counter + 1'b1;
            if (counter == 25'b1011111010111100001000000)	// 25M en binario
                begin
                    counter <= 0;
                    clk_1Hz <= ~clk_1Hz;
                end
        end
end
endmodule   