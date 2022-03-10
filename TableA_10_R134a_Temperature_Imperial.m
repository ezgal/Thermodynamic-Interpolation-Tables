function output = TableA_10_R134a_Temperature_Imperial
close all
clc
clear all
%            P  T        vf       vg     uf     ug      hf    hfg    hg     sf   sg
A = [		-40	7.49	0.0113	5.7173	-0.02	87.9	0	95.82	95.82	0	0.2283
			-30	9.92	0.01143	4.3911	2.81	89.26	2.83	94.49	97.32	0.0067	0.2266
			-20	12.949	0.01156	3.4173	5.69	90.62	5.71	93.1	98.81	0.0133	0.225
			-15	14.718	0.01163	3.0286	7.14	91.3	7.17	92.38	99.55	0.0166	0.2243
			-10	16.674	0.0117	2.6918	8.61	91.98	8.65	91.64	100.29	0.0199	0.2236
			-5	18.831	0.01178	2.3992	10.09	92.66	10.13	90.89	101.02	0.0231	0.223
			0	21.203	0.01185	2.144	11.58	93.33	11.63	90.12	101.75	0.0264	0.2224
			5	23.805	0.01193	1.9208	13.09	94.01	13.14	89.33	102.47	0.0296	0.2219
			10	26.651	0.012	1.7251	14.6	94.68	14.66	88.53	103.19	0.0329	0.2214
			15	29.756	0.01208	1.5529	16.13	95.35	16.2	87.71	103.9	0.0361	0.2209
			20	33.137	0.01216	1.4009	17.67	96.02	17.74	86.87	104.61	0.0393	0.2205
			25	36.809	0.01225	1.2666	19.22	96.69	19.3	86.02	105.32	0.0426	0.22
			30	40.788	0.01233	1.1474	20.78	97.35	20.87	85.14	106.01	0.0458	0.2196
			40	49.738	0.01251	0.947	23.94	98.67	24.05	83.34	107.39	0.0522	0.2189
			50	60.125	0.0127	0.7871	27.14	99.98	27.28	81.46	108.74	0.0585	0.2183
			60	72.092	0.0129	0.6584	30.39	101.27	30.56	79.49	110.05	0.0648	0.2178
			70	85.788	0.01311	0.5538	33.68	102.54	33.89	77.44	111.33	0.0711	0.2173
			80	101.37	0.01334	0.4682	37.02	103.78	37.27	75.29	112.56	0.0774	0.2169
			85	109.92	0.01346	0.4312	38.72	104.39	38.99	74.17	113.16	0.0805	0.2167
			90	118.99	0.01358	0.3975	40.42	105	40.72	73.03	113.75	0.0836	0.2165
			95	128.62	0.01371	0.3668	42.14	105.6	42.47	71.86	114.33	0.0867	0.2163
			100	138.83	0.01385	0.3388	43.87	106.18	44.23	70.66	114.89	0.0898	0.2161
			105	149.63	0.01399	0.3131	45.62	106.76	46.01	69.42	115.43	0.093	0.2159
			110	161.04	0.01414	0.2896	47.39	107.33	47.81	68.15	115.96	0.0961	0.2157
			115	173.1	0.01429	0.268	49.17	107.88	49.63	66.84	116.47	0.0992	0.2155
			120	185.82	0.01445	0.2481	50.97	108.42	51.47	65.48	116.95	0.1023	0.2153
			140	243.86	0.0152	0.1827	58.39	110.41	59.08	59.57	118.65	0.115	0.2143
			160	314.63	0.01617	0.1341	66.26	111.97	67.2	52.58	119.78	0.128	0.2128
			180	400.22	0.01758	0.0964	74.83	112.77	76.13	43.78	119.91	0.1417	0.2101
			200	503.52	0.02014	0.0647	84.9	111.66	86.77	30.92	117.69	0.1575	0.2044
			210	563.51	0.02329	0.0476	91.84	108.48	94.27	19.18	113.45	0.1684	0.1971];


    T = A(:,1);
    P= A(:,2);
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
    if str2 == 'T'
        prompt3 = 'What is the value for Temperature?: ';
    T_x = input(prompt3);
%     T_x = interp1(T,P,T_x)
    P_x = interp1(T,P,T_x);
    vf_x = interp1(T,vf,T_x);
    vg_x = interp1(T,vg,T_x);
    uf_x = interp1(T,uf,T_x);
    ug_x = interp1(T,ug,T_x);
    hf_x = interp1(T,hf,T_x);
    hg_x = interp1(T,hg,T_x);
    sf_x = interp1(T,sf,T_x);
    sg_x = interp1(T,sg,T_x);
    output = table(T_x, P_x, vf_x, vg_x, uf_x, ug_x, hf_x, hg_x, sf_x, sg_x)
    
    else
%     if str2 == 'P'
%         prompt3 = 'What is the value for Pressure?: ';
%     P_x = input(prompt3);
%     T_x = interp1(P,T,P_x)
% %     P_x = interp1(P,P,T_x);
%     vf_x = interp1(P,vf,P_x);
%     vg_x = interp1(P,vg,P_x);
%     uf_x = interp1(P,uf,P_x);
%     ug_x = interp1(P,ug,P_x);
%     hf_x = interp1(P,hf,P_x);
%     hg_x = interp1(P,hg,P_x);
%     sf_x = interp1(P,sf,P_x);
%     sg_x = interp1(P,sg,P_x);
%     fprintf( "\t\tT_x\t\t\tP_x\t\t\tvf_x\t\tvg_x\t\tuf_x\t\tug_x\t\t"+...
%         "hf_x\t\thg_x\t\t\tsf_x\t\t\tsg_x");
%     output = [T_x P_x vf_x vg_x uf_x ug_x hf_x hg_x sf_x sg_x]
%     
%     else
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
    str3= input(prompt2, 's');
    if str3 == 'v'
prompt4= " What is the v value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
y = input(prompt5)

v_f=interp1(T,vf,y);

v_g=interp1(T,vg,y);

x_k = (x-v_f)/(v_g-v_f);
ans = round(x_k,3)
    end
    if str3 == 'u'
prompt4= " What is the u value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
y = input(prompt5)

v_f=interp1(T,uf,y);

v_g=interp1(T,ug,y);

x_k = (x-v_f)/(v_g-v_f);
output = round(x_k,3)
    end
    if str3 == 's'
prompt4= " What is the s value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
y = input(prompt5)

v_f=interp1(T,sf,y);

v_g=interp1(T,sg,y);

x_k = (x-v_f)/(v_g-v_f);
output = round(x_k,3)
    end
    if str3 == 'h'
prompt4= " What is the h value? ";
x = input(prompt4)
prompt5= " What is the T value? ";
y = input(prompt5)

v_f=interp1(T,hf,y);

v_g=interp1(T,hg,y);

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
            TableA_10_R134a_Temperature_Imperial
        else if str2 == "N"
                Table_reading
            end
        end
        
end
    end
end

