include<lab_3_libary>;

module seven_segment_display_slot_4(light_segment_4, input_a,input_b,input_c,input_d);




input  input_a,input_b,input_c,input_d;
output light_segment_4;



//not wires
wire not_a,not_b,not_c,not_d;

not isnt_A (not_a, input_a);
not isnt_B (not_b,input_b);
not isnt_C (not_c,input_c);
not isnt_D (not_d,input_d);

// 4 block product of sums
wire gate_set_12_13_14_15, gate_set_0_2_8_10,gate_set_11_10_15_14, gate_set_2_6_10_14 ;

or anti_input_12_13_14_15(gate_set_12_13_14_15,not_a,not_b);
or anti_input_2_6_10_14(gate_set_2_6_10_14,not_c,input_d);


or anti_input_11_10_15_14(gate_set_11_10_15_14,not_a,not_c);
or anti_input_0_2_8_10(gate_set_0_2_8_10,input_d,input_b);

and combined_output(light_segment_4,gate_set_12_13_14_15, gate_set_0_2_8_10,gate_set_11_10_15_14, gate_set_2_6_10_14 );



endmodule