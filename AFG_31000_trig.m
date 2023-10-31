clear;
close;
fprintf("My name is Leo")
% When I query, I get "1" if the query is
v = visadev("USB0::0x0699::0x0355::C019986::INSTR");
% Maybe need to call this only once: v.write("*RST");
v.write("TRIG:SOUR EXT");
is_trigger_on = v.writeread("TRIG:SOUR?");
v.write("TRIG:SLOP POS");
is_trigger_pos = v.writeread("TRIG:SLOP?");
v.write("SOURce:BURSt:INFInite:REARm");
burstmode = v.writeread("SOURce1:BURSt:MODE?");
v.write("SOURce1:BURSt:NCYCles 100");
n_cycles = v.writeread("SOURce1:BURSt:NCYCles?");
fprintf(is_trigger_on);
fprintf(burstmode);
fprintf(n_cycles);
v.write("OUTP1:STAT ON");
% is_on = v.writeread("OUTP1:STAT?");
v.write("FUNCTION SIN");
v.write("FREQUENCY 3E3");
v.write("VOLTAGE:AMPLITUDE 3.00");
v.write("VOLTAGE:OFFSET 1.00");
v.write("PHASE:ADJUST 0DEG");
% 


%% I NEED TO LOOK AT THE SEQuence function and see how that relates to triggering