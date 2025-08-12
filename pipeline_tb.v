/*
module pipeline_tb();

    reg clk=0, rst;
    
    always begin
        clk = ~clk;
        #50;
    end

    initial begin
        rst <= 1'b0;
        #200;
        rst <= 1'b1;
        #1000;
        $finish;    
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

    Pipeline_top dut (.clk(clk), .rst(rst));
endmodule

*/

module pipeline_tb();

    reg clk;
    reg rst;
    
    always #5 clk = ~clk;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, pipeline_tb);

        clk = 1'b0;
        rst = 1'b0;

        #10;
        
        rst = 1'b1;

        #200;

        $finish;    
    end

    Pipeline_top dut (.clk(clk), .rst(rst));

endmodule