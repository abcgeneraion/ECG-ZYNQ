
r
Command: %s
1870*	planAhead2=
)open_checkpoint system_wrapper_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.034 . Memory (MB): peak = 298.836 ; gain = 0.0002default:defaulth px� 
V
Loading part %s157*device2#
xc7z020clg400-22default:defaultZ21-403h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:022default:default2
00:00:022default:default2
853.9342default:default2
0.7422default:defaultZ17-268h px� 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
16812default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.22default:defaultZ1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:042default:default2
00:00:052default:default2
1724.9342default:default2
38.0512default:defaultZ17-268h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
4.0000002default:default2
0.0000002default:defaultZ20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:042default:default2
00:00:052default:default2
1724.9342default:default2
38.0512default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0212default:default2
1724.9342default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 22 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 8 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 4 instances
  SRLC32E => SRL16E: 10 instances
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2019.2 (64-bit)2default:default2
27088762default:defaultZ1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:312default:default2
00:00:322default:default2
1724.9342default:default2
1426.0982default:defaultZ17-268h px� 
n
Command: %s
53*	vivadotcl2=
)write_bitstream -force system_wrapper.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen2@
,E:/vivado_tools_2019.2/Vivado/2019.2/data/ip2default:defaultZ19-2313h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
YReport rule limit reached: REQP-1840 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U310/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U310/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U310/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U310/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U310/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U310/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U310/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U310/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U311/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U311/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U311/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U311/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U311/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U311/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U311/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U311/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U312/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U312/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U312/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U312/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U312/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U312/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U312/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U312/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U313/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U313/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U313/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U313/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U313/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U313/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U313/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U313/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U314/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U314/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U314/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U314/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U314/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U314/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U314/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U314/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U315/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U315/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U315/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U315/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U315/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U315/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U315/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U315/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U316/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U316/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U316/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U316/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U316/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U316/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U316/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U316/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U317/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U317/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U317/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U317/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U317/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U317/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U317/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U317/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U318/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U318/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U318/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U318/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U318/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U318/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U318/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U318/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U319/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U319/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U319/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U319/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U319/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U319/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U319/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U319/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U320/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U320/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U320/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U320/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U320/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U320/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U320/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U320/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U321/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U321/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U321/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U321/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U321/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U321/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U321/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U321/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U322/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U322/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U322/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U322/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U322/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U322/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U322/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U322/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U323/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U323/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U323/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U323/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U323/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U323/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U323/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U323/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U324/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U324/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U324/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U324/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U324/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U324/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U324/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U324/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U325/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U325/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U325/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U325/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U325/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U325/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U325/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U325/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U326/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U326/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U326/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U326/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U326/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U326/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U326/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U326/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U327/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U327/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U327/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U327/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U327/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U327/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U327/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U327/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U328/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U328/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U328/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U328/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U328/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U328/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U328/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U328/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U329/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U329/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U329/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U329/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U329/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U329/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U329/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U329/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U330/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U330/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U330/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U330/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U330/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U330/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U330/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U330/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U331/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U331/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U331/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U331/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U331/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U331/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U331/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U331/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U332/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U332/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U332/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U332/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U332/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U332/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U332/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U332/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U333/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U333/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U333/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U333/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U333/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U333/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U333/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U333/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U334/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U334/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U334/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U334/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U334/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U334/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U334/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U334/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U335/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U335/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U335/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U335/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U335/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U335/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U335/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U335/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U336/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U336/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U336/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U336/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U336/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U336/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U336/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U336/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U337/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U337/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U337/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U337/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U337/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U337/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U337/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U337/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U338/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U338/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U338/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U338/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U338/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U338/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U338/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U338/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U339/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U339/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U339/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U339/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U339/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U339/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U339/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U339/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U340/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U340/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U340/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U340/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U340/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U340/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U340/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U340/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U341/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U341/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U341/conv1d_mul_mul_16fYi_DSP48_0_U/p/A[29:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U341/conv1d_mul_mul_16fYi_DSP48_0_U/p/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U341/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U341/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U341/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U341/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U342/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U342/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U342/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U342/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U343/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U343/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U343/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U343/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U344/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U344/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U344/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U344/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U345/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U345/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U345/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U345/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U346/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U346/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U346/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U346/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U347/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U347/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U347/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U347/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U348/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U348/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U348/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U348/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U349/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U349/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U349/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U349/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U350/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U350/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U350/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U350/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U351/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U351/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U351/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U351/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U352/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U352/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U352/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U352/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U353/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U353/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U353/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U353/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U354/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U354/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U354/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U354/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U355/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U355/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U355/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U355/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U356/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U356/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U356/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U356/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U357/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U357/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U357/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U357/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U358/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U358/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U358/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U358/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U359/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U359/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U359/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U359/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U360/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U360/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U360/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U360/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U361/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U361/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U361/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U361/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U362/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U362/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U362/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U362/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U363/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U363/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U363/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U363/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U364/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U364/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U364/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U364/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U365/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U365/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U365/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U365/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U366/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U366/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U366/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U366/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U367/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U367/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U367/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U367/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U368/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U368/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U368/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U368/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U369/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U369/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U369/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U369/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U370/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U370/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U370/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U370/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U371/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U371/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U371/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U371/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U372/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U372/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U372/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U372/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U373/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U373/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U373/conv1d_mul_mul_16fYi_DSP48_0_U/p/B[17:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U373/conv1d_mul_mul_16fYi_DSP48_0_U/p/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U342/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U342/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U342/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U342/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U343/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U343/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U343/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U343/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U344/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U344/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U344/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U344/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U345/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U345/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U345/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U345/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U346/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U346/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U346/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U346/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U347/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U347/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U347/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U347/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U348/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U348/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U348/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U348/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U349/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U349/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U349/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U349/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U350/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U350/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U350/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U350/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U351/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U351/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U351/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U351/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U352/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U352/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U352/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U352/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U353/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U353/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U353/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U353/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U354/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U354/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U354/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U354/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U355/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U355/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U355/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U355/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U356/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U356/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U356/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U356/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U357/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U357/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U357/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U357/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U358/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U358/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U358/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U358/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U359/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U359/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U359/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U359/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U360/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U360/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U360/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U360/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U361/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U361/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U361/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U361/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U362/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U362/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U362/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U362/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U363/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U363/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U363/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U363/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U364/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U364/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U364/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U364/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U365/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U365/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U365/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U365/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U366/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U366/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U366/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U366/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U367/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U367/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U367/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U367/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U368/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U368/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U368/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U368/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U369/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U369/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U369/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U369/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U370/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U370/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U370/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U370/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U371/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U371/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U371/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U371/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U372/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U372/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U372/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U372/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U373/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U373/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U373/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U373/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
\system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_fu_317_p2__0	\system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_fu_317_p2__02default:default2default:default2�
 "�
dsystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_fu_317_p2__0/P[47:0]^system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_fu_317_p2__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
asystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_fu_4368_p2__0	asystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_fu_4368_p2__02default:default2default:default2�
 "�
isystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_fu_4368_p2__0/P[47:0]csystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_fu_4368_p2__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
_system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_fu_4357_p2__0	_system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_fu_4357_p2__02default:default2default:default2�
 "�
gsystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_fu_4357_p2__0/P[47:0]asystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_fu_4357_p2__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
Csystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_fu_1604_p2__0	Csystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_fu_1604_p2__02default:default2default:default2�
 "�
Ksystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_fu_1604_p2__0/P[47:0]Esystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_fu_1604_p2__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
Esystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_fu_1339_p2__0	Esystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_fu_1339_p2__02default:default2default:default2�
 "�
Msystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_fu_1339_p2__0/P[47:0]Gsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_fu_1339_p2__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
@system_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2	@system_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p22default:default2default:default2�
 "�
Hsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2/P[47:0]Bsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
Csystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__0	Csystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__02default:default2default:default2�
 "�
Ksystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__0/P[47:0]Esystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
Csystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__1	Csystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__12default:default2default:default2�
 "�
Ksystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__1/P[47:0]Esystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__1/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U310/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U310/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U310/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U310/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U311/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U311/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U311/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U311/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U312/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U312/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U312/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U312/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U313/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U313/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U313/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U313/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U314/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U314/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U314/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U314/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U315/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U315/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U315/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U315/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U316/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U316/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U316/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U316/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U317/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U317/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U317/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U317/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U318/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U318/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U318/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U318/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U319/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U319/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U319/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U319/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U320/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U320/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U320/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U320/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U321/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U321/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U321/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U321/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U322/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U322/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U322/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U322/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U323/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U323/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U323/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U323/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U324/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U324/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U324/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U324/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U325/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U325/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U325/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U325/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U326/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U326/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U326/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U326/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U327/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U327/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U327/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U327/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U328/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U328/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U328/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U328/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U329/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U329/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U329/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U329/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U330/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U330/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U330/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U330/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U331/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U331/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U331/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U331/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U332/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U332/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U332/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U332/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U333/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U333/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U333/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U333/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U334/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U334/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U334/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U334/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U335/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U335/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U335/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U335/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U336/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U336/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U336/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U336/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U337/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U337/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U337/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U337/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U338/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U338/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U338/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U338/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U339/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U339/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U339/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U339/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U340/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U340/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U340/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U340/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U341/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U341/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U341/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U341/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U342/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U342/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U342/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U342/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U343/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U343/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U343/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U343/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U344/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U344/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U344/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U344/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U345/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U345/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U345/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U345/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U346/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U346/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U346/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U346/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U347/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U347/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U347/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U347/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U348/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U348/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U348/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U348/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U349/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U349/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U349/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U349/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U350/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U350/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U350/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U350/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U351/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U351/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U351/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U351/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U352/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U352/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U352/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U352/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U353/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U353/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U353/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U353/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U354/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U354/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U354/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U354/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U355/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U355/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U355/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U355/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U356/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U356/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U356/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U356/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U357/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U357/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U357/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U357/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U358/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U358/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U358/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U358/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U359/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U359/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U359/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U359/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U360/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U360/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U360/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U360/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U361/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U361/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U361/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U361/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U362/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U362/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U362/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U362/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U363/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U363/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U363/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U363/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U364/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U364/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U364/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U364/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U365/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U365/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U365/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U365/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U366/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U366/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U366/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U366/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U367/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U367/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U367/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U367/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U368/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U368/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U368/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U368/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U369/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U369/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U369/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U369/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U370/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U370/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U370/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U370/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U371/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U371/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U371/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U371/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U372/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U372/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U372/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U372/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�

�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U373/conv1d_mul_mul_16fYi_DSP48_0_U/p	system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U373/conv1d_mul_mul_16fYi_DSP48_0_U/p2default:default2default:default2�
 "�
�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U373/conv1d_mul_mul_16fYi_DSP48_0_U/p/P[47:0]�system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_compute_fu_1783/conv1d_mul_mul_16fYi_U373/conv1d_mul_mul_16fYi_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
Ysystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_fu_317_p2	Ysystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_fu_317_p22default:default2default:default2�
 "�
asystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_fu_317_p2/P[47:0][system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_fu_317_p2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
\system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_fu_317_p2__0	\system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_fu_317_p2__02default:default2default:default2�
 "�
dsystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_fu_317_p2__0/P[47:0]^system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_fu_317_p2__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
[system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_reg_449_reg	[system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_reg_449_reg2default:default2default:default2�
 "�
csystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_reg_449_reg/P[47:0]]system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_input_fu_2414/mul_ln9_reg_449_reg/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
^system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_fu_4368_p2	^system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_fu_4368_p22default:default2default:default2�
 "�
fsystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_fu_4368_p2/P[47:0]`system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_fu_4368_p2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
asystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_fu_4368_p2__0	asystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_fu_4368_p2__02default:default2default:default2�
 "�
isystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_fu_4368_p2__0/P[47:0]csystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_fu_4368_p2__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
asystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_reg_13707_reg	asystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_reg_13707_reg2default:default2default:default2�
 "�
isystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_reg_13707_reg/P[47:0]csystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_1_reg_13707_reg/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
\system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_fu_4357_p2	\system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_fu_4357_p22default:default2default:default2�
 "�
dsystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_fu_4357_p2/P[47:0]^system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_fu_4357_p2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
_system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_fu_4357_p2__0	_system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_fu_4357_p2__02default:default2default:default2�
 "�
gsystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_fu_4357_p2__0/P[47:0]asystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_fu_4357_p2__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
_system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_reg_13701_reg	_system_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_reg_13701_reg2default:default2default:default2�
 "�
gsystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_reg_13701_reg/P[47:0]asystem_i/conv1d_0/inst/grp_compute_output_fu_669/grp_load_weight_fu_2015/mul_ln27_reg_13701_reg/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
@system_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_fu_1604_p2	@system_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_fu_1604_p22default:default2default:default2�
 "�
Hsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_fu_1604_p2/P[47:0]Bsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_fu_1604_p2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
Csystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_fu_1604_p2__0	Csystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_fu_1604_p2__02default:default2default:default2�
 "�
Ksystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_fu_1604_p2__0/P[47:0]Esystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_fu_1604_p2__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
Bsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_reg_2217_reg	Bsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_reg_2217_reg2default:default2default:default2�
 "�
Jsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_reg_2217_reg/P[47:0]Dsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln62_reg_2217_reg/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
Bsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_fu_1339_p2	Bsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_fu_1339_p22default:default2default:default2�
 "�
Jsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_fu_1339_p2/P[47:0]Dsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_fu_1339_p2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
Esystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_fu_1339_p2__0	Esystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_fu_1339_p2__02default:default2default:default2�
 "�
Msystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_fu_1339_p2__0/P[47:0]Gsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_fu_1339_p2__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
Dsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_reg_2065_reg	Dsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_reg_2065_reg2default:default2default:default2�
 "�
Lsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_reg_2065_reg/P[47:0]Fsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_1_reg_2065_reg/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
@system_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2	@system_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p22default:default2default:default2�
 "�
Hsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2/P[47:0]Bsystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
Csystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__0	Csystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__02default:default2default:default2�
 "�
Ksystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__0/P[47:0]Esystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
Csystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__1	Csystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__12default:default2default:default2�
 "�
Ksystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__1/P[47:0]Esystem_i/conv1d_0/inst/grp_write_back_fu_719/mul_ln81_fu_1180_p2__1/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
Ksystem_i/fc_0/inst/fc_mul_mul_16s_16bkb_U1/fc_mul_mul_16s_16bkb_DSP48_0_U/p	Ksystem_i/fc_0/inst/fc_mul_mul_16s_16bkb_U1/fc_mul_mul_16s_16bkb_DSP48_0_U/p2default:default2default:default2�
 "�
Ssystem_i/fc_0/inst/fc_mul_mul_16s_16bkb_U1/fc_mul_mul_16s_16bkb_DSP48_0_U/p/P[47:0]Msystem_i/fc_0/inst/fc_mul_mul_16s_16bkb_U1/fc_mul_mul_16s_16bkb_DSP48_0_U/p/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg	�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg	�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg	�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg	�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg	�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg	�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg	�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg	�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg	�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg	�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg	�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg	�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg	�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg	�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg	�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg	�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg	�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg	�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/empty_fwft_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg	�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg	Hsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg2default:default2default:default2�
 "�
Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]Xsystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/mem_reg/ADDRBWRADDR[11]2default:default2default:default2�
 "�
Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]Isystem_i/conv1d_0/inst/conv1d_OUT_r_m_axi_U/bus_write/buff_wdata/rnext[7]2default:default2default:default2�
 "�
�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg	�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px� 
�>
aNo routable loads: 132 net(s) have no routable loads. The problem bus(es) and/or net(s) are %s.%s*DRC2�=
 "�
�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�system_i/axi_mem_intercon_1/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_BURSTS.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�system_i/axi_mem_intercon/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i2default:default"�
�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb2default:default"�
�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb�system_i/axi_mem_intercon_2/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb2default:default"�
�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb�system_i/axi_mem_intercon_3/m00_couplers/auto_pc/inst/gen_axi4_axi3.axi3_conv_inst/USE_READ.USE_SPLIT_R.read_addr_inst/USE_R_CHANNEL.cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb2default:..."/
(the first 15 of 84 listed)2default:default2default:default2=
 %DRC|Implementation|Routing|Chip Level2default:default8Z	RTSTAT-10h px� 
h
DRC finished with %s
1905*	planAhead2*
0 Errors, 241 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
e
Writing bitstream %s...
11*	bitstream2(
./system_wrapper.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
222default:default2
2412default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:462default:default2
00:00:382default:default2
2308.3752default:default2
583.4412default:defaultZ17-268h px� 


End Record