include <Lab_3_libary>;

module main(output_led_slot_0_hex_0_0,output_led_slot_1_hex_0_1,output_led_slot_2_hex_0_2,
				output_led_slot_3_hex_0_3,output_led_slot_4_hex_0_4,output_led_slot_5_hex_0_5,
				output_led_slot_6_hex_0_6,
				output_LEDR_0,output_LEDR_1,output_LEDR_2,output_LEDR_3,
				input_a_sw_3,input_b_sw_2,input_c_sw_1,input_d_sw_0);

// sw inputs
input input_a_sw_3,input_b_sw_2,input_c_sw_1,input_d_sw_0;
//led red output
output output_LEDR_0,output_LEDR_1,output_LEDR_2,output_LEDR_3;

//  hex display output
output output_led_slot_0_hex_0_0,output_led_slot_1_hex_0_1,output_led_slot_2_hex_0_2,
				output_led_slot_3_hex_0_3,output_led_slot_4_hex_0_4,output_led_slot_5_hex_0_5,
				output_led_slot_6_hex_0_6;
				
				
//ledr light asignment

wire output_LEDR_0 = input_d_sw_0;
wire output_LEDR_1 = input_c_sw_1;
wire output_LEDR_2 = input_b_sw_2;
wire output_LEDR_3 = input_a_sw_3;
				

 seven_segment_display_slot_6(output_led_slot_6_hex_0_6, input_a_sw_3,input_b_sw_2,input_c_sw_1,input_d_sw_0);
 seven_segment_display_slot_5(output_led_slot_5_hex_0_5, input_a_sw_3,input_b_sw_2,input_c_sw_1,input_d_sw_0);
 seven_segment_display_slot_4(output_led_slot_4_hex_0_4, input_a_sw_3,input_b_sw_2,input_c_sw_1,input_d_sw_0);
 seven_segment_display_slot_3(output_led_slot_3_hex_0_3, input_a_sw_3,input_b_sw_2,input_c_sw_1,input_d_sw_0);
 seven_segment_display_slot_2(output_led_slot_2_hex_0_2, input_a_sw_3,input_b_sw_2,input_c_sw_1,input_d_sw_0);
 seven_segment_display_slot_1(output_led_slot_1_hex_0_1, input_a_sw_3,input_b_sw_2,input_c_sw_1,input_d_sw_0);
 seven_segment_display_slot_0(output_led_slot_0_hex_0_0, input_a_sw_3,input_b_sw_2,input_c_sw_1,input_d_sw_0);




endmodule 