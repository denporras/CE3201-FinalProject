`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:57:41 11/22/2017 
// Design Name: 
// Module Name:    draw_symbol 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module draw_symbol#(parameter WIDTH = 5,   // default width: 10 pixels
       HEIGHT = 10)(
		hcount, 
		vcount,
		clk,
		pixel,
		adr,
		data
    );

input [9:0] hcount;
input [9:0]  vcount;
input [31:0]  data;
input clk;
output reg[31:0] adr;
output reg[7:0] pixel;
reg [9:0] x;
reg [9:0] y;
reg [3:0] i;
reg [3:0] j;

always @(posedge clk) 
		begin
			if (hcount<40)
				begin
					x = 0;
					j = 0;
				end
			else 
				begin
					if (hcount<80)
						begin
							x = 40;
							j = 1;
						end
					else 
						begin
							if (hcount<120)
								begin
									x = 80;
									j = 2;
								end
							else 
								begin
									if (hcount<160)
										begin
											x = 120;
											j = 3;
										end
									else 
										begin
											if (hcount<200)
												begin
													x = 160;
													j = 4;
												end
											else 
												begin
													if (hcount<240)
														begin
															x = 200;
															j = 5;
														end
													else 
														begin
															if (hcount<280)
																begin
																	x = 240;
																	j = 6;
																end
															else 
																begin
																	if (hcount<320)
																		begin
																			x = 280;
																			j = 7;
																		end
																	else 
																		begin
																			if (hcount<360)
																				begin
																					x = 320;
																					j = 8;
																				end
																			else 
																				begin
																					if (hcount<400)
																						begin
																							x = 360;
																							j = 9;
																						end
																					else 
																						begin
																							if (hcount<440)
																								begin
																									x = 400;
																									j = 10;
																								end
																							else 
																								begin
																									if (hcount<480)
																										begin
																											x = 440;
																											j = 11;
																										end
																									else 
																										begin
																											if (hcount<520)
																												begin
																													x = 480;
																													j = 12;
																												end
																											else 
																												begin
																													if (hcount<560)
																														begin
																															x = 520;
																															j = 13;
																														end
																													else 
																														begin
																															if (hcount<600)
																																begin
																																	x = 560;
																																	j = 14;
																																end
																															else 
																																begin
																																	if (hcount<640)
																																	begin
																																		x = 600;
																																		j = 15;
																																	end
																																
																																end
																														end
																												end
																										end
																								end
																						end
																				end
																		end
																end
														end
												end
										end
								end
						end
				end
			if (vcount<40)
				begin
					y = 0;
					i = 0;
				end
			else 
				begin
					if (vcount<80)
						begin
							y = 40;
							i = 1;
						end
					else 
						begin
							if (vcount<120)
								begin
									y = 80;
									i = 2;
								end
							else 
								begin
									if (vcount<160)
										begin
											y = 120;
											i = 3;
										end
									else 
										begin
											if (vcount<200)
												begin
													y = 160;
													i = 4;
												end
											else 
												begin
													if (vcount<240)
														begin
															y = 200;
															i = 5;
														end
													else 
														begin
															if (vcount<280)
																begin
																	y = 240;
																	i = 6;
																end
															else 
																begin
																	if (vcount<320)
																		begin
																			y = 280;
																			i = 7;
																		end
																	else 
																		begin
																			if (vcount<360)
																				begin
																					y = 320;
																					i = 8;
																				end
																			else 
																				begin
																					if (vcount<400)
																						begin
																							y = 360;
																							i = 9;
																						end
																					else 
																						begin
																							if (vcount<440)
																								begin
																									y = 400;
																									i = 10;
																								end
																							else 
																								begin
																									if (vcount<480)
																										begin
																											y = 440;
																											i = 11;
																										end
																								end
																							
																						end
																				end
																		end
																end
														end
												end
										end
								end
						end
				end
		
		adr = i*16+j;
		
		
		//Espacio
		//A
		if(data == 1 &&((hcount >= x+5 && hcount < x+30 && (vcount >= y && vcount < (y + WIDTH))) ||
			((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y+5 && vcount < y+35)) ||
			(hcount >= x && hcount < x+35 && (vcount >= y+20 && vcount < (y+20 + WIDTH))) ||
			((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+5 && vcount < y+35))))  
			pixel <= 8'hFF;
		else
			begin
		//B
		if(data == 2 &&((hcount >= x && hcount < x+30 && (vcount >= y && vcount < (y + WIDTH))) ||
				((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
				(hcount >= x && hcount < x+30 && (vcount >= y+30 && vcount < (y+30 + WIDTH))) ||
				((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+5 && vcount < y+30)) ||
				(hcount >= x && hcount < x+30 && (vcount >= y+15 && vcount < (y+15 + WIDTH))))) 
				pixel <= 8'hFF;
			else
				begin
		//C
				if(data == 3 && ((hcount >= x && hcount < x+35 && (vcount >= y && vcount < (y + WIDTH))) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+30 && vcount < (y+30 + WIDTH))))) 
					pixel <= 8'hFF;
				else
					begin
				//D	
				if(data == 4 && ((hcount >= x && hcount < x+30 && (vcount >= y && vcount < (y + WIDTH))) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					(hcount >= x && hcount < x+30 && (vcount >= y+30 && vcount < (y+30 + WIDTH))) ||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+5 && vcount < y+30)))) 
					pixel <= 8'hFF;
				else
					begin
					//E
						if(data == 5 && ((hcount >= x && hcount < x+35 && (vcount >= y && vcount < (y + WIDTH))) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+30 && vcount < (y+30 + WIDTH))) ||
					(hcount >= x && hcount < x+25 && (vcount >= y+15 && vcount < (y+15 + WIDTH))))) 
					pixel <= 8'hFF;
					else
						begin
						//F
					if(data == 6 && ((hcount >= x && hcount < x+35 && (vcount >= y && vcount < (y + WIDTH))) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+15 && vcount < (y+15 + WIDTH))))) 
					pixel <= 8'hFF;
					else
						begin
						//G
						if(data == 7 && ((hcount >= x && hcount < x+35 && (vcount >= y && vcount < (y + WIDTH))) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+30 && vcount < (y+30 + WIDTH))) ||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+15 && vcount < y+30)) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+15 && vcount < (y+15 + WIDTH))))) 
					pixel <= 8'hFF;
					else
						begin
						//H
						if(data == 8 && (((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+15 && vcount < (y+15 + WIDTH))) ||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y && vcount < y+35)))) 
					pixel <= 8'hFF;
					else
						begin
						//I
						if(data == 9 && ((hcount >= x && hcount < x+35 && (vcount >= y && vcount < (y + WIDTH))) ||
						(hcount >= x && hcount < x+35 && (vcount >= y+30 && vcount < (y+30 + WIDTH))) ||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y && vcount < y+35)))) 
					pixel <= 8'hFF;
					else
						begin
							//J
							if(data == 10 && ((hcount >= x && hcount < x+35 && (vcount >= y && vcount < (y + WIDTH))) ||
						(hcount >= x && hcount < x+20 && (vcount >= y+30 && vcount < (y+30 + WIDTH))) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y+15 && vcount < y+35)) ||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y && vcount < y+35)))) 
					pixel <= 8'hFF;
					else
						begin
						//K
						if(data == 11 && (((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35))||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y+30 && vcount < y+35)) ||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+15 && vcount < y+20))||
					((hcount >= x+20 && hcount < (x+20 + WIDTH)) && (vcount >= y+10 && vcount < y+15))||
					((hcount >= x+25 && hcount < (x+25 + WIDTH)) && (vcount >= y+5 && vcount < y+10))||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y && vcount < y+5)) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+5)) ||
					((hcount >= x+5 && hcount < (x+10 + WIDTH)) && (vcount >= y+15 && vcount < y+20))||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+15 && vcount < y+20))||
					((hcount >= x+20 && hcount < (x+20 + WIDTH)) && (vcount >= y+20 && vcount < y+25))||
					((hcount >= x+25 && hcount < (x+25 + WIDTH)) && (vcount >= y+25 && vcount < y+30))||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+30 && vcount < y+35)))) 
					pixel <= 8'hFF;
					else
						begin
						//L
						if(data == 12 && (((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+30 && vcount < (y+30 + WIDTH))))) 
					pixel <= 8'hFF;
					else
						begin
						//M
						if(data == 13 && (((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+0 && vcount < y+35)) ||
					((hcount >= x+20 && hcount < (x+20 + WIDTH)) && (vcount >= y+10 && vcount < y+15))||
					((hcount >= x+25 && hcount < (x+25 + WIDTH)) && (vcount >= y+5 && vcount < y+10))||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y && vcount < y+5)) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+5)) ||
					((hcount >= x+5 && hcount < (x+5 + WIDTH)) && (vcount >= y+5 && vcount < y+10))||
					((hcount >= x+10 && hcount < (x+10 + WIDTH)) && (vcount >= y+10 && vcount < y+15))||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+15 && vcount < y+20)))) 
					pixel <= 8'hFF;
					else
						begin
						//N
					if(data == 14 && (((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y+30 && vcount < y+35)) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+5)) ||
					((hcount >= x+5 && hcount < (x+5 + WIDTH)) && (vcount >= y+5 && vcount < y+10))||
					((hcount >= x+10 && hcount < (x+10 + WIDTH)) && (vcount >= y+10 && vcount < y+15))||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+15 && vcount < y+20))||
					((hcount >= x+20 && hcount < (x+20 + WIDTH)) && (vcount >= y+20 && vcount < y+25))||
					((hcount >= x+25 && hcount < (x+25 + WIDTH)) && (vcount >= y+25 && vcount < y+30))||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+30 && vcount < y+35)))) 
					pixel <= 8'hFF;
					else
						begin
						//O
						if(data == 15 && ((hcount >= x && hcount < x+35 && (vcount >= y && vcount < (y + WIDTH))) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+30 && vcount < (y+30 + WIDTH))) ||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+5 && vcount < y+30)))) 
					pixel <= 8'hFF;
					else
						begin
						//P
						if(data == 16 && ((hcount >= x && hcount < x+35 && (vcount >= y && vcount < (y + WIDTH))) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+15 && vcount < (y+15 + WIDTH))) ||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+5 && vcount < y+15)))) 
					pixel <= 8'hFF;
					else
						begin
						//Q
						if(data == 17 && ((hcount >= x && hcount < x+35 && (vcount >= y && vcount < (y + WIDTH))) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+25)) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+20 && vcount < (y+20 + WIDTH))) ||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+5 && vcount < y+25)) ||
					((hcount >= x+20 && hcount < (x+20 + WIDTH)) && (vcount >= y+20 && vcount < y+25))||
					((hcount >= x+25 && hcount < (x+25 + WIDTH)) && (vcount >= y+25 && vcount < y+30))||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+30 && vcount < y+35)))) 
					pixel <= 8'hFF;
					else
						begin
						//R
						if(data == 18 && ((hcount >= x && hcount < x+35 && (vcount >= y && vcount < (y + WIDTH))) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					(hcount >= x && hcount < x+30 && (vcount >= y+15 && vcount < (y+15 + WIDTH))) ||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+5 && vcount < y+15)) ||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+20 && vcount < y+35)))) 
					pixel <= 8'hFF;
					else
						begin
						//S
						if(data == 19 && ((hcount >= x && hcount < x+35 && (vcount >= y && vcount < (y + WIDTH))) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+15)) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+15 && vcount < (y+15 + WIDTH))) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+30 && vcount < (y+30 + WIDTH))) ||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+15 && vcount < y+30)))) 
					pixel <= 8'hFF;
					else
						begin
						//T
						if(data == 20 && ((hcount >= x && hcount < x+35 && (vcount >= y && vcount < (y + WIDTH))) ||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y && vcount < y+35))))
					pixel <= 8'hFF;
					else
						begin
						//U
						if(data == 21 && (((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+30 && vcount < (y+30 + WIDTH))) ||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y && vcount < y+30)))) 
					pixel <= 8'hFF;
					else
						begin
						//V
						if(data == 22 && (((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+20)) ||
					(hcount >= x+15 && hcount < x+20 && (vcount >= y+30 && vcount < (y+30 + WIDTH))) ||
					(hcount >= x+10 && hcount < x+15 && (vcount >= y+25 && vcount < (y+25 + WIDTH))) ||
					(hcount >= x+20 && hcount < x+25 && (vcount >= y+25 && vcount < (y+25 + WIDTH))) ||
					(hcount >= x+05 && hcount < x+10 && (vcount >= y+20 && vcount < (y+20 + WIDTH))) ||
					(hcount >= x+25 && hcount < x+30 && (vcount >= y+20 && vcount < (y+20 + WIDTH))) ||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y && vcount < y+20)))) 
					pixel <= 8'hFF;
					else
						begin
						//W
						if(data == 23 && (((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+35)) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+30 && vcount < (y+30 + WIDTH))) ||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+10 && vcount < y+30))||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y && vcount < y+30)))) 
					pixel <= 8'hFF;
					else
						begin
							//X
					if(data == 24 && (((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y+30 && vcount < y+35)) ||
					((hcount >= x+5 && hcount < (x+5 + WIDTH)) && (vcount >= y+25 && vcount < y+30))||
					((hcount >= x+10 && hcount < (x+10 + WIDTH)) && (vcount >= y+20 && vcount < y+25))||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+15 && vcount < y+20))||
					((hcount >= x+20 && hcount < (x+20 + WIDTH)) && (vcount >= y+10 && vcount < y+15))||
					((hcount >= x+25 && hcount < (x+25 + WIDTH)) && (vcount >= y+5 && vcount < y+10))||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y && vcount < y+5)) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+5)) ||
					((hcount >= x+5 && hcount < (x+5 + WIDTH)) && (vcount >= y+5 && vcount < y+10))||
					((hcount >= x+10 && hcount < (x+10 + WIDTH)) && (vcount >= y+10 && vcount < y+15))||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+15 && vcount < y+20))||
					((hcount >= x+20 && hcount < (x+20 + WIDTH)) && (vcount >= y+20 && vcount < y+25))||
					((hcount >= x+25 && hcount < (x+25 + WIDTH)) && (vcount >= y+25 && vcount < y+30))||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y+30 && vcount < y+35))))
					pixel <= 8'hFF;
					else
						begin
						//Y
						if(data == 25 && (((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+15 && vcount < y+20))||
					((hcount >= x+20 && hcount < (x+20 + WIDTH)) && (vcount >= y+10 && vcount < y+15))||
					((hcount >= x+25 && hcount < (x+25 + WIDTH)) && (vcount >= y+5 && vcount < y+10))||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y && vcount < y+5)) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+5)) ||
					((hcount >= x+5 && hcount < (x+5 + WIDTH)) && (vcount >= y+5 && vcount < y+10))||
					((hcount >= x+10 && hcount < (x+10 + WIDTH)) && (vcount >= y+10 && vcount < y+15))||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+15 && vcount < y+20))||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+15 && vcount < y+35))))
					pixel <= 8'hFF;
					else
						begin
						//Z
						if(data == 26 && ((hcount >= x && hcount < x+35 && (vcount >= y && vcount < (y + WIDTH))) ||
					(hcount >= x && hcount < x+35 && (vcount >= y+30 && vcount < (y+30 + WIDTH))) ||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y+30 && vcount < y+35)) ||
					((hcount >= x+5 && hcount < (x+5 + WIDTH)) && (vcount >= y+25 && vcount < y+30))||
					((hcount >= x+10 && hcount < (x+10 + WIDTH)) && (vcount >= y+20 && vcount < y+25))||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+15 && vcount < y+20))||
					((hcount >= x+20 && hcount < (x+20 + WIDTH)) && (vcount >= y+10 && vcount < y+15))||
					((hcount >= x+25 && hcount < (x+25 + WIDTH)) && (vcount >= y+5 && vcount < y+10))||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y && vcount < y+5)))) 
					pixel <= 8'hFF;
					else
						begin
						///
						if(data == 27 && (((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y+30 && vcount < y+35)) ||
					((hcount >= x+5 && hcount < (x+5 + WIDTH)) && (vcount >= y+25 && vcount < y+30))||
					((hcount >= x+10 && hcount < (x+10 + WIDTH)) && (vcount >= y+20 && vcount < y+25))||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+15 && vcount < y+20))||
					((hcount >= x+20 && hcount < (x+20 + WIDTH)) && (vcount >= y+10 && vcount < y+15))||
					((hcount >= x+25 && hcount < (x+25 + WIDTH)) && (vcount >= y+5 && vcount < y+10))||
					((hcount >= x+30 && hcount < (x+30 + WIDTH)) && (vcount >= y && vcount < y+5))))
					pixel <= 8'hFF;
					else
						begin
						//>
						if(data == 28 && (((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y+30 && vcount < y+35)) ||
					((hcount >= x+5 && hcount < (x+5 + WIDTH)) && (vcount >= y+25 && vcount < y+30))||
					((hcount >= x+10 && hcount < (x+10 + WIDTH)) && (vcount >= y+20 && vcount < y+25))||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+15 && vcount < y+20))||
					((hcount >= x && hcount < (x + WIDTH)) && (vcount >= y && vcount < y+5)) ||
					((hcount >= x+5 && hcount < (x+5 + WIDTH)) && (vcount >= y+5 && vcount < y+10))||
					((hcount >= x+10 && hcount < (x+10 + WIDTH)) && (vcount >= y+10 && vcount < y+15))||
					((hcount >= x+15 && hcount < (x+15 + WIDTH)) && (vcount >= y+15 && vcount < y+20))))
					pixel <= 8'hFF;
					else
						begin
						//_
						if(data == 29 && ((hcount >= x && hcount < x+35 && (vcount >= y+30 && vcount < (y+30 + WIDTH)))))
					pixel <= 8'hFF;
					else
						begin
						pixel <= 8'b0;
					end
				end
			end
		
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
	
		
		end
endmodule
