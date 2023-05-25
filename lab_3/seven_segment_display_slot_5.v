include<lab_3_libary>;

module seven_segment_display_slot_5(light_segment_5, input_a,input_b,input_c,input_d);




input  input_a,input_b,input_c,input_d;
output light_segment_5;



//not wires
wire not_a,not_b,not_c,not_d;

not isnt_A (not_a, input_a);
not isnt_B (not_b,input_b);
not isnt_C (not_c,input_c);
not isnt_D (not_d,input_d);

//4 set block product of sums wires
wire gate_set_8_9_10_11,gate_set_0_4_12_8,gate_set_15_14_11_10;
//2 set block product of sums wires
wire gate_set_4_5,gate_set_4_6;

// 4 block gate sets

or anti_inputs_8_9_10_11(gate_set_8_9_10_11,not_a,input_b);
or anti_inputs_0_4_12_8(gate_set_0_4_12_8,input_c,input_d);
or anti_inputs_15_14_11_10(gate_set_15_14_11_10,not_a,not_c);

// 2 block gate sets

or anti_inputs_4_5(gate_set_4_5,input_a,not_b,input_c);
or anti_inputs_4_6(gate_set_4_6,input_a,not_b,input_d);

and combined_output(light_segment_5,gate_set_8_9_10_11,gate_set_0_4_12_8,gate_set_15_14_11_10,gate_set_4_5,gate_set_4_6);



endmodule