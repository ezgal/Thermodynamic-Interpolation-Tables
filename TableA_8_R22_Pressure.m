function output = TableA_8_R22_Pressure
clear all
clc
format short
A = [		0.4	-58.86	0.6847	0.5056	-20.36	204.13	-20.34	244.69	224.36	-0.0907	1.0512
			0.5	-54.83	0.6901	0.4107	-16.07	205.76	-16.03	242.33	226.3	-0.0709	1.0391
			0.6	-51.4	0.6947	0.3466	-12.39	207.14	-12.35	240.28	227.93	-0.0542	1.0294
			0.7	-48.4	0.6989	0.3002	-9.17	208.34	-9.12	238.47	229.35	-0.0397	1.0213
			0.8	-45.73	0.7026	0.265	-6.28	209.41	-6.23	236.84	230.61	-0.027	1.0144
			0.9	-43.3	0.7061	0.2374	-3.66	210.37	-3.6	235.34	231.74	-0.0155	1.0084
			1	-41.09	0.7093	0.2152	-1.26	211.25	-1.19	233.95	232.77	-0.0051	1.0031
			1.25	-36.23	0.7166	0.1746	4.04	213.16	4.13	230.86	234.99	0.0175	0.9919
			1.5	-32.08	0.723	0.1472	8.6	214.77	8.7	228.15	236.86	0.0366	0.983
			1.75	-28.44	0.7287	0.1274	12.61	216.18	12.74	225.73	238.47	0.0531	0.9755
			2	-25.18	0.734	0.1123	16.22	217.42	16.37	223.52	239.88	0.0678	0.9691
			2.25	-22.22	0.7389	0.1005	19.51	218.53	19.67	221.47	241.15	0.0809	0.9636
			2.5	-19.51	0.7436	0.091	22.54	219.55	22.72	219.57	242.29	0.093	0.9586
			2.75	-17	0.7479	0.0831	25.36	220.48	25.56	217.77	243.33	0.104	0.9542
			3	-14.66	0.7521	0.0765	27.99	221.34	28.22	216.07	244.29	0.1143	0.9502
			3.25	-12.46	0.7561	0.0709	30.47	222.13	30.72	214.46	245.18	0.1238	0.9465
			3.5	-10.39	0.7599	0.0661	32.82	222.88	33.09	212.91	246	0.1328	0.9431
			3.75	-8.43	0.7636	0.0618	35.06	223.58	35.34	211.42	246.77	0.1413	0.9399
			4	-6.56	0.7672	0.0581	37.18	224.24	37.49	209.99	247.48	0.1493	0.937
			4.25	-4.78	0.7706	0.0548	39.22	224.86	39.55	208.61	248.16	0.1569	0.9342
			4.5	-3.08	0.774	0.0519	41.17	225.45	41.52	207.27	248.8	0.1642	0.9316
			4.75	-1.45	0.7773	0.0492	43.05	226	43.42	205.98	249.4	0.1711	0.9292
			5	0.12	0.7805	0.0469	44.86	226.54	45.25	204.71	249.97	0.1777	0.9269
			5.25	1.63	0.7836	0.0447	46.61	227.04	47.02	203.48	250.51	0.1841	0.9247
			5.5	3.08	0.7867	0.0427	48.3	227.53	48.74	202.28	251.02	0.1903	0.9226
			5.75	4.49	0.7897	0.0409	49.94	227.99	50.4	201.11	251.51	0.1962	0.9206
			6	5.85	0.7927	0.0392	51.53	228.44	52.01	199.97	251.98	0.2019	0.9186
			7	10.91	0.8041	0.0337	57.48	230.04	58.04	195.6	253.64	0.2231	0.9117
			8	15.45	0.8149	0.0295	62.88	231.43	63.53	191.52	255.05	0.2419	0.9056
			9	19.59	0.8252	0.0262	67.84	232.64	68.59	187.67	256.25	0.2591	0.9001
			10	23.4	0.8352	0.0236	72.46	233.71	73.3	183.99	257.28	0.2748	0.8952
			12	30.25	0.8546	0.0195	80.87	235.48	81.9	177.04	258.94	0.3029	0.8864
			14	36.29	0.8734	0.0166	88.45	236.89	89.68	170.49	260.16	0.3277	0.8786
			16	41.73	0.8919	0.0144	95.41	238	96.83	164.21	261.04	0.35	0.8715
			18	46.69	0.9104	0.0127	101.87	238.86	103.51	158.13	261.64	0.3705	0.8649
			20	51.26	0.9291	0.0112	107.95	239.51	109.81	152.17	261.98	0.3895	0.8586
			24	59.46	0.9677	0.0091	119.24	240.22	121.56	140.43	261.99	0.4241	0.8463 ];

        
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
            TableA_8_R22_Pressure
        else if str2 == "N"
                Table_reading
            end
        end
        
end
    end
end