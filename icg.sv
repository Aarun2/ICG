module icg(clk, rst_n, gclk);
    input en, clk, rst_n;
    output gclk;

    logic en_ff;

    // Latch for the enable signal //
    always @(clk)
        if (~clk)
            en_ff <= en;
    
    assign gclk = clk & en_ff;

endmodule