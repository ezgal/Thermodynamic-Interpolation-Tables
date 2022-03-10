function output = TableA_11_R134a_Pressure
clear all
clc
format short
A = [		0.6	-37.07	0.7097	0.31	3.41	206.12	3.46	221.27	224.72	0.0147	0.952
			0.8	-31.21	0.7184	0.2366	10.41	209.46	10.47	217.92	228.39	0.044	0.9447
			1	-26.43	0.7258	0.1917	16.22	212.18	16.29	215.06	231.35	0.0678	0.9395
			1.2	-22.36	0.7323	0.1614	21.23	214.5	21.32	212.54	233.86	0.0879	0.9354
			1.4	-18.8	0.7381	0.1395	25.66	216.52	25.77	210.27	236.04	0.1055	0.9322
			1.6	-15.62	0.7435	0.1229	29.66	218.32	29.78	208.19	237.97	0.1211	0.9295
			1.8	-12.73	0.7485	0.1098	33.31	219.94	33.45	206.26	239.71	0.1352	0.9273
			2	-10.09	0.7532	0.0993	36.69	221.43	36.84	204.46	241.3	0.1481	0.9253
			2.4	-5.37	0.7618	0.0834	42.77	224.07	42.95	201.14	244.09	0.171	0.9222
			2.8	-1.23	0.7697	0.0719	48.18	226.38	48.39	198.13	246.52	0.1911	0.9197
			3.2	2.48	0.777	0.0632	53.06	228.43	53.31	195.35	248.66	0.2089	0.9177
			3.6	5.84	0.7839	0.0564	57.54	230.28	57.82	192.76	250.58	0.2251	0.916
			4	8.93	0.7904	0.0509	61.69	231.97	62	190.32	252.32	0.2399	0.9145
			5	15.74	0.8056	0.0409	70.93	235.64	71.33	184.74	256.07	0.2723	0.9117
			6	21.58	0.8196	0.0341	78.99	238.74	79.48	179.71	259.19	0.2999	0.9097
			7	26.72	0.8328	0.0292	86.19	241.42	86.78	175.07	261.85	0.3242	0.908
			8	31.33	0.8454	0.0255	92.75	243.78	93.42	170.73	264.15	0.3459	0.9066
			9	35.53	0.8576	0.0226	98.79	245.88	99.56	166.62	266.18	0.3656	0.9054
			10	39.39	0.8695	0.0202	104.42	247.77	105.29	162.68	267.97	0.3838	0.9043
			12	46.32	0.8928	0.0166	114.69	251.03	115.76	155.23	270.99	0.4164	0.9023
			14	52.43	0.9159	0.014	123.98	253.74	125.26	148.14	273.4	0.4453	0.9003
			16	57.92	0.9392	0.0121	132.52	256	134.02	141.31	275.33	0.4714	0.8982
			18	62.91	0.9631	0.0105	140.49	257.88	142.22	134.6	276.83	0.4954	0.8959
			20	67.49	0.9878	0.0093	148.02	259.41	149.99	127.95	277.94	0.5178	0.8934
			25	77.59	1.0562	0.0069	165.48	261.84	168.12	111.06	279.17	0.5687	0.8854
			30	86.22	1.1416	0.0053	181.88	262.16	185.3	92.71	278.01	0.6156	0.8735];

        
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
            TableA_10_R134a_Pressure
        else if str2 == "N"
                Table_reading
            end
        end
        
end
    end
end