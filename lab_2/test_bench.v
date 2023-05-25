module lab_2_multiplexer_simulation_testing (m_out_LEDG0, 
															x_LED_input_LEDR17 , y_LED_input_LEDR16, 
															x_LED_output_LEDG7, y_LED_output_LEDG3, select_LED_LEDR0,
															x_in_SW17,y_in_SW16,sel_SW0);

input x_in_SW17,y_in_SW16,sel_SW0;
output m_out_LEDG0;
wire y_select, x_select,not_select;

// LED outputs
output x_LED_input_LEDR17 , y_LED_input_LEDR16 , select_LED_LEDR0,x_LED_output_LEDG7, y_LED_output_LEDG3;

// LED connections 
wire select_LED_LEDR0 = sel_SW0;
wire x_LED_input_LEDR17 = x_in_SW17;
wire y_LED_input_LEDR16 = y_in_SW16;
wire x_LED_output_LEDG7 = x_select;
wire y_LED_output_LEDG3 = y_select;

not (not_select,sel_SW0);

and (y_select, y_in_SW16, sel_SW0);
and (x_select,x_in_SW17, not_select);
or (m_out_LEDG0,y_select, x_select);



endmodule


/*

module test_bench(m_out_wire);

reg local_sel,local_x_in,local_y_in;
reg local_m_out;
output m_out_wire;


lab_2_multiplexer_simulation_testing two_to_one_mux (m_out_wire,local_x_in,local_y_in,local_sel);


initial
begin
    $monitor($time, "x_in = %b, y_in = %b, sel = %b, --- m_out_wire = %b\n", local_x_in, local_y_in, local_sel, m_out_wire );

end
// Stimulus inputs
initial
begin
    local_x_in = 0; local_y_in = 0; local_sel = 0;
    #10 local_x_in = 0; local_y_in = 0; local_sel = 0;
    #10 local_x_in = 0; local_y_in = 1; local_sel = 0;
    #10 local_x_in = 1; local_y_in = 0; local_sel = 0;
    #10 local_x_in = 1; local_y_in = 1; local_sel = 0;
    #10 local_x_in = 0; local_y_in = 0; local_sel = 1;
    #10 local_x_in = 0; local_y_in = 1; local_sel = 1;
    #10 local_x_in = 1; local_y_in = 0; local_sel = 1;
    #10 local_x_in = 1; local_y_in = 1; local_sel = 1;
end


endmodule
*/