include <Lab_3_libary>;

module seven_segment_display_slot_2(light_segment_2, input_a,input_b,input_c,input_d);
input  input_a,input_b,input_c,input_d;
output light_segment_2;

//not wires
wire not_a,not_b,not_c,not_d;

not isnt_A (not_a, input_a);
not isnt_B (not_b,input_b);
not isnt_C (not_c,input_c);
not isnt_D (not_d,input_d);


// 4 gate sets
wire gate_set_0_1_4_5,gate_set_1_3_5_7,gate_set_4_5_6_7,gate_set_8_9_10_11, gate_set_1_5_13_9;

// input gate sets

or input_set_0_1_4_5 (gate_set_0_1_4_5,input_a, input_c);
or input_set_1_3_5_7 (gate_set_1_3_5_7,input_a,not_d);
or input_set_4_5_6_7 (gate_set_4_5_6_7,input_a,not_b);
or input_set_8_9_10_11 (gate_set_8_9_10_11, not_a, input_b);
or input_set_1_5_13_9 (gate_set_1_5_13_9, input_c, not_d);
// product of sums

and combined_input(light_segment_2,gate_set_0_1_4_5,gate_set_1_3_5_7,gate_set_4_5_6_7, gate_set_8_9_10_11, gate_set_1_5_13_9);


endmodule