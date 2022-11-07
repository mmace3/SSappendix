#V3.30.03.03
#black drum 2022
#_observed data: 
1982 #_styr
2020 #_endyr
1 #_nseas
12 #_months/season
2 #_N_subseasons(even number, minimum is 2)
1 #_spawn_month
1 #_Ngenders
67 #_Nages=accumulator age
1 #_N_areas
2 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=ignore 
#_survey_timing: -1=for use of catch-at-age to override the month value associated with a datum 
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type, timing, area, units, need_catch_mult fleetname
 1 -1 1 1 0 Fishery  # 1
 3 1 1 1 0 MRIP # 2
#_Catch data: yr, seas, fleet, catch, catch_se
#_catch_se:  standard error of log(catch); can be overridden in control file with detailed F input
-999 1 1 0 0.05
 1982	1	1	680.486	0.05	#_84        
 1983	1	1	1654.32	0.05	#_85        
 1984	1	1	1418.83	0.05	#_86        
 1985	1	1	1592.42	0.05	#_87        
 1986	1	1	2756.61	0.05	#_88        
 1987	1	1	   1311	0.05	#_89        
 1988	1	1	630.701	0.05	#_90        
 1989	1	1	788.489	0.05	#_91        
 1990	1	1	428.543	0.05	#_92        
 1991	1	1	912.712	0.05	#_93        
 1992	1	1	1086.05	0.05	#_94        
 1993	1	1	981.951	0.05	#_95        
 1994	1	1	 1291.1	0.05	#_96        
 1995	1	1	1163.75	0.05	#_97        
 1996	1	1	1147.11	0.05	#_98        
 1997	1	1	978.745	0.05	#_99        
 1998	1	1	 1462.6	0.05	#_100       
 1999	1	1	2020.77	0.05	#_101       
 2000	1	1	 3214.7	0.05	#_102       
 2001	1	1	2096.04	0.05	#_103       
 2002	1	1	2246.49	0.05	#_104       
 2003	1	1	 3407.5	0.05	#_105       
 2004	1	1	2092.39	0.05	#_106       
 2005	1	1	1653.46	0.05	#_107       
 2006	1	1	2115.37	0.05	#_108       
 2007	1	1	2615.33	0.05	#_109       
 2008	1	1	5235.83	0.05	#_110       
 2009	1	1	4413.52	0.05	#_111       
 2010	1	1	2924.18	0.05	#_112       
 2011	1	1	3713.34	0.05	#_113       
 2012	1	1	1917.38	0.05	#_114       
 2013	1	1	3192.42	0.05	#_115       
 2014	1	1	2735.64	0.05	#_116       
 2015	1	1	2696.64	0.05	#_117       
 2016	1	1	3519.98	0.05	#_118       
 2017	1	1	3381.94	0.05	#_119       
 2018	1	1	2855.24	0.05	#_120       
 2019	1	1	2300.37	0.05	#_121    
 2020	1	1	2784.29	0.05	#_122   
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; >=30 for special types
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_Fleet Units Errtype
1 1 0 0 # Fishery
2 0 0 0 # MRIP Numbers
#_yr month fleet obs stderr
# MRIP index
1982	1	2	0.246637969	0.023794942
1983	1	2	0.233744664	0.023662111
1984	1	2	0.281217376	0.027119018
1985	1	2	0.228165451	0.016766209
1986	1	2	0.33013908	0.025902435
1987	1	2	0.276656409	0.043066505
1988	1	2	0.249841026	0.031094549
1989	1	2	0.317847651	0.038611998
1990	1	2	0.272072606	0.024693806
1991	1	2	0.309092602	0.02692377
1992	1	2	0.302408718	0.023185114
1993	1	2	0.298564869	0.021244629
1994	1	2	0.270999097	0.016970196
1995	1	2	0.308837157	0.019945387
1996	1	2	0.307040759	0.022019818
1997	1	2	0.342140381	0.022346587
1998	1	2	0.336735607	0.019361851
1999	1	2	0.352051156	0.021540629
2000	1	2	0.346331223	0.020779491
2001	1	2	0.343960817	0.0211695
2002	1	2	0.354744159	0.021034897
2003	1	2	0.323231772	0.020803136
2004	1	2	0.266101933	0.017454628
2005	1	2	0.282145852	0.01738712
2006	1	2	0.331820977	0.019176316
2007	1	2	0.394300566	0.021803054
2008	1	2	0.345844348	0.020490903
2009	1	2	0.338340364	0.019475213
2010	1	2	0.324622624	0.018680842
2011	1	2	0.336304851	0.020013152
2012	1	2	0.31412988	0.019712168
2013	1	2	0.374578512	0.023182222
2014	1	2	0.345225312	0.020785369
2015	1	2	0.387051626	0.022245188
2016	1	2	0.411854342	0.023738269
2017	1	2	0.389943859	0.021758321
2018	1	2	0.391243743	0.022857914
2019	1	2	0.390110475	0.022773002
2020	1	2	0.364749669	0.050993338 
-9999 1 1 1 1 # terminator for survey observations 
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal
# note, only have units and errtype for fleets with discard 
#_Fleet units errtype
#1 2 0 # Fishery
#_yr month fleet obs stderr
#-9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_30 #_DF_for_meanbodysize_T-distribution_like
# note:  use positive partition value for mean body wt, negative partition for mean body length 
#_yr month fleet part obs stderr
#  -9999 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
4 # binwidth for population size comp 
2 # minimum size in the population (lower edge of first bin and size at age 0.00) 
154 # maximum size in the population (lower edge of last bin) 
1 # use length composition data (0/1)
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_Comp_Error2:  parm number  for dirichlet
#_mintailcomp_addtocomp_combM+F_CompressBins_CompError_ParmSelect
-1 0.001 0 0 0 0 0.01 #_fleet:1_Fishery
-1 0.001 0 0 0 0 0.01 #_fleet:2_Depl
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
 39 #_N_LengthBins; then enter lower edge of each length bin
  2	6	10	14	18	22	26	30	34	38	42	46	50	54	58	62	66	70	74	78	82	86	90	94	98	102	106	110	114	118	122	126	130	134	138	142	146	150	154
#_yr month fleet sex part Nsamp datavector(female-male)
1981	1	1	0	2	25	0	0	18039	4161	19331	36014	98682	14235	113867	48522	33531	16682	7849	0	0	0	0	0	0	0	0	0	11043	0	0	0	0	0	0	0	0	0	0	0	0	0	0 0 0
1982	1	1	0	2	25	0	2699	0	10942	93906	218492	192485	38139	130856	123467	0	12155	5892	1334	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0 0 0
1983	1	1	0	2	25	0	0	209	56344	147189	100290	119376	8360	217229	94559	24938	61022	11502	1913	5751	0	0	0	0	3265	0	0	1125	418	4281	12899	1235	0	4631	561	0	0	0	0	0	0	0 0 0
1984	1	1	0	2	25	0	2477	9384	176177	408296	44320	72090	24399	79170	61383	34237	8443	19496	83439	70326	11188	0	0	0	0	1996	0	0	0	0	1807	0	0	0	0	0	0	0	0	0	0	0 0 0
1985	1	1	0	2	25	0	0	44963	105540	155675	31612	78864	68885	39936	0	0	51206	43760	19143	32057	63224	32097	34	12244	0	81	194	247	7750	29	1071	45	1138	1099	80	0	0	0	173	0	0	0 0 0
1986	1	1	0	2	25	0	0	353983	82424	144996	82484	482173	44604	23521	160610	4564	2592	489711	21925	2916	0	0	2916	0	0	88	772	58	2883	761	2161	12370	627	875	0	0	0	0	0	0	0	0 0 0
1987	1	1	0	2	25	0	401	64102	137192	232129	60933	193288	108678	48721	247945	1985	1827	95832	4797	0	282	0	1166	0	162	184	1514	1587	1587	1341	661	1505	255	163	0	0	0	0	0	0	0	0 0 0
1988	1	1	0	2	25	0	1491	19279	22428	159061	25222	13161	17367	31675	18491	19787	21984	49241	4075	0	4364	2037	1021	0	0	289	0	833	1483	0	0	0	0	289	0	0	0	0	0	0	0	0 0 0
1989	1	1	0	2	25	0	0	6601	9618	36611	2481	55446	33954	51920	16203	0	4778	0	409	688	754	37368	409	409	409	409	53	507	98	227	245	245	3589	0	0	0	0	0	0	0	0	0 0 0
1990	1	1	0	2	25	0	0	30100	1792	58325	9562	14417	67536	29007	74680	4007	367	1728	2821	0	9904	4336	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0 0 0
1991	1	1	0	2	25	0	0	15985	22438	111940	42415	72911	100085	58960	17867	1452	60295	39767	48230	0	3713	2081	0	0	0	0	0	0	0	0	0	0	1199	0	0	0	0	0	0	0	0	0 0 0
1992	1	1	0	2	25	0	0	3832	9338	14825	38184	112256	77340	251280	35167	31397	51778	10230	8216	4233	0	1657	0	0	0	0	0	826	284	0	1110	284	1936	3677	0	0	0	0	0	0	0	0 0 0
1993	1	1	0	2	25	0	756	108727	81678	95853	21848	47940	31354	115700	104553	13486	39674	52585	34625	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0 0 0
1994	1	1	0	2	25	0	0	2261	1686	32751	98122	59989	37249	156244	139122	4122	71953	44059	44252	10855	4478	0	0	503	0	0	0	0	3416	1578	0	0	0	0	0	0	0	0	0	0	0	0 0 0
1995	1	1	0	2	25	0	0	27022	116896	502041	183204	219179	37433	27056	40620	9153	19786	19826	31436	11847	14567	14240	1158	238	0	238	0	0	286	525	1489	0	0	0	238	0	0	0	0	0	0	0 0 0
1996	1	1	0	2	25	0	0	29630	45642	166389	77233	126335	57472	129980	53641	58649	37389	31160	44244	6107	0	0	335	1936	0	2222	0	0	586	0	604	586	14	0	0	0	0	0	0	0	0	0 0 0
1997	1	1	0	2	25	0	0	0	0	15837	35427	85160	25524	170709	41925	17157	41748	12885	19302	10086	4386	825	1213	825	0	0	0	0	0	0	0	0	3700	0	0	348	0	0	0	0	0	0 0 0
1998	1	1	0	2	25	0	0	7158	18347	49617	14082	124903	40199	224145	179170	36443	69674	65805	19434	562	1145	6686	0	0	0	0	0	0	0	0	889	0	0	0	0	2409	0	0	0	0	0	0 0 0
1999	1	1	0	2	25	0	0	12679	60394	129735	67894	128784	159782	378026	155415	106388	75755	32194	29599	21648	0	8080	11599	0	0	0	0	0	0	0	0	0	0	0	0	1313	0	0	0	0	0	0 0 0
2000	1	1	0	2	25	0	0	16987	134933	142196	25093	229448	130372	288320	492613	116675	132754	80091	8535	28316	3203	3401	0	0	0	0	0	0	0	0	3231	0	11498	3231	0	6329	0	0	0	0	0	0 0 0
2001	1	1	0	2	25	0	0	1746	81073	246439	14767	95265	127014	418987	168740	69801	71782	16918	64453	1151	12411	9237	0	2914	7188	838	0	0	1427	0	0	195	3354	410	80	0	0	0	0	0	0	0 0 0
2002	1	1	0	2	25	0	0	13676	63795	216111	93448	255769	122364	383381	269724	36945	57455	15923	47634	26158	9356	3286	8173	0	0	0	0	0	0	0	0	0	0	2045	0	0	0	0	0	0	0	0 0 0
2003	1	1	0	2	25	0	0	266488	311522	851560	70239	92653	94439	209458	440392	112916	270341	70019	34465	10851	10459	1922	205	0	6923	0	3379	0	7034	0	0	0	0	0	1168	6516	0	0	0	0	0	0 0 0
2004	1	1	0	2	25	0	0	9529	9109	166369	43165	61002	18058	171901	131217	79516	146473	85679	35494	6742	8130	0	0	0	0	0	0	0	4804	0	3306	191	11699	503	0	0	0	0	0	0	0	0 0 0
2005	1	1	0	2	25	0	0	114442	305107	203298	19001	87970	50967	74165	83394	92896	104132	26784	23542	11260	1772	2377	4620	6663	7623	4041	11898	0	0	0	0	2860	0	16	0	0	0	0	0	0	0	0 0 0
2006	1	1	0	2	25	0	0	2534	50175	251100	55517	193434	184362	178497	44518	43103	10319	2023	15702	5934	30682	14806	12831	14668	15595	15444	0	170	7356	854	854	0	2620	170	0	0	0	0	0	0	0	0 0 0
2007	1	1	0	2	25	0	0	28939	138844	799914	198316	112379	107326	149044	182259	80333	95491	36062	110289	5790	11116	13808	22194	5439	0	0	0	0	545	0	217	0	0	274	0	337	0	0	0	0	0	0 0 0
2008	1	1	0	2	25	0	0	40236	144370	256304	91741	217127	327935	403932	202146	108877	157161	77972	58161	9842	19684	13975	50519	25945	6141	10774	1844	5742	3830	675	7397	1031	14523	16478	332	812	86	1680	553	0	0	0 0 0
2009	1	1	0	2	25	0	0	4335	135621	246351	38178	58679	91283	396638	337901	136277	83479	38566	30960	26566	17230	10549	415	7798	181	4497	886	3920	17624	1986	11438	16424	21870	2907	7753	38	0	0	0	0	0	0 0 0
2010	1	1	0	2	25	0	1014	4540	125637	442689	31374	62295	100049	402186	266599	119695	91705	49664	70496	25061	34130	3243	41	15494	4192	2156	1834	6890	370	0	176	0	531	0	0	1477	0	0	0	0	0	0 0 0
2011	1	1	0	2	25	0	0	61563	283989	861527	60904	35593	142349	298346	539721	263245	134927	8039	33821	24515	14187	93698	75	7759	800	1192	0	0	0	0	1069	0	0	0	0	277	0	0	0	0	0	0 0 0
2012	1	1	0	2	25	0	0	37207	65069	145761	49933	145665	111070	247729	187173	84974	49544	11518	11624	5119	18130	9367	19	7969	19	5377	0	771	782	8	1316	0	7	16	8	0	0	0	0	0	0	7 0 0
2013	1	1	0	2	25	0	0	91112	223948	396256	312598	121616	235592	664291	354813	161560	59502	81146	27025	2408	34761	8380	0	4446	0	0	2352	0	1969	0	0	0	0	0	0	0	0	0	0	0	0	0 0 0
2014	1	1	0	2	25	0	0	2174	0	3682	595	86885	238184	200742	222826	42579	190937	85607	85120	2456	87062	0	766	1179	0	663	0	96	0	0	0	0	0	0	0	0	0	0	0	0	0	0 0 0
2015	1	1	0	2	25	0	0	0	0	22044	12399	19828	110676	159911	261035	52833	107339	2562	9790	4630	3711	613	0	111141	0	0	195	1579	112	2580	2525	2181	2211	187	0	0	0	0	0	0	0	0 0 0
2016	1	1	0	2	25	0	0	0	0	11185	10272	213162	474527	639079	155413	43272	136866	123320	193076	8029	13167	12998	0	974	0	1453	2865	0	0	0	969	969	0	0	0	0	0	0	0	95	0	0 0 0
2017	1	1	0	2	25	0	0	0	12798	1905	5982	49472	264966	841350	245991	55368	40811	29744	12856	423	123583	4328	44782	0	1221	913	2713	0	0	0	0	4328	0	0	0	0	0	0	0	0	0	0 0 0
2018	1	1	0	2	25	0	0	2316	9725	15717	188	72669	119939	486200	488007	101055	50554	25435	12842	14	5907	16004	172	3899	15979	12650	358	0	0	0	1080	0	7	7	0	0	0	0	0	0	0	0 0 0
2019	1	1	0	2	25	0	0	0	370	26043	3752	188414	171546	531190	294797	48472	145247	2691	7342	2028	648	7057	0	4524	776	1513	520	192	219	0	17	1240	0	0	0	0	0	0	0	0	0	0 0 0
2020	1	1	0	2	25	0	0	0	4258	27945	15293	103954	134967	365052	210234	42013	154613	61738	28672	11995	1022	6000	265	61117	7737	15342	1042	378	208	0	48	958	22	22	0	0	0	0	0	0	0	0 0 0
-9999	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0 0 0
0 #_N_age_bins
#1	2	3	4	5	6	7	8	9	10	11	12	13	14	15	16	17	18	19	20	21	22	23	24	25	26	27	28	29	30	31	32	33	34	35	36	37	38	39	40
#1 #_N_ageerror_definitions
# 2017 2nd Best Likelihood Ageing Error - no bias
#0.5	1.5	2.5	3.5	4.5	5.5	6.5	7.5	8.5	9.5	10.5	11.5	12.5	13.5	14.5	15.5	16.5	17.5	18.5	19.5	20.5	21.5	22.5	23.5	24.5	25.5	26.5	27.5	28.5	29.5	30.5	31.5	32.5	33.5	34.5	35.5	36.5	37.5	38.5	39.5	40.5	41.5	42.5	43.5	44.5	45.5	46.5	47.5	48.5	49.5	50.5	51.5	52.5	53.5	54.5	55.5	56.5	57.5	58.5	59.5	60.5
#0.156	0.156	0.249	0.341	0.433	0.524	0.615	0.706	0.796	0.886	0.976	1.065	1.154	1.242	1.330	1.418	1.505	1.592	1.679	1.765	1.851	1.937	2.022	2.107	2.191	2.275	2.359	2.442	2.525	2.608	2.690	2.772	2.854	2.935	3.016	3.097	3.177	3.257	3.337	3.416	3.495	3.574	3.652	3.730	3.808	3.885	3.962	4.039	4.115	4.191	4.267	4.342	4.417	4.492	4.566	4.641	4.714	4.788	4.861	4.934	5.007
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_Comp_Error2:  parm number  for dirichlet
#_mintailcomp_addtocomp_combM+F_CompressBins_CompError_ParmSelect
#-1 0.001 0 0 0 0 #_fleet:1_Fishery
#-1 0.001 0 0 0 0 #_fleet:2_Depl
#3 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
# Fishery
#fishyr	month	fleet	gender	partition	ageErr	lbinlo	lbinhi	effN	A1	A2	A3	A4	A5	A6	A7	A8	A9	A10	A11	A12	A13	A14	A15	A16	A17	A18	A19	A20	A21	A22	A23	A24	A25	A26	A27	A28	A29	A30	A31	A32	-9999	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#
0 #_N_environ_variables
#Year Variable Value
0 # N sizefreq methods to read 
#
0 # do tags (0/1)
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
# Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
# feature not yet implemented
#
999

ENDDATA