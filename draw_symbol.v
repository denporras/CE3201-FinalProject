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
		pixel
    );

input [9:0] hcount;
input [9:0]  vcount;
input clk;
output reg[7:0] pixel;
reg [9:0] x;
reg [9:0] y;
always @(posedge clk) 
		begin
			if (hcount<40)
				begin
					x = 0;
				end
			else 
				begin
					if (hcount<80)
						begin
							x = 40;
						end
					else 
						begin
							if (hcount<120)
								begin
									x = 80;
								end
							else 
								begin
									if (hcount<160)
										begin
											x = 120;
										end
									else 
										begin
											if (hcount<200)
												begin
													x = 160;
												end
											else 
												begin
													if (hcount<240)
														begin
															x = 200;
														end
													else 
														begin
															if (hcount<280)
																begin
																	x = 240;
																end
															else 
																begin
																	if (hcount<320)
																		begin
																			x = 280;
																		end
																	else 
																		begin
																			if (hcount<360)
																				begin
																					x = 320;
																				end
																			else 
																				begin
																					if (hcount<400)
																						begin
																							x = 360;
																						end
																					else 
																						begin
																							if (hcount<440)
																								begin
																									x = 400;
																								end
																							else 
																								begin
																									if (hcount<480)
																										begin
																											x = 440;
																										end
																									else 
																										begin
																											if (hcount<520)
																												begin
																													x = 480;
																												end
																											else 
																												begin
																													if (hcount<560)
																														begin
																															x = 520;
																														end
																													else 
																														begin
																															if (hcount<600)
																																begin
																																	x = 560;
																																end
																															else 
																																begin
																																	if (hcount<640)
																																	begin
																																		x = 600;
																																	end
																																else 
																																	begin
																																			if (hcount<680)
																																			begin
																																				x = 640;
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
			if (vcount<40)
				begin
					y = 0;
				end
			else 
				begin
					if (vcount<80)
						begin
							y = 40;
						end
					else 
						begin
							if (vcount<120)
								begin
									y = 80;
								end
							else 
								begin
									if (vcount<160)
										begin
											y = 120;
										end
									else 
										begin
											if (vcount<200)
												begin
													y = 160;
												end
											else 
												begin
													if (vcount<240)
														begin
															y = 200;
														end
													else 
														begin
															if (vcount<280)
																begin
																	y = 240;
																end
															else 
																begin
																	if (vcount<320)
																		begin
																			y = 280;
																		end
																	else 
																		begin
																			if (vcount<360)
																				begin
																					y = 320;
																				end
																			else 
																				begin
																					if (vcount<400)
																						begin
																							y = 360;
																						end
																					else 
																						begin
																							if (vcount<440)
																								begin
																									y = 400;
																								end
																							else 
																								begin
																									if (vcount<480)
																										begin
																											y = 440;
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
		
		
		
		//Espacio
		//A
		if((hcount >= 40+5 && hcount < 40+30 && (vcount >= 0 && vcount < (0 + WIDTH))) ||
			((hcount >= 40 && hcount < (40 + WIDTH)) && (vcount >= 0+5 && vcount < 35)) ||
			(hcount >= 40 && hcount < 40+35 && (vcount >= 20 && vcount < (20 + WIDTH))) ||
			((hcount >= 40+30 && hcount < (40+30 + WIDTH)) && (vcount >= 0+5 && vcount < 35)))  
			pixel <= 8'hFF;
		else
			begin
		//B
		if((hcount >= 80 && hcount < 80+30 && (vcount >= 0 && vcount < (0 + WIDTH))) ||
				((hcount >= 80 && hcount < (80 + WIDTH)) && (vcount >= 0 && vcount < 35)) ||
				(hcount >= 80 && hcount < 80+30 && (vcount >= 30 && vcount < (30 + WIDTH))) ||
				((hcount >= 80+30 && hcount < (80+30 + WIDTH)) && (vcount >= 0+5 && vcount < 30)) ||
				(hcount >= 80 && hcount < 80+30 && (vcount >= 15 && vcount < (15 + WIDTH)))) 
				pixel <= 8'hFF;
			else
				begin
		//C
				if((hcount >= 120 && hcount < 120+35 && (vcount >= 0 && vcount < (0 + WIDTH))) ||
					((hcount >= 120 && hcount < (120 + WIDTH)) && (vcount >= 0 && vcount < 35)) ||
					(hcount >= 120 && hcount < 120+35 && (vcount >= 30 && vcount < (30 + WIDTH)))) 
					pixel <= 8'hFF;
				else
					begin
				//D	
				if((hcount >= 160 && hcount < 160+30 && (vcount >= 0 && vcount < (0 + WIDTH))) ||
					((hcount >= 160 && hcount < (160 + WIDTH)) && (vcount >= 0 && vcount < 35)) ||
					(hcount >= 160 && hcount < 160+30 && (vcount >= 30 && vcount < (30 + WIDTH))) ||
					((hcount >= 160+30 && hcount < (160+30 + WIDTH)) && (vcount >= 0+5 && vcount < 30))) 
					pixel <= 8'hFF;
				else
					begin
					//E
						if((hcount >= 200 && hcount < 200+35 && (vcount >= 0 && vcount < (0 + WIDTH))) ||
					((hcount >= 200 && hcount < (200 + WIDTH)) && (vcount >= 0 && vcount < 35)) ||
					(hcount >= 200 && hcount < 200+35 && (vcount >= 30 && vcount < (30 + WIDTH))) ||
					(hcount >= 200 && hcount < 200+25 && (vcount >= 15 && vcount < (15 + WIDTH)))) 
					pixel <= 8'hFF;
					else
						begin
						//F
					if((hcount >= 240 && hcount < 240+35 && (vcount >= 0 && vcount < (0 + WIDTH))) ||
					((hcount >= 240 && hcount < (240 + WIDTH)) && (vcount >= 0 && vcount < 35)) ||
					(hcount >= 240 && hcount < 240+35 && (vcount >= 15 && vcount < (15 + WIDTH)))) 
					pixel <= 8'hFF;
					else
						begin
						//G
						if((hcount >= 280 && hcount < 280+35 && (vcount >= 0 && vcount < (0 + WIDTH))) ||
					((hcount >= 280 && hcount < (280 + WIDTH)) && (vcount >= 0 && vcount < 35)) ||
					(hcount >= 280 && hcount < 280+35 && (vcount >= 30 && vcount < (30 + WIDTH))) ||
					((hcount >= 280+30 && hcount < (280+30 + WIDTH)) && (vcount >= 0+15 && vcount < 30)) ||
					(hcount >= 280 && hcount < 280+35 && (vcount >= 15 && vcount < (15 + WIDTH)))) 
					pixel <= 8'hFF;
					else
						begin
						//H
						if(((hcount >= 320 && hcount < (320 + WIDTH)) && (vcount >= 0 && vcount < 35)) ||
					(hcount >= 320 && hcount < 320+35 && (vcount >= 15 && vcount < (15 + WIDTH))) ||
					((hcount >= 320+30 && hcount < (320+30 + WIDTH)) && (vcount >= 0 && vcount < 35))) 
					pixel <= 8'hFF;
					else
						begin
						//I
						if((hcount >= 360 && hcount < 360+35 && (vcount >= 0 && vcount < (0 + WIDTH))) ||
						(hcount >= 360 && hcount < 360+35 && (vcount >= 30 && vcount < (30 + WIDTH))) ||
					((hcount >= 360+15 && hcount < (360+15 + WIDTH)) && (vcount >= 0 && vcount < 35))) 
					pixel <= 8'hFF;
					else
						begin
							//J
							if((hcount >= 400 && hcount < 400+35 && (vcount >= 0 && vcount < (0 + WIDTH))) ||
						(hcount >= 400 && hcount < 400+20 && (vcount >= 30 && vcount < (30 + WIDTH))) ||
					((hcount >= 400 && hcount < (400 + WIDTH)) && (vcount >= 15 && vcount < 35)) ||
					((hcount >= 400+15 && hcount < (400+15 + WIDTH)) && (vcount >= 0 && vcount < 35))) 
					pixel <= 8'hFF;
					else
						begin
						//K
						if(((hcount >= 440 && hcount < (440 + WIDTH)) && (vcount >= 0 && vcount < 35))||
						((hcount >= 440 && hcount < (440 + WIDTH)) && (vcount >= 0+30 && vcount < 0+35)) ||
					((hcount >= 440+15 && hcount < (440+15 + WIDTH)) && (vcount >= 0+15 && vcount < 0+20))||
					((hcount >= 440+20 && hcount < (440+20 + WIDTH)) && (vcount >= 0+10 && vcount < 0+15))||
					((hcount >= 440+25 && hcount < (440+25 + WIDTH)) && (vcount >= 0+5 && vcount < 0+10))||
					((hcount >= 440+30 && hcount < (440+30 + WIDTH)) && (vcount >= 0 && vcount < 0+5)) ||
					((hcount >= 440 && hcount < (440 + WIDTH)) && (vcount >= 0 && vcount < 0+5)) ||
					((hcount >= 440+5 && hcount < (440+10 + WIDTH)) && (vcount >= 0+15 && vcount < 0+20))||
					((hcount >= 440+15 && hcount < (440+15 + WIDTH)) && (vcount >= 0+15 && vcount < 0+20))||
					((hcount >= 440+20 && hcount < (440+20 + WIDTH)) && (vcount >= 0+20 && vcount < 0+25))||
					((hcount >= 440+25 && hcount < (440+25 + WIDTH)) && (vcount >= 0+25 && vcount < 0+30))||
					((hcount >= 440+30 && hcount < (440+30 + WIDTH)) && (vcount >= 0+30 && vcount < 0+35))) 
					pixel <= 8'hFF;
					else
						begin
						//L
						if(((hcount >= 480 && hcount < (480 + WIDTH)) && (vcount >= 0 && vcount < 35)) ||
					(hcount >= 480 && hcount < 480+35 && (vcount >= 30 && vcount < (30 + WIDTH)))) 
					pixel <= 8'hFF;
					else
						begin
						//M
						if(((hcount >= 520 && hcount < (520 + WIDTH)) && (vcount >= 0 && vcount < 35)) ||
					((hcount >= 520+30 && hcount < (520+30 + WIDTH)) && (vcount >= 0 && vcount < 35)) ||
					((hcount >= 520+20 && hcount < (520+20 + WIDTH)) && (vcount >= 0+10 && vcount < 0+15))||
					((hcount >= 520+25 && hcount < (520+25 + WIDTH)) && (vcount >= 0+5 && vcount < 0+10))||
					((hcount >= 520+30 && hcount < (520+30 + WIDTH)) && (vcount >= 0 && vcount < 0+5)) ||
					((hcount >= 520 && hcount < (520 + WIDTH)) && (vcount >= 0 && vcount < 0+5)) ||
					((hcount >= 520+5 && hcount < (520+5 + WIDTH)) && (vcount >= 0+5 && vcount < 0+10))||
					((hcount >= 520+10 && hcount < (520+10 + WIDTH)) && (vcount >= 0+10 && vcount < 0+15))||
					((hcount >= 520+15 && hcount < (520+15 + WIDTH)) && (vcount >= 0+15 && vcount < 0+20))) 
					pixel <= 8'hFF;
					else
						begin
						//N
					if(((hcount >= 560 && hcount < (560 + WIDTH)) && (vcount >= 0 && vcount < 35)) ||
					((hcount >= 560+30 && hcount < (560+30 + WIDTH)) && (vcount >= 0 && vcount < 35)) ||
					((hcount >= 560 && hcount < (560 + WIDTH)) && (vcount >= 0+30 && vcount < 0+35)) ||
					((hcount >= 560 && hcount < (560 + WIDTH)) && (vcount >= 0 && vcount < 0+5)) ||
					((hcount >= 560+5 && hcount < (560+5 + WIDTH)) && (vcount >= 0+5 && vcount < 0+10))||
					((hcount >= 560+10 && hcount < (560+10 + WIDTH)) && (vcount >= 0+10 && vcount < 0+15))||
					((hcount >= 560+15 && hcount < (560+15 + WIDTH)) && (vcount >= 0+15 && vcount < 0+20))||
					((hcount >= 560+20 && hcount < (560+20 + WIDTH)) && (vcount >= 0+20 && vcount < 0+25))||
					((hcount >= 560+25 && hcount < (560+25 + WIDTH)) && (vcount >= 0+25 && vcount < 0+30))||
					((hcount >= 560+30 && hcount < (560+30 + WIDTH)) && (vcount >= 0+30 && vcount < 0+35))) 
					pixel <= 8'hFF;
					else
						begin
						//O
						if((hcount >= 600 && hcount < 600+35 && (vcount >= 0 && vcount < (0 + WIDTH))) ||
					((hcount >= 600 && hcount < (600 + WIDTH)) && (vcount >= 0 && vcount < 35)) ||
					(hcount >= 600 && hcount < 600+35 && (vcount >= 30 && vcount < (30 + WIDTH))) ||
					((hcount >= 600+30 && hcount < (600+30 + WIDTH)) && (vcount >= 0+5 && vcount < 30))) 
					pixel <= 8'hFF;
					else
						begin
						//P
						if((hcount >= 0 && hcount < 0+35 && (vcount >= 40 && vcount < (40 + WIDTH))) ||
					((hcount >= 0 && hcount < (0 + WIDTH)) && (vcount >= 40 && vcount < 40+35)) ||
					(hcount >= 0 && hcount < 0+35 && (vcount >= 40+15 && vcount < (40+15 + WIDTH))) ||
					((hcount >= 0+30 && hcount < (0+30 + WIDTH)) && (vcount >= 40+5 && vcount < 40+15))) 
					pixel <= 8'hFF;
					else
						begin
						//Q
						if((hcount >= 40 && hcount < 40+35 && (vcount >= 40 && vcount < (40 + WIDTH))) ||
					((hcount >= 40 && hcount < (40 + WIDTH)) && (vcount >= 40 && vcount < 40+25)) ||
					(hcount >= 40 && hcount < 40+35 && (vcount >= 40+20 && vcount < (40+20 + WIDTH))) ||
					((hcount >= 40+30 && hcount < (40+30 + WIDTH)) && (vcount >= 40+5 && vcount < 40+25)) ||
					((hcount >= 40+20 && hcount < (40+20 + WIDTH)) && (vcount >= 40+20 && vcount < 40+25))||
					((hcount >= 40+25 && hcount < (40+25 + WIDTH)) && (vcount >= 40+25 && vcount < 40+30))||
					((hcount >= 40+30 && hcount < (40+30 + WIDTH)) && (vcount >= 40+30 && vcount < 40+35))) 
					pixel <= 8'hFF;
					else
						begin
						//R
						if((hcount >= 80 && hcount < 80+35 && (vcount >= 40 && vcount < (40 + WIDTH))) ||
					((hcount >= 80 && hcount < (80 + WIDTH)) && (vcount >= 40 && vcount < 40+35)) ||
					(hcount >= 80 && hcount < 80+30 && (vcount >= 40+15 && vcount < (40+15 + WIDTH))) ||
					((hcount >= 80+30 && hcount < (80+30 + WIDTH)) && (vcount >= 40+5 && vcount < 40+15)) ||
					((hcount >= 80+30 && hcount < (80+30 + WIDTH)) && (vcount >= 40+20 && vcount < 40+35))) 
					pixel <= 8'hFF;
					else
						begin
						//S
						if((hcount >= 120 && hcount < 120+35 && (vcount >= 40 && vcount < (40 + WIDTH))) ||
					((hcount >= 120 && hcount < (120 + WIDTH)) && (vcount >= 40 && vcount < 40+15)) ||
					(hcount >= 120 && hcount < 120+35 && (vcount >= 40+15 && vcount < (40+15 + WIDTH))) ||
					(hcount >= 120 && hcount < 120+35 && (vcount >= 40+30 && vcount < (40+30 + WIDTH))) ||
					((hcount >= 120+30 && hcount < (120+30 + WIDTH)) && (vcount >= 40+15 && vcount < 40+30))) 
					pixel <= 8'hFF;
					else
						begin
						//T
						if((hcount >= 160 && hcount < 160+35 && (vcount >= 40 && vcount < (40 + WIDTH))) ||
					((hcount >= 160+15 && hcount < (160+15 + WIDTH)) && (vcount >= 40 && vcount < 40+35)))
					pixel <= 8'hFF;
					else
						begin
						//U
						if(((hcount >= 200 && hcount < (200 + WIDTH)) && (vcount >= 40 && vcount < 40+35)) ||
					(hcount >= 200 && hcount < 200+35 && (vcount >= 40+30 && vcount < (40+30 + WIDTH))) ||
					((hcount >= 200+30 && hcount < (200+30 + WIDTH)) && (vcount >= 40 && vcount < 40+30))) 
					pixel <= 8'hFF;
					else
						begin
						//V
						if(((hcount >= 240 && hcount < (240 + WIDTH)) && (vcount >= 40 && vcount < 40+20)) ||
					(hcount >= 240+15 && hcount < 240+20 && (vcount >= 40+30 && vcount < (40+30 + WIDTH))) ||
					(hcount >= 240+10 && hcount < 240+15 && (vcount >= 40+25 && vcount < (40+25 + WIDTH))) ||
					(hcount >= 240+20 && hcount < 240+25 && (vcount >= 40+25 && vcount < (40+25 + WIDTH))) ||
					(hcount >= 240+05 && hcount < 240+10 && (vcount >= 40+20 && vcount < (40+20 + WIDTH))) ||
					(hcount >= 240+25 && hcount < 240+30 && (vcount >= 40+20 && vcount < (40+20 + WIDTH))) ||
					((hcount >= 240+30 && hcount < (240+30 + WIDTH)) && (vcount >= 40 && vcount < 40+20))) 
					pixel <= 8'hFF;
					else
						begin
						//W
						if(((hcount >= 280 && hcount < (280 + WIDTH)) && (vcount >= 40 && vcount < 40+35)) ||
					(hcount >= 280 && hcount < 280+35 && (vcount >= 40+30 && vcount < (40+30 + WIDTH))) ||
					((hcount >= 280+15 && hcount < (280+15 + WIDTH)) && (vcount >= 40+10 && vcount < 40+30))||
					((hcount >= 280+30 && hcount < (280+30 + WIDTH)) && (vcount >= 40 && vcount < 40+30))) 
					pixel <= 8'hFF;
					else
						begin
							//X
					if(((hcount >= 320 && hcount < (320 + WIDTH)) && (vcount >= 40+30 && vcount < 40+35)) ||
					((hcount >= 320+5 && hcount < (320+5 + WIDTH)) && (vcount >= 40+25 && vcount < 40+30))||
					((hcount >= 320+10 && hcount < (320+10 + WIDTH)) && (vcount >= 40+20 && vcount < 40+25))||
					((hcount >= 320+15 && hcount < (320+15 + WIDTH)) && (vcount >= 40+15 && vcount < 40+20))||
					((hcount >= 320+20 && hcount < (320+20 + WIDTH)) && (vcount >= 40+10 && vcount < 40+15))||
					((hcount >= 320+25 && hcount < (320+25 + WIDTH)) && (vcount >= 40+5 && vcount < 40+10))||
					((hcount >= 320+30 && hcount < (320+30 + WIDTH)) && (vcount >= 40 && vcount < 40+5)) ||
					((hcount >= 320 && hcount < (320 + WIDTH)) && (vcount >= 40 && vcount < 40+5)) ||
					((hcount >= 320+5 && hcount < (320+5 + WIDTH)) && (vcount >= 40+5 && vcount < 40+10))||
					((hcount >= 320+10 && hcount < (320+10 + WIDTH)) && (vcount >= 40+10 && vcount < 40+15))||
					((hcount >= 320+15 && hcount < (320+15 + WIDTH)) && (vcount >= 40+15 && vcount < 40+20))||
					((hcount >= 320+20 && hcount < (320+20 + WIDTH)) && (vcount >= 40+20 && vcount < 40+25))||
					((hcount >= 320+25 && hcount < (320+25 + WIDTH)) && (vcount >= 40+25 && vcount < 40+30))||
					((hcount >= 320+30 && hcount < (320+30 + WIDTH)) && (vcount >= 40+30 && vcount < 40+35)))
					pixel <= 8'hFF;
					else
						begin
						//Y
						if(((hcount >= 360+15 && hcount < (360+15 + WIDTH)) && (vcount >= 40+15 && vcount < 40+20))||
					((hcount >= 360+20 && hcount < (360+20 + WIDTH)) && (vcount >= 40+10 && vcount < 40+15))||
					((hcount >= 360+25 && hcount < (360+25 + WIDTH)) && (vcount >= 40+5 && vcount < 40+10))||
					((hcount >= 360+30 && hcount < (360+30 + WIDTH)) && (vcount >= 40 && vcount < 40+5)) ||
					((hcount >= 360 && hcount < (360 + WIDTH)) && (vcount >= 40 && vcount < 40+5)) ||
					((hcount >= 360+5 && hcount < (360+5 + WIDTH)) && (vcount >= 40+5 && vcount < 40+10))||
					((hcount >= 360+10 && hcount < (360+10 + WIDTH)) && (vcount >= 40+10 && vcount < 40+15))||
					((hcount >= 360+15 && hcount < (360+15 + WIDTH)) && (vcount >= 40+15 && vcount < 40+20))||
					((hcount >= 360+15 && hcount < (360+15 + WIDTH)) && (vcount >= 40+15 && vcount < 40+35)))
					pixel <= 8'hFF;
					else
						begin
						//Z
						if((hcount >= 400 && hcount < 400+35 && (vcount >= 40 && vcount < (40 + WIDTH))) ||
					(hcount >= 400 && hcount < 400+35 && (vcount >= 40+30 && vcount < (40+30 + WIDTH))) ||
					((hcount >= 400 && hcount < (400 + WIDTH)) && (vcount >= 40+30 && vcount < 40+35)) ||
					((hcount >= 400+5 && hcount < (400+5 + WIDTH)) && (vcount >= 40+25 && vcount < 40+30))||
					((hcount >= 400+10 && hcount < (400+10 + WIDTH)) && (vcount >= 40+20 && vcount < 40+25))||
					((hcount >= 400+15 && hcount < (400+15 + WIDTH)) && (vcount >= 40+15 && vcount < 40+20))||
					((hcount >= 400+20 && hcount < (400+20 + WIDTH)) && (vcount >= 40+10 && vcount < 40+15))||
					((hcount >= 400+25 && hcount < (400+25 + WIDTH)) && (vcount >= 40+5 && vcount < 40+10))||
					((hcount >= 400+30 && hcount < (400+30 + WIDTH)) && (vcount >= 40 && vcount < 40+5))) 
					pixel <= 8'hFF;
					else
						begin
						///
						if(((hcount >= 440 && hcount < (440 + WIDTH)) && (vcount >= 40+30 && vcount < 40+35)) ||
					((hcount >= 440+5 && hcount < (440+5 + WIDTH)) && (vcount >= 40+25 && vcount < 40+30))||
					((hcount >= 440+10 && hcount < (440+10 + WIDTH)) && (vcount >= 40+20 && vcount < 40+25))||
					((hcount >= 440+15 && hcount < (440+15 + WIDTH)) && (vcount >= 40+15 && vcount < 40+20))||
					((hcount >= 440+20 && hcount < (440+20 + WIDTH)) && (vcount >= 40+10 && vcount < 40+15))||
					((hcount >= 440+25 && hcount < (440+25 + WIDTH)) && (vcount >= 40+5 && vcount < 40+10))||
					((hcount >= 440+30 && hcount < (440+30 + WIDTH)) && (vcount >= 40 && vcount < 40+5)))
					pixel <= 8'hFF;
					else
						begin
						//>
						if(((hcount >= 480 && hcount < (480 + WIDTH)) && (vcount >= 40+30 && vcount < 40+35)) ||
					((hcount >= 480+5 && hcount < (480+5 + WIDTH)) && (vcount >= 40+25 && vcount < 40+30))||
					((hcount >= 480+10 && hcount < (480+10 + WIDTH)) && (vcount >= 40+20 && vcount < 40+25))||
					((hcount >= 480+15 && hcount < (480+15 + WIDTH)) && (vcount >= 40+15 && vcount < 40+20))||
					((hcount >= 480 && hcount < (480 + WIDTH)) && (vcount >= 40 && vcount < 40+5)) ||
					((hcount >= 480+5 && hcount < (480+5 + WIDTH)) && (vcount >= 40+5 && vcount < 40+10))||
					((hcount >= 480+10 && hcount < (480+10 + WIDTH)) && (vcount >= 40+10 && vcount < 40+15))||
					((hcount >= 480+15 && hcount < (480+15 + WIDTH)) && (vcount >= 40+15 && vcount < 40+20)))
					pixel <= 8'hFF;
					else
						begin
						//_
						if((hcount >= 520 && hcount < 520+35 && (vcount >= 40+30 && vcount < (40+30 + WIDTH))))
					pixel <= 8'hFF;
					else
						begin
						//-
						if((hcount >= 560 && hcount < 560+35 && (vcount >= 40+15 && vcount < (40+15 + WIDTH))))
					pixel <= 8'hFF;
					else
						begin
						//#
						if((hcount >= 600 && hcount < 600+35 && (vcount >= 40+5 && vcount < (40+5 + WIDTH)))||
						((hcount >= 600+5 && hcount < (600+5 + WIDTH)) && (vcount >= 40 && vcount < 40+35)) ||
					((hcount >= 600+25 && hcount < (600+25 + WIDTH)) && (vcount >= 40 && vcount < 40+35))||
						(hcount >= 600 && hcount < 600+35 && (vcount >= 40+25 && vcount < (40+25 + WIDTH)))
						)	
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
		end
		//-
		//_
		//
		
		end
		
		
		
		
		
		
		
		
		
		
		/**
		
			if ( hcount == 0 || vcount == 0 || hcount == 638 || vcount == 478 ||			
			//T
			((hcount >= x1 && hcount < (x1 + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x1 + 2*WIDTH) && hcount < (x1 + 2*WIDTH + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x1 + 2*WIDTH) && hcount < (x1 + 2*WIDTH + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower left vertical line
			//I
			((hcount >= (x1+z) && hcount < ((x1+z) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x1+z) && hcount < ((x1+z) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + 2*HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower horizontal line
			((hcount >= (x1 + 2*WIDTH + z) && hcount < (x1 + z + 2*WIDTH + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x1 + 2*WIDTH + z) && hcount < (x1 + z + 2*WIDTH + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower left vertical line
			//M
			((hcount >= (x1+z*2) && hcount < ((x1+z*2) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x1+z*2) && hcount < ((x1+z*2) + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x1+z*2) && hcount < ((x1+z*2) + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower left vertical line
			((hcount >= ((x1+z*2) + WIDTH + HEIGHT) && hcount < ((x1+z*2) + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper right vertical line
			((hcount >= ((x1+z*2) + 2*WIDTH + HEIGHT) && hcount < (((x1+z*2) + WIDTH + HEIGHT) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (((x1+z*2) + WIDTH + HEIGHT) + WIDTH + HEIGHT) && hcount < (((x1+z*2) + WIDTH + HEIGHT) + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper right vertical line
			((hcount >= (((x1+z*2) + WIDTH + HEIGHT) + WIDTH + HEIGHT) && hcount < (((x1+z*2) + WIDTH + HEIGHT) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower right vertical line
			//E
			((hcount >= (x1+z*3+13) && hcount < ((x1+z*3+13) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x1+z*3+13) && hcount < ((x1+z*3+13) + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + HEIGHT))) || //middle vertical line
			((hcount >= (x1+z*3+13) && hcount < ((x1+z*3+13) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + 2*HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower horizontal line
			((hcount >= (x1+z*3+13) && hcount < ((x1+z*3+13) + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x1+z*3+13) && hcount < ((x1+z*3+13) + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower left vertical line
			//:
			((hcount >= (x1+z*4+13) && hcount < ((x1+z*4+13) + WIDTH)) && (vcount >= (y - 4 + HEIGHT) && vcount < (y - 4 + WIDTH + HEIGHT))) ||
			((hcount >= (x1+z*4+13) && hcount < ((x1+z*4+13) + WIDTH)) && (vcount >= (y - 4 + WIDTH + 2*HEIGHT) && vcount < (y - 4 + 2*WIDTH + 2*HEIGHT))) ||
			
			//S
			((hcount >= x2 && hcount < (x2 + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= x2 && hcount < (x2 + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= x2 && hcount < (x2 + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + HEIGHT))) || //middle vertical linE
			((hcount >= x2 && hcount < (x2 + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + 2*HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower horizontal line
			((hcount >= (x2 + WIDTH + HEIGHT) && hcount < (x2 + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower right vertical line
			//C
			((hcount >= (x2+z) && hcount < ((x2+z) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x2+z) && hcount < ((x2+z) + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x2+z) && hcount < ((x2+z) + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower left vertical line
			((hcount >= (x2+z) && hcount < ((x2+z) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + 2*HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower horizontal line
			//O
			((hcount >= (x2+z*2) && hcount < ((x2+z*2) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x2+z*2) && hcount < ((x2+z*2) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + 2*HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower horizontal line
			((hcount >= (x2+z*2) && hcount < ((x2+z*2) + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x2+z*2) && hcount < ((x2+z*2) + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower left vertical line
			((hcount >= ((x2+z*2) + WIDTH + HEIGHT) && hcount < ((x2+z*2) + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper right vertical line
			((hcount >= ((x2+z*2) + WIDTH + HEIGHT) && hcount < ((x2+z*2) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower right vertical line
			//R
			((hcount >= (x2+z*3) && hcount < ((x2+z*3) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x2+z*3) && hcount < ((x2+z*3) + WIDTH + HEIGHT)) && (vcount >= (y + WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + HEIGHT))) || //middle vertical line
			((hcount >= (x2+z*3) && hcount < ((x2+z*3) + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x2+z*3) && hcount < ((x2+z*3) + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower left vertical line
			((hcount >= ((x2+z*3) + WIDTH + HEIGHT) && hcount < ((x2+z*3) + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH) && vcount < (y + WIDTH + HEIGHT))) || //upper right vertical line
			((hcount >= ((x2+z*3) + WIDTH + HEIGHT) && hcount < ((x2+z*3) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower right vertical line
			//E
			((hcount >= (x2+z*4) && hcount < ((x2+z*4) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x2+z*4) && hcount < ((x2+z*4) + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + HEIGHT))) || //middle vertical line
			((hcount >= (x2+z*4) && hcount < ((x2+z*4) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + 2*HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower horizontal line
			((hcount >= (x2+z*4) && hcount < ((x2+z*4) + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x2+z*4) && hcount < ((x2+z*4) + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower left vertical line
			//:
			((hcount >= (x2+z*5) && hcount < ((x2+z*5) + WIDTH)) && (vcount >= (y - 4 + HEIGHT) && vcount < (y - 4 + WIDTH + HEIGHT))) ||
			((hcount >= (x2+z*5) && hcount < ((x2+z*5) + WIDTH)) && (vcount >= (y - 4 + WIDTH + 2*HEIGHT) && vcount < (y - 4 + 2*WIDTH + 2*HEIGHT)))
			)
				pixel <= 8'hFF;
			else
				pixel <= 8'b0;
		end

*/

endmodule
