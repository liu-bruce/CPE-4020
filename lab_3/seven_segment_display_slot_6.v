include <Lab_3_libary>;

module seven_segment_display_slot_6(light_segment_6, input_a,input_b,input_c,input_d);
input  input_a,input_b,input_c,input_d;
output light_segment_6;



//not wires
wire not_a,not_b,not_c,not_d;

not isnt_A (not_a, input_a);
not isnt_B (not_b,input_b);
not isnt_C (not_c,input_c);
not isnt_D (not_d,input_d);

// 4 block product of sums
wire gate_set_2_6_14_10,gate_set_13_9_15_11;
// 2 block product of sums
wire gate_set_3_2,gate_set_4_5,gate_set_8_9;

or anti_inputs_2_6_14_10(gate_set_2_6_14_10,not_c,input_d );
or anti_inputs_13_9_15_11(gate_set_13_9_15_11,not_a,not_d );
// 2 block
or anti_inputs_3_2(gate_set_3_2,input_a,input_b,not_c);
or anti_inputs_4_5(gate_set_4_5,input_a,not_b,input_c);
or anti_inputs_8_9(gate_set_8_9,not_a,input_b,input_c);

and combined_output(light_segment_6,gate_set_2_6_14_10,gate_set_13_9_15_11,gate_set_3_2,gate_set_4_5,gate_set_8_9);

endmodule