function output = TableA_11_R134a_Pressure_Imperial
clear all
clc
format short

%           P     T      vf      vg      uf      ug       hf       fg     hg      sf     sg
%                                                                            
A = [		5	-53.48	0.01113	8.3508	-3.74	86.07	-3.73	97.53	93.79	-0.009	0.2311
			10	-29.71	0.01143	4.3581	2.89	89.3	2.91	94.45	97.37	0.0068	0.2265
			15	-14.25	0.01164	2.9747	7.36	91.4	7.4	92.27	99.66	0.0171	0.2242
			20	-2.48	0.01181	2.2661	10.84	93	10.89	90.5	101.39	0.0248	0.2227
			30	15.38	0.01209	1.5408	16.24	95.4	16.31	87.65	103.96	0.0364	0.2209
			40	29.04	0.01232	1.1692	20.48	97.23	20.57	85.31	105.88	0.0452	0.2197
			50	40.27	0.01252	0.9422	24.02	98.71	24.14	83.29	107.43	0.0523	0.2189
			60	49.89	0.0127	0.7887	27.1	99.96	27.24	81.48	108.72	0.0584	0.2183
			70	58.35	0.01286	0.6778	29.85	101.05	30.01	79.82	109.83	0.0638	0.2179
			80	65.93	0.01302	0.5938	32.33	102.02	32.53	78.28	110.81	0.0686	0.2175
			90	72.83	0.01317	0.5278	34.62	102.89	34.84	76.84	111.68	0.0729	0.2172
			100	79.17	0.01332	0.4747	36.75	103.68	36.99	75.47	112.46	0.0768	0.2169
			120	90.54	0.0136	0.3941	40.61	105.06	40.91	72.91	113.82	0.0839	0.2165
			140	100.56	0.01386	0.3358	44.07	106.25	44.43	70.52	114.95	0.0902	0.2161
			160	109.56	0.01412	0.2916	47.23	107.28	47.65	68.26	115.91	0.0958	0.2157
			180	117.74	0.01438	0.2569	50.16	108.18	50.64	66.1	116.74	0.1009	0.2154
			200	125.28	0.01463	0.2288	52.9	108.98	53.44	64.01	117.44	0.1057	0.2151
			220	132.27	0.01489	0.2056	55.48	109.68	56.09	61.96	118.05	0.1101	0.2147
			240	138.79	0.01515	0.1861	57.93	110.3	58.61	59.96	118.56	0.1142	0.2144
			260	144.92	0.01541	0.1695	60.28	110.84	61.02	57.97	118.99	0.1181	0.214
			280	150.7	0.01568	0.155	62.53	111.31	63.34	56	119.35	0.1219	0.2136
			300	156.17	0.01596	0.1424	64.71	111.72	65.59	54.03	119.62	0.1254	0.2132
			350	168.72	0.01671	0.1166	69.88	112.45	70.97	49.03	120	0.1338	0.2118
			400	179.95	0.01758	0.0965	74.81	112.77	76.11	43.8	119.91	0.1417	0.2102
			450	190.12	0.01863	0.08	79.63	112.6	81.18	38.08	119.26	0.1493	0.2079
			500	199.38	0.02002	0.0657	84.54	111.76	86.39	31.44	117.83	0.157	0.2047];

        
    P= A(:,1);
    T = A(:,2);
    vf = A(:,3)./1000;
    vg= A(:,4);
    uf = A(:,5);
    ug = A(:,6);
    hf = A(:,7);
    fg = A(:,8);
    hg = A(:,9);
    sf = A(:,10);
    sg = A(:,11);
    

       prompt2 = 'What value do you have? P,vf,vg,uf,ug,hf,hg,sf, or sg if you need x,v,h, or s type them in[T]: ';
    str2= input(prompt2, 's');
%     if str2 == 'T'
%         prompt3 = 'What is the value for Temperature?: ';
%     T_x = input(prompt3);
% %     T_x = interp1(T,P,T_x)
%     P_x = interp1(T,P,T_x);
%     vf_x = interp1(T,vf,T_x);
%     vg_x = interp1(T,vg,T_x);
%     uf_x = interp1(T,uf,T_x);
%     ug_x = interp1(T,ug,T_x);
%     hf_x = interp1(T,hf,T_x);
%     hg_x = interp1(T,hg,T_x);
%     sf_x = interp1(T,sf,T_x);
%     sg_x = interp1(T,sg,T_x);
%     output = table(T_x, P_x, vf_x, vg_x, uf_x, ug_x, hf_x, hg_x, sf_x, sg_x)
%     
%     else
    if str2 == 'P'
        prompt3 = 'What is the value for Pressure?: ';
    P_x = input(prompt3);
    T_x = interp1(P,T,P_x)
%     P_x = interp1(P,P,T_x);
    vf_x = interp1(P,vf,P_x);
    vg_x = interp1(P,vg,P_x);
    uf_x = interp1(P,uf,P_x);
    ug_x = interp1(P,ug,P_x);
    hf_x = interp1(P,hf,P_x);
    hg_x = interp1(P,hg,P_x);
    sf_x = interp1(P,sf,P_x);
    sg_x = interp1(P,sg,P_x);
    output = table(T_x, P_x, vf_x, vg_x, uf_x, ug_x, hf_x, hg_x, sf_x, sg_x)
    
    else
     if str2 == 'vf'
        prompt3 = 'What is the value for vf?: ';
    vf_x = input(prompt3)
    T_x = interp1(vf,T,vf_x);
    P_x = interp1(vf,P,vf_x);
%     vf_x = interp1(T,vf,T_x);
    vg_x = interp1(vf,vg,vf_x);
    uf_x = interp1(vf,uf,vf_x);
    ug_x = interp1(vf,ug,vf_x);
    hf_x = interp1(vf,hf,vf_x);
    hg_x = interp1(vf,hg,vf_x);
    sf_x = interp1(vf,sf,vf_x);
    sg_x = interp1(vf,sg,vf_x);
    output = table(T_x, P_x, vf_x, vg_x, uf_x, ug_x, hf_x, hg_x, sf_x, sg_x)
         else if str2 == 'vg'
        prompt3 = 'What is the value for vg?: ';
    vg_x = input(prompt3)
    T_x = interp1(vg,T,vg_x);
    P_x = interp1(vg,P,vg_x);
    vf_x = interp1(vg,vf,vg_x);
%     vg_x = interp1(vg,vg,vg_x)
    uf_x = interp1(vg,uf,vg_x);
    ug_x = interp1(vg,ug,vg_x);
    hf_x = interp1(vg,hf,vg_x);
    hg_x = interp1(vg,hg,vg_x);
    sf_x = interp1(vg,sf,vg_x);
    sg_x = interp1(vg,sg,vg_x);
    output = table(T_x, P_x, vf_x, vg_x, uf_x, ug_x, hf_x, hg_x, sf_x, sg_x)
         else if str2 == 'hf'
        prompt3 = 'What is the value for hf?: ';
     hf= input(prompt3)
    T_x = interp1(hf,T,hf_x);
    P_x = interp1(hf,P,hf_x);
    vf_x = interp1(hf,vf,hf_x);
    vg_x = interp1(hf,vg,hf_x);
%     hf_x = interp1(hf,hf,hf_x)
    hg_x = interp1(hf,hg,hf_x);
    uf_x = interp1(hf,uf,hf_x);
    ug_x = interp1(hf,ug,hf_x);
    sf_x = interp1(hf,sf,hf_x);
    sg_x = interp1(hf,sg,hf_x);
    output = table(T_x, P_x, vf_x, vg_x, uf_x, ug_x, hf_x, hg_x, sf_x, sg_x)
      else if str2 == 'hg'
        prompt3 = 'What is the value for hg: ';
    hg_x = input(prompt3)
    T_x = interp1(hg,T,hg_x);
    P_x = interp1(hg,P,hg_x);
    vf_x = interp1(hg,vf,hg_x);
    vg_x = interp1(hg,vg,hg_x);
    hf_x = interp1(hg,hf,hg_x);
%     hg_x = interp1(hg,hg,hg_x)
    uf_x = interp1(hg,uf,hg_x);
    ug_x = interp1(hg,ug,hg_x);
    sf_x = interp1(hg,sf,hg_x);
    sg_x = interp1(hg,sg,hg_x);
    output = table(T_x, P_x, vf_x, vg_x, uf_x, ug_x, hf_x, hg_x, sf_x, sg_x)
                     else if str2 == 'sf'
        prompt3 = 'What is the value for sf: ';
    x = input(prompt3)
    T_x = interp1(sf,T,sf_x);
    P_x = interp1(sf,P,sf_x);
    vf_x = interp1(sf,vf,sf_x);
    vg_x = interp1(sf,vg,sf_x);
    hf_x = interp1(sf,hf,sf_x);
    hg_x = interp1(sf,hg,sf_x);
    uf_x = interp1(sf,uf,sf_x);
    ug_x = interp1(sf,ug,sf_x);
%     sf_x = interp1(sf,sf,sf_x)
    sg_x = interp1(sf,sg,sf_x);
   output = table(T_x, P_x, vf_x, vg_x, uf_x, ug_x, hf_x, hg_x, sf_x, sg_x)
    else if str2 == 'sg'
        prompt3 = 'What is the value for sg?: ';
    sg_x = input(prompt3)
    T_x  = interp1(sg,T,sg_x);
    P_x  = interp1(sg,P,sg_x);
    vf_x = interp1(sg,vf,sg_x);
    vg_x = interp1(sg,vg,sg_x);
    hf_x = interp1(sg,hf,sg_x);
    hg_x = interp1(sg,hg,sg_x);
    sf_x = interp1(sg,sf,sg_x);
%     sg_x = interp1(sg,sg,sg_x)
    uf_x = interp1(sg,uf,sg_x);
    ug_x = interp1(sg,ug,sg_x);
    output = table(T_x, P_x, vf_x, vg_x, uf_x, ug_x, hf_x, hg_x, sf_x, sg_x)
    else if str2 == 'uf'
        prompt3 = 'What is the value for uf?: ';
    uf_x = input(prompt3)
    T_x  = interp1(uf,T,uf_x);
    P_x  = interp1(uf,P,uf_x);
    vf_x = interp1(uf,vf,uf_x);
    vg_x = interp1(uf,vg,uf_x);
    hf_x = interp1(uf,hf,uf_x);
    hg_x = interp1(uf,hg,uf_x);
    sf_x = interp1(uf,sf,uf_x);
    sg_x = interp1(uf,sg,uf_x);
%     uf_x = interp1(uf,uf,uf_x)
    ug_x = interp1(uf,ug,uf_x);
    fprintf( "\t\tT_x\t\t\tP_x\t\t\tvf_x\t\tvg_x\t\tuf_x\t\tug_x\t\t"+...
        "hf_x\t\thg_x\t\t\tsf_x\t\t\tsg_x");    
output = [T_x P_x vf_x vg_x uf_x ug_x hf_x hg_x sf_x sg_x]
    else if str2 == 'ug'
        prompt3 = 'What is the value for ug?: ';
    ug_x = input(prompt3)
    T_x  = interp1(uf,T,ug_x);
    P_x  = interp1(ug,P,ug_x);
    vf_x = interp1(ug,vf,ug_x);
    vg_x = interp1(ug,vg,ug_x);
    hf_x = interp1(ug,hf,ug_x);
    hg_x = interp1(ug,hg,ug_x);
    sf_x = interp1(ug,sf,ug_x);
    sg_x = interp1(ug,sg,ug_x);
    uf_x = interp1(ug,uf,ug_x);
    ug_x = interp1(ug,ug,ug_x);
    output = table(T_x, P_x, vf_x, vg_x, uf_x, ug_x, hf_x, hg_x, sf_x, sg_x)
        end; end; end; end; end; end; end; end; end;
           
 


if str2=='v'
     
prompt4= " What is the x value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
T_x = input(prompt5)
v_f=interp1(T,vf,T_x);
v_g=interp1(T,vg,T_x);
v_x = x*(v_g-v_f)+v_f;
h_f=interp1(T,hf,T_x);
h_g=interp1(T,hg,T_x);
h_x = x*(h_g-h_f)+h_f;
u_f=interp1(T,uf,T_x);
u_g=interp1(T,ug,T_x);
u_x = x*(u_g-u_f)+u_f;
s_f=interp1(T,sf,T_x);
s_g=interp1(T,sg,T_x);
s_x = x*(s_g-s_f)+s_f;
fprintf("\tT_x\t\t\tv_x\t\t\t\th_x\t\t\ts_x\t\t\tu_x")
output = table(T_x, v_x, h_x, s_x, u_x)
end
if str2=='u'
prompt4= " What is the x value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
T_x = input(prompt5)
v_f=interp1(T,vf,T_x);
v_g=interp1(T,vg,T_x);
v_x = x*(v_g-v_f)+v_f;
h_f=interp1(T,hf,T_x);
h_g=interp1(T,hg,T_x);
h_x = x*(h_g-h_f)+h_f;
u_f=interp1(T,uf,T_x);
u_g=interp1(T,ug,T_x);
u_x = x*(u_g-u_f)+u_f;
s_f=interp1(T,sf,T_x);
s_g=interp1(T,sg,T_x);
s_x = x*(s_g-s_f)+s_f;
output = table(T_x, v_x, h_x, s_x, u_x)
end
if str2=='h'
 
prompt4= " What is the x value? ";
x = input(prompt4);
prompt5= " What is the T value? ";
T_x = input(prompt5)
v_f=interp1(T,vf,T_x);
v_g=interp1(T,vg,T_x);
v_x = x*(v_g-v_f)+v_f;
h_f=interp1(T,hf,T_x);
h_g=interp1(T,hg,T_x);
h_x = x*(h_g-h_f)+h_f;
u_f=interp1(T,uf,T_x);
u_g=interp1(T,ug,T_x);
u_x = x*(u_g-u_f)+u_f;
s_f=interp1(T,sf,T_x);
s_g=interp1(T,sg,T_x);
s_x = x*(s_g-s_f)+s_f;
output = table(T_x, v_x, h_x, s_x, u_x)
end
if str2=='s'
    
prompt4= " What is the x value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
T_x = input(prompt5)
v_f=interp1(T,vf,T_x);
v_g=interp1(T,vg,T_x);
v_x = x*(v_g-v_f)+v_f;
h_f=interp1(T,hf,T_x);
h_g=interp1(T,hg,T_x);
h_x = x*(h_g-h_f)+h_f;
u_f=interp1(T,uf,T_x);
u_g=interp1(T,ug,T_x);
u_x = x*(u_g-u_f)+u_f;
s_f=interp1(T,sf,T_x);
s_g=interp1(T,sg,T_x);
s_x = x*(s_g-s_f)+s_f;
output = table(T_x, v_x, h_x, s_x, u_x)
end


if str2=='x'
    prompt2 = 'What value do you have? v, u, h, s: ';
    str2= input(prompt2, 's');
    if str2 == 'v'
prompt4= " What is the v value? ";
x = input(prompt4)
prompt5= " What is the P value? ";
y = input(prompt5)

v_f=interp1(P,vf,y);

v_g=interp1(P,vg,y);

x_k = (x-v_f)/(v_g-v_f);
otuput = round(x_k,3)
    end
    if str2 == 'u'
prompt4= " What is the u value? ";
x = input(prompt4)
prompt5= " What is the P value? ";
y = input(prompt5)

v_f=interp1(P,uf,y)

v_g=interp1(P,ug,y)

x_k = (x-v_f)/(v_g-v_f);
output = round(x_k,3)
    end
    if str2 == 's'
prompt4= " What is the s value? ";
x = input(prompt4)
prompt5= " What is the P value? ";
y = input(prompt5)

v_f=interp1(P,sf,y);

v_g=interp1(P,sg,y);

x_k = (x-v_f)/(v_g-v_f);
output = round(x_k,3)
    end
    if str2 == 'h'
prompt4= " What is the h value? ";
x = input(prompt4)
prompt5= " What is the P value? ";
y = input(prompt5)

v_f=interp1(P,hf,y);

v_g=interp1(P,hg,y);

x_k = (x-v_f)/(v_g-v_f);
output = round(x_k,3)
    end
end

prompt1 = 'Are you finished with reading Tables? Y/N [Y] ';
str1 = input(prompt1,'s');
if str1 == 'Y'
    sprintf(" Thank you for using my code. Good luck in Thermo")
else if str1 =='N'
        prompt2 = "Do you need this table again? Y/N [Y]: ";
        str2 = input(prompt2,'s');
        if str2 =="Y"
            TableA_10_R134a_Pressure_Imperial
        else if str2 == "N"
                Table_reading
            end
        end
        
end
    end
end