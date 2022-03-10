function output =  TableA_3()
clear all
clc
format short
A = [0.04	28.96	1.004	34.8	121.45	2415.2	121.46	2432.9	2554.4	0.4226	8.4746
0.06	36.16	1.0064	23.739	151.53	2425	151.53	2415.9	2567.4	0.521	8.3304
0.08	41.51	1.0084	18.103	173.87	2432.2	173.88	2403.1	2577	0.5926	8.2287
0.1	45.81	1.0102	14.674	191.82	2437.9	191.83	2392.8	2584.7	0.6493	8.1502
0.2	60.06	1.0172	7.649	251.38	2456.7	251.4	2358.3	2609.7	0.832	7.9085
0.3	69.1	1.0223	5.229	289.2	2468.4	289.23	2336.1	2625.3	0.9439	7.7686
0.4	75.87	1.0265	3.993	317.53	2477	317.58	2319.2	2636.8	1.0259	7.67
0.5	81.33	1.03	3.24	340.44	2483.9	340.49	2305.4	2645.9	1.091	7.5939
0.6	85.94	1.0331	2.732	359.79	2489.6	359.86	2293.6	2653.5	1.1453	7.532
0.7	89.95	1.036	2.365	376.63	2494.5	376.7	2283.3	2660	1.1919	7.4797
0.8	93.5	1.038	2.087	391.58	2498.8	391.66	2274.1	2665.8	1.2329	7.4346
0.9	96.71	1.041	1.869	405.06	2502.6	405.15	2265.7	2670.9	1.2695	7.3949
1	99.63	1.0432	1.694	417.36	2506.1	417.46	2258	2675.5	1.3026	7.3594
1.5	111.4	1.0528	1.159	466.94	2519.7	467.11	2226.5	2693.6	1.4336	7.2233
2	120.2	1.0605	0.8857	504.49	2529.5	504.7	2201.9	2706.7	1.5301	7.1271
2.5	127.4	1.0672	0.7187	535.1	2537.2	535.37	2181.5	2716.9	1.6072	7.0527
3	133.6	1.0732	0.6058	561.15	2543.6	561.47	2163.8	2725.3	1.6718	6.9919
3.5	138.9	1.0786	0.5243	583.95	2546.9	584.33	2148.1	2732.4	1.7275	6.9405
4	143.6	1.0836	0.4625	604.31	2553.6	604.74	2133.8	2738.6	1.7766	6.8959
4.5	147.9	1.0882	0.414	622.25	2557.6	623.25	2120.7	2743.9	1.8207	6.8565
5	151.9	1.0926	0.3749	639.68	2561.2	640.23	2108.5	2748.7	1.8607	6.8212
6	158.9	1.1006	0.3157	669.9	2567.4	670.56	2086.3	2756.8	1.9312	6.76
7	165	1.108	0.2729	696.44	2572.5	697.22	2066.3	2763.5	1.9922	6.708
8	170.4	1.1148	0.2404	720.22	2576.8	721.11	2048	2769.1	2.0462	6.6628
9	175.4	1.1212	0.215	741.83	2580.5	742.83	2031.1	2773.9	2.0946	6.6226
10	179.9	1.1273	0.1944	761.68	2583.6	762.81	2015.3	2778.1	2.1387	6.5863
15	198.3	1.1539	0.1318	843.16	2594.5	844.84	1947.3	2792.2	2.315	6.4448
20	212.4	1.1767	0.09963	906.44	2600.3	908.79	1890.7	2799.5	2.4474	6.3409
25	224	1.1973	0.07998	959.11	2603.1	962.11	1841	2803.1	2.5547	6.2575
30	233.9	1.2165	0.06668	1004.8	2604.1	1008.4	1795.7	2804.2	2.6457	6.1869
35	242.6	1.2347	0.05707	1045.4	2603.7	1049.8	1753.7	2803.4	2.7253	6.1253
40	250.4	1.2522	0.04978	1082.3	2602.3	1087.3	1714.1	2801.4	2.7964	6.0701
45	257.5	1.2692	0.04406	1116.2	2600.1	1121.9	1676.4	2798.3	2.861	6.0199
50	264	1.2859	0.03944	1147.8	2597.1	1154.2	1640.1	2794.3	2.9202	5.9734
60	275.6	1.3187	0.03244	1205.4	2589.7	1213.4	1571	2784.3	3.0267	5.8892
70	285.9	1.3513	0.02737	1257.6	2580.5	1267	1505.1	2772.1	3.1211	5.8133
80	295.1	1.3842	0.02352	1305.6	2569.8	1316.6	1441.3	2758	3.2068	5.7432
90	303.4	1.4178	0.02048	1350.5	2557.8	1363.3	1378.9	2742.1	3.2858	5.6772
100	311.1	1.4524	0.01803	1393	2544.4	1407.6	1317.1	2724.7	3.3596	5.6141
110	318.2	1.4886	0.01599	1433.7	2529.8	1450.1	1255.5	2705.6	3.4295	5.5527
120	324.8	1.5267	0.01426	1473	2513.7	1491.3	1193.6	2684.9	3.4962	5.4924
130	330.9	1.5671	0.01278	1511.1	2496.1	1531.5	1130.7	2662.2	3.5606	5.4323
140	336.8	1.6107	0.01149	1548.6	2476.8	1571.1	1066.5	2637.6	3.6232	5.3717
150	342.2	1.6581	0.01034	1585.6	2455.5	1610.5	1000	2610.5	3.6848	5.3098
160	347.4	1.7107	0.009306	1622.7	2431.7	1650.1	930.6	2580.6	3.7461	5.2455
170	352.4	1.7702	0.008364	1660.2	2405	1690.3	856.9	2547.2	3.8079	5.1777
180	357.1	1.8397	0.007489	1698.9	2374.3	1732	777.1	2509.1	3.8715	5.1044
190	361.5	1.9243	0.006657	1739.9	2338.1	1776.5	688	2464.5	3.9388	5.0228
200	365.8	2.036	0.005834	1785.6	2293	1826.3	583.4	2409.7	4.0139	4.9269
220.9	374.1	3.155	0.003155	2029.6	2029.6	2099.3	0	2099.3	4.4298	4.4298];

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
            TableA_3
        else if str2 == "N"
                Table_reading
            end
        end
        
end
    end

end

