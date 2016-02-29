//Maya ASCII 2015 scene
//Name: Enemy(MoveAnimation).ma
//Last modified: Fri, Feb 26, 2016 04:51:00 AM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28.227357569982537 13.294982827804731 23.792321454193178 ;
	setAttr ".r" -type "double3" -13.538352730687514 -1030.2000000000048 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 38.811879278852167;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.0373003919106862 100.1 3.4367530287846368 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 25.663701856693574;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.6725395003350609 1.5020589109697231 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 29.302049615051473;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 3.4025862778685045 4.5073776821388654 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 27.15802934405993;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube6";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCube6Shape" -p "pCube6";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50814366340637207 0.42063850164413452 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
	setAttr ".vcs" 2;
createNode mesh -n "pCube6ShapeOrig" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 203 ".uvst[0].uvsp[0:202]" -type "float2" 0.09182018 0.63092363
		 0.043321133 0.6262747 0.085023224 0.60524726 0.085218549 0.66108042 0.067657888 0.58572608
		 0.14576828 0.67466199 0.10088241 0.54558623 0.13061994 0.58059156 0.14990795 0.62529922
		 0.4839108 0.28856382 0.49730158 0.21143577 0.47864836 0.15990824 0.19809723 0.26919377
		 0.11033094 0.92422271 0.077854156 0.94270784 0.070439577 0.92729115 0.091176152 0.89518213
		 0.080057144 0.91141331 0.047282755 0.95265383 0.037037671 0.92714095 0.051640391
		 0.90075827 0.057778478 0.87344968 0.84869182 0.88730174 0.53236526 0.091399252 0.5980373
		 0.26308852 0.92316556 0.43988627 0.933375 0.41577125 0.97404432 0.44136322 0.95275342
		 0.39822793 0.98058915 0.38793743 0.92355967 0.35593176 0.96304595 0.33438993 0.89160526
		 0.38790953 0.86995459 0.42945883 0.56689447 0.13488805 0.57128674 0.18283144 0.68377912
		 0.23232472 0.55005014 0.43735698 0.44076014 0.88868976 0.48032212 0.91004747 0.46595955
		 0.92208737 0.44881439 0.92924881 0.47779465 0.88951606 0.51383495 0.92578268 0.49114335
		 0.94654059 0.51166868 0.89209312 0.47401297 0.96630365 0.92499524 0.88797009 0.96090817
		 0.89482212 0.8797574 0.88685358 0.22321144 0.094053268 0.23063135 0.72185481 0.23681974
		 0.76573348 0.21212865 0.13613272 0.23640007 0.81421506 0.18246558 0.16919327 0.61630487
		 0.71545935 0.59270418 0.76371217 0.64675313 0.67765558 0.14753519 0.19011474 0.057429314
		 0.75892425 0.094972491 0.70702255 0.65427256 0.94890702 0.70045054 0.92086673 0.73120677
		 0.91561437 0.6064949 0.94291592 0.55534184 0.79419827 0.62222755 0.58250141 0.67779863
		 0.72410536 0.38161945 0.41366482 0.67473674 0.17160237 0.78477734 0.25835168 0.35344887
		 0.27514207 0.85686511 0.36490059 0.9057253 0.11268508 0.88929778 0.039963484 0.94104004
		 0.22870719 0.91733909 0.17738807 0.76402605 0.32378268 0.83663207 0.31894147 0.75311589
		 0.42255104 0.74789643 0.48777103 0.74353063 0.57994759 0.74152571 0.66947979 0.48866034
		 0.68265629 0.44286788 0.63935649 0.11072709 0.12984061 0.1452724 0.10841179 0.17765403
		 0.087930202 0.20927116 0.067085028 0.27193761 0.71704376 0.27393734 0.77663112 0.27908659
		 0.82278526 0.29085958 0.91479468 0.28136587 0.55586493 0.28058124 0.44493735 0.28488064
		 0.30980456 0.80867875 0.15165126 0.8422246 0.19709563 0.88274014 0.25967431 0.90054172
		 0.30261505 0.63696361 0.83157492 0.60620022 0.83475709 0.56201744 0.8383472 0.68870175
		 0.82653725 0.33431208 0.70490205 0.14992815 0.037828922 0.30691314 0.758407 0.30210066
		 0.71681583 0.10808966 0.048923731 0.31807339 0.80426776 0.86319411 0.94592309 0.88353908
		 0.96627218 0.073933303 0.070106506 0.46159631 0.80967569 0.037924834 0.13494706 0.47306967
		 0.70685101 0.89841878 0.75957394 0.8439514 0.76044631 0.78334141 0.78158593 0.94473904
		 0.79587406 0.8605662 0.59328192 0.96008492 0.94449121 0.91990685 0.95884097 0.63230503
		 0.081798017 0.17663121 0.4147042 0.63846338 0.17344949 0.57854217 0.028790176 0.47399044
		 0.86777139 0.51828408 0.86135805 0.088311195 0.9562 0.052885592 0.97553259 0.82030755
		 0.70827597 0.77017951 0.74789369 0.37975866 0.90446377 0.28289318 0.65632296 0.42583108
		 0.86857474 0.20156556 0.92814028 0.1468606 0.9051832 0.83354193 0.6790821 0.027928233
		 0.82207131 0.09606719 0.85686529 0.18977329 0.044042587 0.20749509 0.67586243 0.42420858
		 0.66721511 0.051636621 0.16603827 0.40717959 0.73713338 0.39112985 0.77264893 0.36327446
		 0.73727572 0.19307375 0.71612394 0.073025078 0.19247484 0.13019019 0.7711705 0.15543795
		 0.80175745 0.17313981 0.7586422 0.31536561 0.67611301 0.069231272 0.68460691 0.17492485
		 0.61731255 0.16837144 0.52145123 0.81540167 0.42061418 0.82148296 0.50148672 0.14005399
		 0.23716342 0.94447887 0.50531471 0.068872452 0.46528637 0.91403371 0.69995064 0.39257932
		 0.51809776 0.38928413 0.61380041 0.67103964 0.49122918 0.69108498 0.40804613 0.64850342
		 0.36208999 0.46824729 0.34850729 0.53886706 0.58736968 0.55807883 0.69371402 0.93864703
		 0.60298914 0.08415699 0.34944141 0.54159999 0.48438227 0.48729491 0.4598223 0.86627734
		 0.38695329 0.27866328 0.13585424 0.41163301 0.24285996 0.66070497 0.31845945 0.45726109
		 0.10508823 0.745574 0.26040843 0.40288132 0.13162351 0.42935401 0.17880207 0.96251994
		 0.2779032 0.80059928 0.07871151 0.68196231 0.054167509 0.97084469 0.097685099 0.96528745
		 0.029321432 0.55994326 0.92128205 0.73183656 0.82027566 0.73620605 0.74813807 0.58348536
		 0.98258793 0.54675925 0.94701362 0.77712083 0.89756799 0.97329795 0.80527735 0.81611264
		 0.95391226 0.92734385 0.47497204 0.86595428 0.47837621 0.040881693 0.57305431 0.062955022
		 0.52065706 0.51724857 0.75915587 0.035698175 0.7392832;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 128 ".vt[0:127]"  -0.38391536 5.64449215 6.13118315 -0.63018435 5.57865715 6.20475721
		 -0.61051702 6.0029864311 6.19901085 -0.47807017 5.74161959 5.90293503 -0.72433925 5.67578363 5.97650909
		 -0.37093574 5.37793779 5.62980843 -0.71715379 5.28538275 5.73324251 -0.58478594 5.14883852 6.05412674
		 -0.23856801 5.24139261 5.95069218 -1.014518142 6.33335924 5.88860798 -0.68180001 6.86783171 5.95392323
		 -0.9154582 7.012275696 6.17788506 -0.81831318 6.83370304 5.68740225 -1.13106906 6.91868496 5.86663818
		 -0.45652276 7.40632057 5.87487078 -0.7611469 7.65665483 6.14676666 -1.063601136 7.47503614 5.75692654
		 -0.63941705 7.47849369 5.52424669 0.38391536 5.64449215 6.13118315 0.63018435 5.57865715 6.20475721
		 0.61051702 6.0029864311 6.19901085 0.47807017 5.74161959 5.90293503 0.72433925 5.67578363 5.97650909
		 0.37093574 5.37793779 5.62980843 0.71715379 5.28538275 5.73324251 0.58478594 5.14883852 6.05412674
		 0.23856801 5.24139261 5.95069218 1.014518142 6.33335924 5.88860798 0.68180001 6.86783171 5.95392323
		 0.9154582 7.012275696 6.17788506 0.81831318 6.83370304 5.68740225 1.13106906 6.91868496 5.86663818
		 0.45652276 7.40632057 5.87487078 0.7611469 7.65665483 6.14676666 1.063601136 7.47503614 5.75692654
		 0.63941705 7.47849369 5.52424669 -0.96359301 7.33289289 6.14396906 -0.71393502 8.33991528 6.48637915
		 -0.73403001 8.96313381 5.2823348 -1.81698596 7.43102121 5.17193079 -0.78666103 9.34143734 3.83211803
		 -2.23169088 7.25204802 3.86120701 -2.079277039 9.47083092 0.27077901 -2.95994902 7.90130711 0.73514003
		 -2.23169088 6.15792513 4.534513 -2.0074329376 6.078960896 1.55873299 -1.066092014 5.0011229515 6.23829079
		 -0.88433701 4.068389893 4.25878191 -2.47713089 8.95961571 -1.99807894 -3.45308304 6.59927082 -1.52903795
		 -2.80248189 4.90453291 -0.418226 -2.82400298 7.53505898 -4.41915417 -3.76721907 4.98826122 -3.56993008
		 -2.086364985 2.69618702 -1.85763395 -1.71780598 4.27686787 -6.11880112 -2.64309311 3.26645899 -5.34335995
		 -1.81619596 2.11331892 -4.16143799 0 1.29453301 -6.760849 0 2.0034899712 -3.91179895
		 0 2.43561912 -2.087255001 0 3.50793695 0.153413 0 4.71661901 2.16253901 0 3.91336989 4.73106813
		 0 5.038524151 6.4291091 0 6.15792513 4.534513 0 7.25204802 3.86120701 0 7.33249903 5.063539982
		 0 7.20395422 6.25591278 0 8.91333103 6.67673016 0 9.91126728 5.24388981 0 10.53920746 3.76665401
		 0 11.31799698 0.855371 0 11.025772095 -1.95729005 0 9.089196205 -4.93417692 0 5.29606724 -6.40661478
		 -5.2594099 2.28486204 -2.21859002 -3.93946099 1.30890799 -1.19871497 -3.030117989 0.75554299 -3.083724022
		 -4.11725903 1.40559006 -3.86324501 -5.2594099 -1.12175703 -2.82114196 -3.77724791 -1.12175798 -1.80501795
		 -2.52751589 -1.12175798 -3.15686893 -4.11725903 -1.12175798 -4.46579695 -5.78316689 8.34928513 0.21295001
		 -5.70602703 7.25886822 0.274946 -6.45221519 6.77020693 -1.73680794 -6.61566591 8.68036175 -1.64124596
		 -9.86488342 9.2175312 3.2443471 -9.56010628 6.87472916 3.27524209 -10.24601746 6.99163008 0.72103101
		 -10.42694283 8.47127914 0.77998 0.96359301 7.33289289 6.14396906 0.71393502 8.33991528 6.48637915
		 0.73403001 8.96313381 5.2823348 1.81698596 7.43102121 5.17193079 0.78666103 9.34143734 3.83211803
		 2.23169088 7.25204802 3.86120701 2.079277039 9.47083092 0.27077901 2.95994902 7.90130711 0.73514003
		 2.23169088 6.15792513 4.534513 2.0074329376 6.078960896 1.55873299 1.066092014 5.0011229515 6.23829079
		 0.88433701 4.068389893 4.25878191 2.47713089 8.95961571 -1.99807894 3.45308304 6.59927082 -1.52903795
		 2.80248189 4.90453291 -0.418226 2.82400298 7.53505898 -4.41915417 3.76721907 4.98826122 -3.56993008
		 2.086364985 2.69618702 -1.85763395 1.71780598 4.27686787 -6.11880112 2.64309311 3.26645899 -5.34335995
		 1.81619596 2.11331892 -4.16143799 5.2594099 2.28486204 -2.21859002 3.93946099 1.30890799 -1.19871497
		 3.030117989 0.75554299 -3.083724022 4.11725903 1.40559006 -3.86324501 5.2594099 -1.12175703 -2.82114196
		 3.77724791 -1.12175798 -1.80501795 2.52751589 -1.12175798 -3.15686893 4.11725903 -1.12175798 -4.46579695
		 5.78316689 8.34928513 0.21295001 5.70602703 7.25886822 0.274946 6.45221519 6.77020693 -1.73680794
		 6.61566591 8.68036175 -1.64124596 9.86488342 9.2175312 3.2443471 9.56010628 6.87472916 3.27524209
		 10.24601746 6.99163008 0.72103101 10.42694283 8.47127914 0.77998;
	setAttr -s 248 ".ed";
	setAttr ".ed[0:165]"  0 1 1 3 4 1 0 2 1 1 2 1 2 3 1 2 4 1 3 0 1 4 1 1 3 5 1
		 4 6 1 5 6 0 1 7 1 6 7 0 0 8 1 8 7 0 5 8 0 10 11 1 12 13 1 9 10 1 9 11 1 10 12 1 11 13 1
		 12 9 1 13 9 1 10 14 1 11 15 1 14 15 0 13 16 1 15 16 0 12 17 1 17 16 0 14 17 0 18 19 1
		 21 22 1 18 20 1 19 20 1 20 21 1 20 22 1 21 18 1 22 19 1 21 23 1 22 24 1 23 24 0 19 25 1
		 24 25 0 18 26 1 26 25 0 23 26 0 28 29 1 30 31 1 27 28 1 27 29 1 28 30 1 29 31 1 30 27 1
		 31 27 1 28 32 1 29 33 1 32 33 0 31 34 1 33 34 0 30 35 1 35 34 0 32 35 0 36 37 1 37 38 1
		 38 39 1 39 36 0 38 40 1 40 41 1 41 39 0 40 42 1 42 43 1 43 41 1 43 45 1 45 44 1 44 41 0
		 45 47 1 47 46 1 46 44 0 87 90 0 90 89 0 89 88 0 88 87 0 43 49 1 49 50 1 50 45 1 48 51 1
		 51 52 1 52 49 1 49 48 1 52 53 1 53 50 1 51 54 1 54 55 1 55 52 1 79 82 0 82 81 0 81 80 0
		 80 79 0 54 57 1 57 55 1 57 56 1 56 55 1 57 58 1 58 56 1 53 56 1 58 59 1 59 53 1 59 60 1
		 60 50 1 60 61 1 61 45 1 62 47 1 61 62 1 62 63 1 63 46 0 63 64 1 64 44 1 64 65 1 65 41 1
		 65 66 1 66 39 1 67 36 0 66 67 1 68 37 1 67 68 1 69 38 1 68 69 1 70 40 1 69 70 1 71 42 1
		 70 71 1 72 48 1 48 42 1 71 72 1 73 51 1 72 73 1 74 54 1 73 74 1 74 57 1 52 75 1 75 76 1
		 76 53 1 76 77 1 77 56 1 77 78 1 78 55 1 78 75 1 75 79 1 80 76 1 81 77 1 82 78 1 42 83 1
		 83 84 1 84 43 1 84 85 1 85 49 1 85 86 1 86 48 1 86 83 1 83 87 1 88 84 1 89 85 1 90 86 1
		 91 94 0;
	setAttr ".ed[166:247]" 94 93 1 93 92 1 92 91 1 94 96 0 96 95 1 95 93 1 96 98 1
		 98 97 1 97 95 1 96 99 0 99 100 1 100 98 1 99 101 0 101 102 1 102 100 1 124 125 0
		 125 126 0 126 127 0 127 124 0 100 105 1 105 104 1 104 98 1 103 104 1 104 107 1 107 106 1
		 106 103 1 105 108 1 108 107 1 107 110 1 110 109 1 109 106 1 116 117 0 117 118 0 118 119 0
		 119 116 0 110 57 1 57 109 1 110 111 1 111 57 1 111 58 1 108 59 1 111 108 1 105 60 1
		 100 61 1 102 62 1 101 63 0 99 64 1 96 65 1 94 66 1 91 67 0 92 68 1 93 69 1 95 70 1
		 97 71 1 97 103 1 103 72 1 106 73 1 109 74 1 108 113 1 113 112 1 112 107 1 111 114 1
		 114 113 1 110 115 1 115 114 1 112 115 1 113 117 1 116 112 1 114 118 1 115 119 1 98 121 1
		 121 120 1 120 97 1 104 122 1 122 121 1 103 123 1 123 122 1 120 123 1 121 125 1 124 120 1
		 122 126 1 123 127 1;
	setAttr -s 126 -ch 480 ".fc[0:125]" -type "polyFaces" 
		f 3 2 -4 -1
		mu 0 3 0 1 2
		f 3 4 1 -6
		mu 0 3 1 199 4
		f 3 3 5 7
		mu 0 3 2 1 4
		f 3 -5 -3 -7
		mu 0 3 3 1 0
		f 4 8 10 -10 -2
		mu 0 4 199 200 6 4
		f 4 9 12 -12 -8
		mu 0 4 4 6 7 2
		f 4 11 -15 -14 0
		mu 0 4 2 7 8 0
		f 4 13 -16 -9 6
		mu 0 4 0 8 5 3
		f 3 18 16 -20
		mu 0 3 13 14 15
		f 3 22 -24 -18
		mu 0 3 16 13 17
		f 3 19 21 23
		mu 0 3 13 15 17
		f 3 -23 -21 -19
		mu 0 3 13 130 14
		f 4 24 26 -26 -17
		mu 0 4 14 18 19 15
		f 4 25 28 -28 -22
		mu 0 4 15 19 20 17
		f 4 27 -31 -30 17
		mu 0 4 17 20 21 16
		f 4 29 -32 -25 20
		mu 0 4 130 131 18 14
		f 3 32 35 -35
		mu 0 3 25 26 27
		f 3 37 -34 -37
		mu 0 3 27 28 29
		f 3 -40 -38 -36
		mu 0 3 26 28 27
		f 3 38 34 36
		mu 0 3 197 25 27
		f 4 33 41 -43 -41
		mu 0 4 29 28 30 31
		f 4 39 43 -45 -42
		mu 0 4 28 26 32 30
		f 4 -33 45 46 -44
		mu 0 4 26 25 33 32
		f 4 -39 40 47 -46
		mu 0 4 25 197 198 33
		f 3 51 -49 -51
		mu 0 3 38 39 40
		f 3 49 55 -55
		mu 0 3 128 42 38
		f 3 -56 -54 -52
		mu 0 3 38 42 39
		f 3 50 52 54
		mu 0 3 38 40 41
		f 4 48 57 -59 -57
		mu 0 4 40 39 43 44
		f 4 53 59 -61 -58
		mu 0 4 39 42 45 43
		f 4 -50 61 62 -60
		mu 0 4 42 128 129 45
		f 4 -53 56 63 -62
		mu 0 4 41 40 44 46
		f 4 64 65 66 67
		mu 0 4 149 51 52 153
		f 4 68 69 70 -67
		mu 0 4 52 54 152 153
		f 4 71 72 73 -70
		mu 0 4 54 137 138 152
		f 4 74 75 76 -74
		mu 0 4 138 141 151 152
		f 4 77 78 79 -76
		mu 0 4 141 60 61 151
		f 4 80 81 82 83
		mu 0 4 192 193 189 65
		f 4 84 85 86 -75
		mu 0 4 171 170 67 58
		f 4 87 88 89 90
		mu 0 4 164 69 169 175
		f 4 -90 91 92 -86
		mu 0 4 170 174 166 67
		f 4 93 94 95 -89
		mu 0 4 69 72 178 169
		f 4 96 97 98 99
		mu 0 4 74 75 188 187
		f 3 100 101 -95
		mu 0 3 72 177 178
		f 3 -102 102 103
		mu 0 3 168 78 167
		f 3 -103 104 105
		mu 0 3 167 78 80
		f 4 106 -106 107 108
		mu 0 4 166 167 80 81
		f 4 -93 -109 109 110
		mu 0 4 67 166 81 82
		f 4 -87 -111 111 112
		mu 0 4 58 67 82 83
		f 4 113 -78 -113 114
		mu 0 4 202 60 141 140
		f 4 -79 -114 115 116
		mu 0 4 61 60 202 155
		f 4 -80 -117 117 118
		mu 0 4 59 150 145 86
		f 4 -77 -119 119 120
		mu 0 4 55 59 86 87
		f 4 -71 -121 121 122
		mu 0 4 53 55 87 88
		f 4 123 -68 -123 124
		mu 0 4 89 50 53 88
		f 4 125 -65 -124 126
		mu 0 4 90 51 149 143
		f 4 127 -66 -126 128
		mu 0 4 91 52 51 90
		f 4 129 -69 -128 130
		mu 0 4 92 54 52 91
		f 4 131 -72 -130 132
		mu 0 4 93 137 54 92
		f 4 133 134 -132 135
		mu 0 4 94 164 165 135
		f 4 136 -88 -134 137
		mu 0 4 95 69 164 94
		f 4 138 -94 -137 139
		mu 0 4 96 72 69 95
		f 3 -101 -139 140
		mu 0 3 177 72 96
		f 4 141 142 143 -92
		mu 0 4 70 97 98 71
		f 4 -144 144 145 -107
		mu 0 4 71 98 99 79
		f 4 -146 146 147 -104
		mu 0 4 79 99 100 73
		f 4 -148 148 -142 -96
		mu 0 4 186 185 97 70
		f 4 149 -100 150 -143
		mu 0 4 97 74 77 98
		f 4 -151 -99 151 -145
		mu 0 4 98 77 76 99
		f 4 -152 -98 152 -147
		mu 0 4 99 76 184 100
		f 4 -153 -97 -150 -149
		mu 0 4 185 75 74 97
		f 4 153 154 155 -73
		mu 0 4 56 101 102 57
		f 4 -156 156 157 -85
		mu 0 4 57 102 103 66
		f 4 -158 158 159 -91
		mu 0 4 191 190 104 68
		f 4 -160 160 -154 -135
		mu 0 4 68 104 101 56
		f 4 161 -84 162 -155
		mu 0 4 101 62 65 102
		f 4 -163 -83 163 -157
		mu 0 4 102 65 189 103
		f 4 -164 -82 164 -159
		mu 0 4 190 64 63 104
		f 4 -165 -81 -162 -161
		mu 0 4 104 63 62 101
		f 4 165 166 167 168
		mu 0 4 105 148 107 108
		f 4 -167 169 170 171
		mu 0 4 107 148 147 110
		f 4 -171 172 173 174
		mu 0 4 110 147 136 134
		f 4 -173 175 176 177
		mu 0 4 136 147 146 114
		f 4 -177 178 179 180
		mu 0 4 114 146 144 116
		f 4 181 182 183 184
		mu 0 4 132 118 119 133
		f 4 -178 185 186 187
		mu 0 4 163 139 121 172
		f 4 188 189 190 191
		mu 0 4 157 162 173 125
		f 4 -187 192 193 -190
		mu 0 4 172 121 159 161
		f 4 -191 194 195 196
		mu 0 4 125 173 160 12
		f 4 197 198 199 200
		mu 0 4 11 183 182 180
		f 3 -196 201 202
		mu 0 3 12 160 177
		f 3 203 204 -202
		mu 0 3 176 158 78
		f 3 205 -105 -205
		mu 0 3 158 80 78
		f 4 206 -108 -206 207
		mu 0 4 159 81 80 158
		f 4 208 -110 -207 -193
		mu 0 4 121 82 81 159
		f 4 209 -112 -209 -186
		mu 0 4 139 83 82 121
		f 4 -115 -210 -181 210
		mu 0 4 84 201 114 116
		f 4 211 -116 -211 -180
		mu 0 4 144 85 84 116
		f 4 212 -118 -212 -179
		mu 0 4 113 86 145 115
		f 4 213 -120 -213 -176
		mu 0 4 109 87 86 113
		f 4 214 -122 -214 -170
		mu 0 4 106 88 87 109
		f 4 -125 -215 -166 215
		mu 0 4 89 88 106 142
		f 4 -127 -216 -169 216
		mu 0 4 90 154 105 108
		f 4 -129 -217 -168 217
		mu 0 4 91 90 108 107
		f 4 -131 -218 -172 218
		mu 0 4 92 91 107 110
		f 4 -133 -219 -175 219
		mu 0 4 93 92 110 134
		f 4 -136 -220 220 221
		mu 0 4 94 135 156 157
		f 4 -138 -222 -192 222
		mu 0 4 95 94 157 125
		f 4 -140 -223 -197 223
		mu 0 4 96 95 125 12
		f 3 -141 -224 -203
		mu 0 3 177 96 12
		f 4 -194 224 225 226
		mu 0 4 124 126 35 34
		f 4 -208 227 228 -225
		mu 0 4 126 36 24 35
		f 4 -204 229 230 -228
		mu 0 4 36 181 179 24
		f 4 -195 -227 231 -230
		mu 0 4 127 124 34 23
		f 4 -226 232 -198 233
		mu 0 4 34 35 10 11
		f 4 -229 234 -199 -233
		mu 0 4 35 24 9 10
		f 4 -231 235 -200 -235
		mu 0 4 24 179 37 9
		f 4 -232 -234 -201 -236
		mu 0 4 23 34 11 180
		f 4 -174 236 237 238
		mu 0 4 112 111 22 49
		f 4 -188 239 240 -237
		mu 0 4 111 196 194 22
		f 4 -189 241 242 -240
		mu 0 4 122 123 47 48
		f 4 -221 -239 243 -242
		mu 0 4 123 112 49 47
		f 4 -238 244 -182 245
		mu 0 4 49 22 118 117
		f 4 -241 246 -183 -245
		mu 0 4 22 194 119 118
		f 4 -243 247 -184 -247
		mu 0 4 48 47 120 195
		f 4 -244 -246 -185 -248
		mu 0 4 47 49 117 120;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode ikHandle -n "ikHandle1";
	setAttr ".pv" -type "double3" 0.47581000779691385 -0.17240463514875556 -1.9349112326563183 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle1_pointConstraint1" -p "ikHandle1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ArmL_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 9.968175264257388 9.03063095462044 2.7688749459885402 ;
	setAttr -k on ".w0";
createNode ikHandle -n "ikHandle2";
	setAttr ".pv" -type "double3" -1.0599911109350582 -0.16635483253100897 -1.6878225364155708 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle2_pointConstraint1" -p "ikHandle2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ArmL_CTRL1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -9.96818 9.0306267173104935 2.7688740136185692 ;
	setAttr -k on ".w0";
createNode ikHandle -n "ikHandle3";
	setAttr ".pv" -type "double3" 1.432126778435358 0.57142244641248985 1.2737697116136499 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle3_pointConstraint1" -p "ikHandle3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegL_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 3.7476194841332986 0.066028890955573072 -2.3381819883810078 ;
	setAttr -k on ".w0";
createNode ikHandle -n "ikHandle4";
	setAttr ".pv" -type "double3" -1.4321264737710655 0.5714224368339601 1.2737700584512066 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "ikHandle4_pointConstraint1" -p "ikHandle4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegR_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -3.7476200000000004 0.066026717310494476 -2.3381859863814314 ;
	setAttr -k on ".w0";
createNode transform -n "Main";
createNode nurbsCurve -n "MainShape" -p "Main";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode joint -n "Pelvis" -p "Main";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 5.5645362469280713 -3.3435060646055246 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90 -46.2188752351313 89.999999999999986 ;
	setAttr ".bps" -type "matrix" 0 0.6919053632356148 0.72198820511542439 0 -5.5511151231257839e-017 0.72198820511542428 -0.6919053632356148 0
		 -1.0000000000000002 5.5511151231257839e-017 0 0 0 4.3529495296175771 -4.1838000782240936 1;
	setAttr ".radi" 0.5275;
createNode joint -n "Waist" -p "Pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.0195402708691966e-019 -2.546625849368382e-017 -0.45876423102170849 ;
	setAttr ".bps" -type "matrix" 4.4447005887872593e-019 0.68610232488303691 0.72750505138458788 0
		 -5.5509371797799505e-017 0.72750505138458776 -0.68610232488303691 0 -1.0000000000000002 5.5511151231257839e-017 0 0
		 0 5.2967231773730949 -3.1989927936096398 1;
	setAttr ".radi" 0.5275;
createNode joint -n "Torso" -p "Waist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.6339493776663974e-016 -1.6649298889417731e-015 -31.106641399716114 ;
	setAttr ".bps" -type "matrix" 2.9058508376897574e-017 0.21159294318114924 0.97735788040816396 0
		 -4.7297896379536288e-017 0.97735788040816396 -0.21159294318114918 0 -1.0000000000000002 5.5511151231257839e-017 0 0
		 -4.8148248609680896e-032 7.6766741151913589 -0.67542412678510022 1;
	setAttr ".radi" 0.5275;
createNode joint -n "Head" -p "Torso";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.0919847799508782e-017 -1.72997448294005e-015 -1.3856395907236685 ;
	setAttr ".bps" -type "matrix" 3.0193750702795127e-017 0.18789697684543308 0.98218874260110867 0
		 -4.6581383937330985e-017 0.98218874260110867 -0.18789697684543302 0 -1.0000000000000002 5.5511151231257839e-017 0 0
		 2.2302268756004191e-031 8.1075273022101815 1.3147072608732757 1;
	setAttr ".radi" 0.5275;
createNode joint -n "Snout" -p "Head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.2463298859799643e-016 -2.6233556636732382e-015 -22.618262842514863 ;
	setAttr ".bps" -type "matrix" 4.5786193781939088e-017 -0.20429416555366886 0.97890954327799373 0
		 -3.1386499804570451e-017 0.97890954327799373 0.20429416555366892 0 -1.0000000000000002 5.5511151231257839e-017 0 0
		 2.4767459084819853e-031 8.5588973076584729 3.6741413802620713 1;
	setAttr ".radi" 0.5275;
createNode joint -n "Nose" -p "Snout";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.4102677674261423 -1.6653345369377348e-016 1.1035698706573488e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -11.788183299107633 90 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -6.4607260946027948e-017 1.1151594247718082e-016 0
		 -2.6200608633532247e-017 1 4.4408920985006262e-016 0 -7.2613839206225068e-017 -4.163336342344337e-016 1.0000000000000002 0
		 3.9558601057713824e-031 8.0664936653512438 6.0335754996508655 1;
	setAttr ".radi" 0.5275;
createNode joint -n "Jaw" -p "Head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.1818920485984017e-015 6.8310065713142182e-015 -42.093811237784664 ;
	setAttr ".bps" -type "matrix" 5.3630886278861607e-017 -0.51897813424176453 0.8547875152217288 0
		 -1.4325360308327083e-017 0.8547875152217288 0.51897813424176453 0 -1.0000000000000002 5.5511151231257839e-017 0 0
		 -4.8148248609680896e-032 6.0353286408339377 2.5662331850708098 1;
	setAttr ".radi" 0.5275;
createNode joint -n "Chin" -p "Jaw";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 2.6882513176439282 4.4408920985006262e-016 2.9845585088272049e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -31.263731694377462 89.999999999999972 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 -3.3343397982420733e-016 3.5079283852890527e-016 0
		 2.374773597149425e-016 1.0000000000000002 -1.6653345369377348e-016 0 -2.9465844413125645e-016 1.1102230246251568e-016 1.0000000000000004 0
		 -1.542825501771592e-016 4.6401849876301267 4.8641168491712019 1;
	setAttr ".radi" 0.5275;
createNode pointConstraint -n "Head_pointConstraint1" -p "Head";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.0362360886958393 -1.7763568394002505e-015 7.4279400173397155e-017 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Head_orientConstraint1" -p "Head";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 22.350079803404395 89.999999999999972 0 ;
	setAttr ".o" -type "double3" -89.999999999999929 -79.169920456592791 89.999999999999901 ;
	setAttr ".rsrr" -type "double3" -4.3732626870123355e-014 -8.7465253740246735e-015 
		-6.3611093629270304e-015 ;
	setAttr -k on ".w0";
createNode joint -n "Shoulder_L" -p "Torso";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.082059647406666492 0.095854185165289429 -2.7012307809440181 ;
	setAttr ".r" -type "double3" 19.122395972850544 27.822483872153388 -71.448232683807603 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000085 91.41792283145088 77.784280865869135 ;
	setAttr ".bps" -type "matrix" 0.99969379818133208 -0.024744895994583158 -1.8561541192951836e-016 0
		 0.024744895994583037 0.99969379818133175 1.6375789613221059e-015 0 3.840846325629066e-017 -1.5543122344752192e-015 1 0
		 2.7012307809440186 7.7877212007439418 -0.61550455288403383 1;
	setAttr ".radi" 0.5275;
createNode joint -n "ForeArm_L" -p "Shoulder_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 3.164595698124709 -1.0963452368173421e-014 0 ;
	setAttr ".r" -type "double3" -1.6838230931933786 -32.692995439026433 2.716782460930931 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 2.948362013465605 ;
	setAttr ".bps" -type "matrix" 0.9996432770349839 0.026708026485666374 -1.0113933614476938e-016 0
		 -0.026708026485666517 0.99964327703498357 1.6449585923039969e-015 0 3.840846325629066e-017 -1.5543122344752192e-015 1 0
		 5.8648574741106128 7.7094136093289301 -0.61550455288403438 1;
	setAttr ".radi" 0.5275;
createNode joint -n "Hand_L" -p "ForeArm_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 4.104782060174025 3.8857805861880479e-015 2.5440854852540058 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.5304391820147099 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 1.457167719820518e-016 -1.4503685507197943e-016 0
		 -2.7755575615628914e-016 0.99999999999999989 1.6416705657291238e-015 0 3.840846325629066e-017 -1.5543122344752192e-015 1 0
		 9.968175264257388 7.8190442373099458 1.928580932369971 1;
	setAttr ".radi" 0.5275;
createNode orientConstraint -n "Hand_L_orientConstraint1" -p "Hand_L";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ArmL_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -5.2756083705237389 18.025174792492951 -9.1724351309087506 ;
	setAttr ".rsrr" -type "double3" 0 0 1.1927080055488188e-015 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "ForeArm_L";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "Shoulder_R" -p "Torso";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.08205895634540894 0.095853106215319173 2.7012299999999994 ;
	setAttr ".r" -type "double3" 38.235710555922864 21.87003405003998 -63.576380108279977 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999488 88.58207716854912 77.784280865869178 ;
	setAttr ".bps" -type "matrix" 0.99969379818133197 0.024744895994583082 -4.9439619065339002e-017 0
		 0.024744895994583176 -0.99969379818133175 -8.021361352916756e-015 0 -2.6045306818132226e-016 7.9658502016854982e-015 -1 0
		 -2.7012299999999998 7.7877200000000002 -0.61550499999999997 1;
	setAttr ".radi" 0.5275;
createNode joint -n "ForeArm_R" -p "Shoulder_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -3.1645990635457415 2.3260202377528572e-006 1.1102230246251565e-016 ;
	setAttr ".r" -type "double3" -1.6503839742608506 -32.043285263225819 2.6628230351786915 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.1584707660920509e-018 -4.5015393519992171e-017 
		2.9483620134656054 ;
	setAttr ".bps" -type "matrix" 0.99964327703498379 -0.026708026485666458 -4.6196025537233808e-016 0
		 -0.026708026485666378 -0.99964327703498357 -8.0082004815349239e-015 0 -2.6045306818132226e-016 7.9658502016854982e-015 -1 0
		 -5.8648600000000002 7.7094100000000001 -0.61550499999999997 1;
	setAttr ".radi" 0.5275;
createNode joint -n "Hand_R" -p "ForeArm_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -4.1047842524668123 6.8677779996306754e-007 -2.5440849999999982 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.5377364623913105e-007 9.3311719643028368e-016 -1.5304391820147578 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 6.0368376963992887e-016 -2.4791223297695542e-016 0
		 6.9041994343876922e-016 -1 -8.0176818192505153e-015 0 -2.6045306818132226e-016 7.9658502016854982e-015 -1 0
		 -9.9681800000000003 7.8190399999999993 1.92858 1;
	setAttr ".radi" 0.5275;
createNode orientConstraint -n "Hand_R_orientConstraint1" -p "Hand_R";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ArmL_CTRL1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -38.616241822973372 -191.95885304060664 156.1399355364934 ;
	setAttr ".o" -type "double3" -179.99999999999957 0 0 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector2" -p "ForeArm_R";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "Torso_pointConstraint1" -p "Torso";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Torso_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 3.4687988241753969 -2.9309887850104133e-014 3.8201813281060115e-016 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Torso_orientConstraint1" -p "Torso";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Torso_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 12.215719134130893 89.999999999999986 0 ;
	setAttr ".o" -type "double3" -89.999999999999943 -77.784280865869107 89.999999999999943 ;
	setAttr ".rsrr" -type "double3" 1.5902773407317584e-015 -9.9392333795734985e-017 
		7.1562480332929135e-015 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Waist_pointConstraint1" -p "Waist";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Waist_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.3640212923658672 0 1.5143678448635466e-016 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Waist_orientConstraint1" -p "Waist";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Waist_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 43.322360533846997 89.999999999999986 0 ;
	setAttr ".o" -type "double3" -89.999999999999986 -46.677639466153018 89.999999999999972 ;
	setAttr ".rsrr" -type "double3" 0 0 -9.5416640443905487e-015 ;
	setAttr -k on ".w0";
createNode joint -n "Thigh_L" -p "Pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.34378274201257319 -0.89247727998237192 -2.4714031507055334 ;
	setAttr ".r" -type "double3" -1.4225782076548185e-006 6.4333405085559317e-007 4.2759266802770811e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.6542446963820185e-014 7.6524141546920138e-015 -101.60246855826757 ;
	setAttr ".bps" -type "matrix" 5.4376868860705928e-017 -0.8463916141973058 0.53256101567471037 0
		 1.1164409698912405e-017 0.53256101567471037 0.84639161419730602 0 -1.0000000000000002 5.5511151231257839e-017 0 0
		 2.4714031507055338 3.4707263371504631 -3.814497346493674 1;
	setAttr ".radi" 0.5275;
createNode joint -n "Shin_L" -p "Thigh_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.157390042143029 -1.1102230246251565e-015 -1.5598200213469391 ;
	setAttr ".r" -type "double3" 4.9152410471220662e-015 5.7872830251957104e-014 4.9169787976659538e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -1.0763119128209197e-014 -42.594684514171817 ;
	setAttr ".bps" -type "matrix" 3.2473911038810527e-017 -0.98352093268525409 -0.18079428909655376 0
		 -1.6748615271231273e-016 0.18079428909655348 -0.98352093268525453 0 1.0000000000000002 -3.3370236486636283e-017 -1.2044657621074161e-016 0
		 4.0312231720524734 1.6447294969278305 -2.6655555144434775 1;
	setAttr ".radi" 0.5275;
createNode joint -n "Foot_L" -p "Shin_L";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 2.8370390641198142 -1.3322676295501878e-015 -0.28360364024489604 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 79.583971692429287 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 -2.5175575342023183e-016 -1.605909727058878e-016 0
		 3.2635874743283655e-016 1.0000000000000002 -3.8857805861880484e-016 0 1.5885503946703222e-016 7.2164496600635175e-016 1.0000000000000009 0
		 3.747619531807576 -1.1455578094797885 -3.1784759751801701 1;
	setAttr ".radi" 0.5275;
createNode orientConstraint -n "Foot_L_orientConstraint1" -p "Foot_L";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegL_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 2.5484714966947532e-014 2.571940117475271e-007 -1.399135437900986e-006 ;
	setAttr ".o" -type "double3" 0 0 1.3991354379009868e-006 ;
	setAttr ".rsrr" -type "double3" 0 0 7.5830332790935439e-022 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector3" -p "Shin_L";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "Thigh_R" -p "Pelvis";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.34378212346760373 -0.89247279947295066 2.4714 ;
	setAttr ".r" -type "double3" 3.6150199237333361e-007 -1.6348262877768989e-007 -1.0865897454623021e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.0817622499218282e-015 6.2311301777095959e-015 78.39753144173244 ;
	setAttr ".bps" -type "matrix" -5.4376868860705928e-017 0.8463916141973058 -0.53256101567471037 0
		 -1.1164409698912405e-017 -0.53256101567471037 -0.84639161419730602 0 -1.0000000000000002 5.5511151231257839e-017 0 0
		 -2.4714000000000005 3.4707300000000001 -3.8145000000000002 1;
	setAttr ".radi" 0.5275;
createNode joint -n "Shin_R" -p "Thigh_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -2.1573917408735834 3.2334061688121807e-006 1.5598199999999993 ;
	setAttr ".r" -type "double3" 1.4043421649323223e-015 1.6535112811817412e-014 1.4048524822118702e-014 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 3.7212360936142763e-015 -42.594684514171838 ;
	setAttr ".bps" -type "matrix" -3.2473911038810521e-017 0.98352093268525409 0.18079428909655404 0
		 1.6748615271231276e-016 -0.18079428909655393 0.98352093268525409 0 1.0000000000000002 -3.3370236486636252e-017 -1.2044657621074159e-016 0
		 -4.0312200000000002 1.6447299999999989 -2.6655599999999997 1;
	setAttr ".radi" 0.5275;
createNode joint -n "Foot_R" -p "Shin_R";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -2.8370416300257402 9.4013030249584517e-007 0.28359999999999985 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 79.583971692429287 -89.999999999999986 0 ;
	setAttr ".bps" -type "matrix" 1.0000000000000004 1.850152804469593e-016 -8.0302179715595375e-017 0
		 4.5079736980477322e-016 -1.0000000000000004 2.7755575615628867e-017 0 -1.5885503946703225e-016 -2.7755575615628914e-016 -1.0000000000000004 0
		 -3.7476200000000004 -1.1455599999999999 -3.1784800000000004 1;
	setAttr ".radi" 0.5275;
createNode orientConstraint -n "Foot_R_orientConstraint1" -p "Foot_R";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegR_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 180.00000000000003 6.3611093629270327e-015 3.1805546814635183e-015 ;
	setAttr ".o" -type "double3" 180 0 0 ;
	setAttr ".rsrr" -type "double3" 360 0 0 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector4" -p "Shin_R";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "LegR_CTRL" -p "Main";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".rp" -type "double3" -3.7476200000000004 0.066026717310494476 -2.3381859863814314 ;
	setAttr ".sp" -type "double3" -3.7476200000000004 0.066026717310494476 -2.3381859863814314 ;
createNode nurbsCurve -n "LegR_CTRLShape" -p "LegR_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.7184909718856396 0.066026717310494601 -4.3673150144957891
		-3.7476200000000008 0.066026717310494656 -5.2078077777456953
		-5.7767490281143594 0.066026717310494601 -4.3673150144957908
		-6.6172417913642647 0.066026717310494476 -2.3381859863814323
		-5.7767490281143594 0.066026717310494351 -0.30905695826707325
		-3.7476200000000013 0.066026717310494296 0.53143580498283338
		-1.7184909718856427 0.066026717310494351 -0.30905695826707236
		-0.87799820863573652 0.066026717310494476 -2.33818598638143
		-1.7184909718856396 0.066026717310494601 -4.3673150144957891
		-3.7476200000000008 0.066026717310494656 -5.2078077777456953
		-5.7767490281143594 0.066026717310494601 -4.3673150144957908
		;
createNode transform -n "LegL_CTRL" -p "Main";
	setAttr ".t" -type "double3" 0 0 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".rp" -type "double3" 3.7476194841332986 0.066028890955573072 -2.3381819883810078 ;
	setAttr ".sp" -type "double3" 3.7476194841332986 0.066028890955573072 -2.3381819883810078 ;
createNode nurbsCurve -n "LegL_CTRLShape" -p "LegL_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.776748512247659 0.066028890955573197 -4.3673110164953659
		3.7476194841332982 0.066028890955573252 -5.2078037797452712
		1.7184904560189396 0.066028890955573197 -4.3673110164953668
		0.87799769276903472 0.066028890955573072 -2.3381819883810087
		1.7184904560189391 0.066028890955572947 -0.30905296026664963
		3.7476194841332977 0.066028890955572891 0.53143980298325699
		5.7767485122476563 0.066028890955572947 -0.30905296026664875
		6.6172412754975625 0.066028890955573072 -2.3381819883810064
		5.776748512247659 0.066028890955573197 -4.3673110164953659
		3.7476194841332982 0.066028890955573252 -5.2078037797452712
		1.7184904560189396 0.066028890955573197 -4.3673110164953668
		;
createNode transform -n "Waist_CTRL" -p "Main";
	setAttr ".rp" -type "double3" 0 6.5083098946835891 -2.3586987799910708 ;
	setAttr ".sp" -type "double3" 0 6.5083098946835891 -2.3586987799910708 ;
createNode nurbsCurve -n "Waist_CTRLShape" -p "Waist_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5767217172009458 9.2672781079396458 -5.6895493202026035
		-4.1574079868956416e-016 10.410080160026572 -7.0692327881959756
		-2.5767217172009431 9.2672781079396458 -5.6895493202026062
		-3.6440347989268655 6.50830989468359 -2.3586987799910721
		-2.576721717200944 3.7493416814275324 0.97215176022046323
		-1.098018802331058e-015 2.6065396293406056 2.3518352282138344
		2.5767217172009418 3.7493416814275311 0.97215176022046501
		3.6440347989268655 6.5083098946835873 -2.3586987799910681
		2.5767217172009458 9.2672781079396458 -5.6895493202026035
		-4.1574079868956416e-016 10.410080160026572 -7.0692327881959756
		-2.5767217172009431 9.2672781079396458 -5.6895493202026062
		;
createNode transform -n "Torso_CTRL" -p "Main";
	setAttr ".rp" -type "double3" -4.8148248609680896e-032 8.8882608325018531 0.16486988683346882 ;
	setAttr ".sp" -type "double3" -4.8148248609680896e-032 8.8882608325018531 0.16486988683346882 ;
createNode nurbsCurve -n "Torso_CTRLShape" -p "Torso_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5767217172009458 12.598513902353533 -2.0578521112222843
		-4.1574079868956421e-016 14.135351043722514 -2.9785337082020038
		-2.5767217172009431 12.598513902353535 -2.0578521112222856
		-3.6440347989268655 8.8882608325018548 0.1648698868334679
		-2.576721717200944 5.1780077626501715 2.3875918848892228
		-1.098018802331058e-015 3.6411706212811916 3.3082734818689423
		2.5767217172009418 5.1780077626501697 2.3875918848892237
		3.6440347989268655 8.8882608325018495 0.16486988683347051
		2.5767217172009458 12.598513902353533 -2.0578521112222843
		-4.1574079868956421e-016 14.135351043722514 -2.9785337082020038
		-2.5767217172009431 12.598513902353535 -2.0578521112222856
		;
createNode transform -n "Head_CTRL" -p "Main";
	addAttr -ci true -sn "Mouth" -ln "Mouth" -min 0 -max 30 -at "double";
	setAttr ".rp" -type "double3" 2.2302268756004191e-031 9.3191140195206756 2.1550012744918448 ;
	setAttr ".sp" -type "double3" 2.2302268756004191e-031 9.3191140195206756 2.1550012744918448 ;
	setAttr -k on ".Mouth";
createNode nurbsCurve -n "Head_CTRLShape" -p "Head_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.5767217172009458 12.436219867068845 1.217675276225046
		-4.1574079868956392e-016 13.72736738447578 0.82942213537803688
		-2.5767217172009431 12.436219867068846 1.2176752762250453
		-3.6440347989268655 9.3191140195206774 2.1550012744918443
		-2.576721717200944 6.2020081719725049 3.0923272727586437
		-1.0980188023310578e-015 4.9108606545655693 3.4805804136056526
		2.5767217172009418 6.202008171972504 3.0923272727586442
		3.6440347989268655 9.3191140195206739 2.1550012744918456
		2.5767217172009458 12.436219867068845 1.217675276225046
		-4.1574079868956392e-016 13.72736738447578 0.82942213537803688
		-2.5767217172009431 12.436219867068846 1.2176752762250453
		;
createNode transform -n "ArmL_CTRL1" -p "Main";
	setAttr ".rp" -type "double3" -9.96818 9.0306267173104935 2.7688740136185692 ;
	setAttr ".sp" -type "double3" -9.96818 9.0306267173104935 2.7688740136185692 ;
createNode nurbsCurve -n "ArmL_CTRL1Shape" -p "ArmL_CTRL1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-10.58654619158024 7.6248990260196159 0.3447696147691266
		-10.166263511851589 6.2676457906374736 2.0195886563305141
		-9.62994619736277 6.5289093095222057 4.133328898103672
		-9.2917616572058144 8.2556449566644527 5.4477899737916724
		-9.3498138084197606 10.436354408601371 5.192978412468011
		-9.7700964881484111 11.793607643983513 3.5181593709066257
		-10.306413802637231 11.532344125098781 1.4044191291334673
		-10.644598342794186 9.8056084779565342 0.089958053445466479
		-10.58654619158024 7.6248990260196159 0.3447696147691266
		-10.166263511851589 6.2676457906374736 2.0195886563305141
		-9.62994619736277 6.5289093095222057 4.133328898103672
		;
createNode transform -n "ArmL_CTRL" -p "Main";
	setAttr ".rp" -type "double3" 9.968175264257388 9.03063095462044 2.7688749459885402 ;
	setAttr ".sp" -type "double3" 9.968175264257388 9.03063095462044 2.7688749459885402 ;
createNode nurbsCurve -n "ArmL_CTRLShape" -p "ArmL_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.6291939845431 7.6249032633295588 0.3560522971304656
		10.166455433988155 6.2676500279474192 2.019641605429487
		9.5875670491545648 6.5289135468321557 4.1221216432459
		9.2316337947775935 8.2556491939744046 5.431888119045551
		9.3071565439716775 10.436358645911323 5.1816975948466144
		9.7698950945266212 11.793611881293462 3.5181082865475948
		10.348783479360209 11.532348362408724 1.4156282487311813
		10.704716733737182 9.8056127152664754 0.10586177293153032
		10.6291939845431 7.6249032633295588 0.3560522971304656
		10.166455433988155 6.2676500279474192 2.019641605429487
		9.5875670491545648 6.5289135468321557 4.1221216432459
		;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 3 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode displayLayer -n "Skeleton";
	setAttr ".do" 1;
createNode ikRPsolver -n "ikRPsolver";
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/user/Desktop/EnemyMaps_vcols.tga";
createNode place2dTexture -n "place2dTexture1";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/user/Desktop/EnemyMaps_occlusion.tga";
createNode place2dTexture -n "place2dTexture2";
createNode file -n "file3";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/user/Desktop/EnemyMaps_normals.tga";
createNode place2dTexture -n "place2dTexture3";
createNode bump2d -n "bump2d1";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 0.0010800002 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file4";
	setAttr ".ftn" -type "string" "C:/Users/user/Desktop/EnemyMaps_occlusion.tga";
createNode place2dTexture -n "place2dTexture4";
createNode skinCluster -n "skinCluster1";
	setAttr -s 128 ".wl";
	setAttr ".wl[0].w[6]"  1;
	setAttr ".wl[1].w[6]"  1;
	setAttr ".wl[2].w[6]"  1;
	setAttr ".wl[3].w[6]"  1;
	setAttr ".wl[4].w[6]"  1;
	setAttr ".wl[5].w[6]"  1;
	setAttr ".wl[6].w[6]"  1;
	setAttr ".wl[7].w[6]"  1;
	setAttr ".wl[8].w[6]"  1;
	setAttr ".wl[9].w[4]"  1;
	setAttr ".wl[10].w[4]"  1;
	setAttr ".wl[11].w[4]"  1;
	setAttr ".wl[12].w[4]"  1;
	setAttr ".wl[13].w[4]"  1;
	setAttr ".wl[14].w[4]"  1;
	setAttr ".wl[15].w[4]"  1;
	setAttr ".wl[16].w[4]"  1;
	setAttr ".wl[17].w[4]"  1;
	setAttr ".wl[18].w[6]"  1;
	setAttr ".wl[19].w[6]"  1;
	setAttr ".wl[20].w[6]"  1;
	setAttr ".wl[21].w[6]"  1;
	setAttr ".wl[22].w[6]"  1;
	setAttr ".wl[23].w[6]"  1;
	setAttr ".wl[24].w[6]"  1;
	setAttr ".wl[25].w[6]"  1;
	setAttr ".wl[26].w[6]"  1;
	setAttr ".wl[27].w[4]"  1;
	setAttr ".wl[28].w[4]"  1;
	setAttr ".wl[29].w[4]"  1;
	setAttr ".wl[30].w[4]"  1;
	setAttr ".wl[31].w[4]"  1;
	setAttr ".wl[32].w[4]"  1;
	setAttr ".wl[33].w[4]"  1;
	setAttr ".wl[34].w[4]"  1;
	setAttr ".wl[35].w[4]"  1;
	setAttr ".wl[36].w[4]"  1;
	setAttr ".wl[37].w[4]"  1;
	setAttr ".wl[38].w[4]"  1;
	setAttr ".wl[39].w[4]"  1;
	setAttr -s 5 ".wl[40].w[2:6]"  0.010642523156674511 0.48485868824237605 
		0.48485868824237593 0.015216813927517905 0.0044232864310555153;
	setAttr -s 5 ".wl[41].w[2:6]"  0.08653905882292702 0.2851310144106024 
		0.30277922976968785 0.11988028920380933 0.20567040779297335;
	setAttr -s 5 ".wl[42].w";
	setAttr ".wl[42].w[1]" 0.082109104867509247;
	setAttr ".wl[42].w[2]" 0.42206297328007886;
	setAttr ".wl[42].w[3]" 0.1105497281341786;
	setAttr ".wl[42].w[4]" 0.020865902284360655;
	setAttr ".wl[42].w[11]" 0.3644122914338726;
	setAttr -s 5 ".wl[43].w";
	setAttr ".wl[43].w[1]" 0.014247150646880275;
	setAttr ".wl[43].w[2]" 0.45848160030702528;
	setAttr ".wl[43].w[3]" 0.019898759676646189;
	setAttr ".wl[43].w[11]" 0.49170304718549201;
	setAttr ".wl[43].w[12]" 0.015669442183956318;
	setAttr ".wl[44].w[6]"  1;
	setAttr -s 5 ".wl[45].w";
	setAttr ".wl[45].w[1]" 0.060350290320890086;
	setAttr ".wl[45].w[2]" 0.13933009715051989;
	setAttr ".wl[45].w[3]" 0.36055748112716768;
	setAttr ".wl[45].w[6]" 0.31740818159231537;
	setAttr ".wl[45].w[11]" 0.12235394980910701;
	setAttr ".wl[46].w[6]"  1;
	setAttr ".wl[47].w[6]"  1;
	setAttr -s 5 ".wl[48].w";
	setAttr ".wl[48].w[1]" 0.054895873229453176;
	setAttr ".wl[48].w[2]" 0.45941466088150418;
	setAttr ".wl[48].w[3]" 0.015653769126666772;
	setAttr ".wl[48].w[11]" 0.44775657816063452;
	setAttr ".wl[48].w[12]" 0.022279118601741317;
	setAttr -s 5 ".wl[49].w";
	setAttr ".wl[49].w[0]" 0.010896049749815707;
	setAttr ".wl[49].w[1]" 0.019429281001737592;
	setAttr ".wl[49].w[2]" 0.35158995605269061;
	setAttr ".wl[49].w[11]" 0.57334543768812785;
	setAttr ".wl[49].w[12]" 0.044739275507628337;
	setAttr -s 5 ".wl[50].w";
	setAttr ".wl[50].w[0]" 0.11589476138123701;
	setAttr ".wl[50].w[1]" 0.1356322541905087;
	setAttr ".wl[50].w[2]" 0.31110965204800489;
	setAttr ".wl[50].w[11]" 0.313325019147765;
	setAttr ".wl[50].w[17]" 0.12403831323248443;
	setAttr -s 5 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.20976966501195085;
	setAttr ".wl[51].w[1]" 0.22249405974792105;
	setAttr ".wl[51].w[2]" 0.20767747841658565;
	setAttr ".wl[51].w[11]" 0.20815335898374018;
	setAttr ".wl[51].w[17]" 0.15190543783980229;
	setAttr -s 5 ".wl[52].w";
	setAttr ".wl[52].w[0]" 0.44417814316880633;
	setAttr ".wl[52].w[1]" 0.034874478131135214;
	setAttr ".wl[52].w[11]" 0.026933913531381269;
	setAttr ".wl[52].w[17]" 0.44417814316880633;
	setAttr ".wl[52].w[18]" 0.049835321999870945;
	setAttr -s 5 ".wl[53].w";
	setAttr ".wl[53].w[0]" 0.26022565776331891;
	setAttr ".wl[53].w[1]" 0.032690388989661763;
	setAttr ".wl[53].w[17]" 0.51478067686768947;
	setAttr ".wl[53].w[18]" 0.17760932202956814;
	setAttr ".wl[53].w[19]" 0.014693954349761722;
	setAttr -s 5 ".wl[54].w";
	setAttr ".wl[54].w[0]" 0.55948637063159234;
	setAttr ".wl[54].w[1]" 0.084269670743320896;
	setAttr ".wl[54].w[14]" 0.023886102428371941;
	setAttr ".wl[54].w[17]" 0.30982520075003822;
	setAttr ".wl[54].w[18]" 0.022532655446676389;
	setAttr -s 5 ".wl[55].w";
	setAttr ".wl[55].w[0]" 0.48199485842799245;
	setAttr ".wl[55].w[1]" 0.01133534216547441;
	setAttr ".wl[55].w[17]" 0.48199485842799233;
	setAttr ".wl[55].w[18]" 0.020331355170894485;
	setAttr ".wl[55].w[19]" 0.0043435858076464138;
	setAttr -s 5 ".wl[56].w";
	setAttr ".wl[56].w[0]" 0.44295215972093294;
	setAttr ".wl[56].w[1]" 0.011856081528636337;
	setAttr ".wl[56].w[17]" 0.48967797261764462;
	setAttr ".wl[56].w[18]" 0.045094359499264013;
	setAttr ".wl[56].w[19]" 0.010419426633522176;
	setAttr -s 5 ".wl[57].w";
	setAttr ".wl[57].w[0]" 0.354992801265687;
	setAttr ".wl[57].w[1]" 0.10432414687645042;
	setAttr ".wl[57].w[14]" 0.22548316498363702;
	setAttr ".wl[57].w[17]" 0.22548351762163993;
	setAttr ".wl[57].w[18]" 0.089716369252585706;
	setAttr -s 5 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.50707089094950442;
	setAttr ".wl[58].w[1]" 0.0952780114218017;
	setAttr ".wl[58].w[14]" 0.17956872051396966;
	setAttr ".wl[58].w[17]" 0.17956895245928914;
	setAttr ".wl[58].w[18]" 0.038513424655435079;
	setAttr -s 5 ".wl[59].w";
	setAttr ".wl[59].w[0]" 0.36156609734097889;
	setAttr ".wl[59].w[1]" 0.21148782881816702;
	setAttr ".wl[59].w[14]" 0.18178217115895023;
	setAttr ".wl[59].w[17]" 0.18178213202337964;
	setAttr ".wl[59].w[18]" 0.063381770658524225;
	setAttr -s 5 ".wl[60].w";
	setAttr ".wl[60].w[0]" 0.17621634705572431;
	setAttr ".wl[60].w[1]" 0.2183616194959398;
	setAttr ".wl[60].w[2]" 0.11256175896986709;
	setAttr ".wl[60].w[3]" 0.24643013723923443;
	setAttr ".wl[60].w[6]" 0.24643013723923443;
	setAttr -s 5 ".wl[61].w";
	setAttr ".wl[61].w[1]" 0.0057165069370354498;
	setAttr ".wl[61].w[2]" 0.010830273993140639;
	setAttr ".wl[61].w[3]" 0.44685795966781555;
	setAttr ".wl[61].w[6]" 0.50629759295702981;
	setAttr ".wl[61].w[7]" 0.03029766644497851;
	setAttr ".wl[62].w[6]"  1;
	setAttr ".wl[63].w[6]"  1;
	setAttr ".wl[64].w[6]"  1;
	setAttr -s 5 ".wl[65].w[2:6]"  0.020820115910852539 0.35852910825639317 
		0.45703641162996694 0.037425527587796568 0.12618883661499078;
	setAttr ".wl[66].w[4]"  1;
	setAttr ".wl[67].w[4]"  1;
	setAttr ".wl[68].w[4]"  1;
	setAttr ".wl[69].w[4]"  1;
	setAttr -s 5 ".wl[70].w[2:6]"  0.047990592482384589 0.44182937659578397 
		0.44182937659578386 0.053892127112611835 0.014458527213435763;
	setAttr -s 5 ".wl[71].w";
	setAttr ".wl[71].w[1]" 0.14444800515896233;
	setAttr ".wl[71].w[2]" 0.3178546489867427;
	setAttr ".wl[71].w[3]" 0.31925718714108159;
	setAttr ".wl[71].w[4]" 0.14527491330627909;
	setAttr ".wl[71].w[8]" 0.073165245406934379;
	setAttr -s 5 ".wl[72].w";
	setAttr ".wl[72].w[1]" 0.30193730721851292;
	setAttr ".wl[72].w[2]" 0.302497304931655;
	setAttr ".wl[72].w[3]" 0.13513620082823077;
	setAttr ".wl[72].w[8]" 0.13021460918584932;
	setAttr ".wl[72].w[11]" 0.1302145778357521;
	setAttr -s 5 ".wl[73].w";
	setAttr ".wl[73].w[0]" 0.26442853482743772;
	setAttr ".wl[73].w[1]" 0.32877549470161876;
	setAttr ".wl[73].w[2]" 0.19738349513194889;
	setAttr ".wl[73].w[8]" 0.10470621889820456;
	setAttr ".wl[73].w[11]" 0.10470625644079014;
	setAttr -s 5 ".wl[74].w";
	setAttr ".wl[74].w[0]" 0.62328137377758419;
	setAttr ".wl[74].w[1]" 0.20014490708729962;
	setAttr ".wl[74].w[2]" 0.014283800188643295;
	setAttr ".wl[74].w[14]" 0.081144745037203231;
	setAttr ".wl[74].w[17]" 0.081145173909269785;
	setAttr -s 5 ".wl[75].w";
	setAttr ".wl[75].w[0]" 0.015860209178040437;
	setAttr ".wl[75].w[11]" 0.0021111757755805393;
	setAttr ".wl[75].w[17]" 0.48615159657505691;
	setAttr ".wl[75].w[18]" 0.48615159657505691;
	setAttr ".wl[75].w[19]" 0.0097254218962652145;
	setAttr -s 5 ".wl[76].w";
	setAttr ".wl[76].w[0]" 0.013234625644493271;
	setAttr ".wl[76].w[1]" 0.0019712368858236027;
	setAttr ".wl[76].w[17]" 0.4788270744925891;
	setAttr ".wl[76].w[18]" 0.48113618731037561;
	setAttr ".wl[76].w[19]" 0.024830875666718294;
	setAttr -s 5 ".wl[77].w";
	setAttr ".wl[77].w[0]" 0.0090097806453917264;
	setAttr ".wl[77].w[1]" 0.00068447673794356069;
	setAttr ".wl[77].w[17]" 0.16118875250304343;
	setAttr ".wl[77].w[18]" 0.79357709753046812;
	setAttr ".wl[77].w[19]" 0.035539892583153126;
	setAttr -s 5 ".wl[78].w";
	setAttr ".wl[78].w[0]" 0.018128081687420233;
	setAttr ".wl[78].w[1]" 0.00083347875118999163;
	setAttr ".wl[78].w[17]" 0.44528014100859636;
	setAttr ".wl[78].w[18]" 0.51832607426711741;
	setAttr ".wl[78].w[19]" 0.017432224285675878;
	setAttr -s 5 ".wl[79].w";
	setAttr ".wl[79].w[0]" 0.0030763470175123458;
	setAttr ".wl[79].w[1]" 0.00057574853089110045;
	setAttr ".wl[79].w[17]" 0.03248488198465227;
	setAttr ".wl[79].w[18]" 0.49336910528188638;
	setAttr ".wl[79].w[19]" 0.47049391718505801;
	setAttr -s 5 ".wl[80].w";
	setAttr ".wl[80].w[0]" 0.002312869662037061;
	setAttr ".wl[80].w[1]" 0.00050534589472668362;
	setAttr ".wl[80].w[17]" 0.02327784922807747;
	setAttr ".wl[80].w[18]" 0.50660251442221771;
	setAttr ".wl[80].w[19]" 0.46730142079294112;
	setAttr -s 5 ".wl[81].w";
	setAttr ".wl[81].w[0]" 0.0023617249690149628;
	setAttr ".wl[81].w[15]" 0.0007057711983680543;
	setAttr ".wl[81].w[17]" 0.010610519116820405;
	setAttr ".wl[81].w[18]" 0.49316099235789834;
	setAttr ".wl[81].w[19]" 0.49316099235789834;
	setAttr -s 5 ".wl[82].w";
	setAttr ".wl[82].w[0]" 0.0026983588929405636;
	setAttr ".wl[82].w[1]" 0.00044346974125567776;
	setAttr ".wl[82].w[17]" 0.013322984897687724;
	setAttr ".wl[82].w[18]" 0.491767593234058;
	setAttr ".wl[82].w[19]" 0.491767593234058;
	setAttr -s 5 ".wl[83].w";
	setAttr ".wl[83].w[1]" 0.00042808155503409271;
	setAttr ".wl[83].w[2]" 0.0046716456904451753;
	setAttr ".wl[83].w[11]" 0.43117565803026581;
	setAttr ".wl[83].w[12]" 0.56252710188227351;
	setAttr ".wl[83].w[13]" 0.0011975128419815118;
	setAttr -s 5 ".wl[84].w";
	setAttr ".wl[84].w[1]" 0.00040073740256111641;
	setAttr ".wl[84].w[2]" 0.0044434392088450536;
	setAttr ".wl[84].w[11]" 0.45401511876023326;
	setAttr ".wl[84].w[12]" 0.54013324758894288;
	setAttr ".wl[84].w[13]" 0.0010074570394177727;
	setAttr -s 5 ".wl[85].w";
	setAttr ".wl[85].w[2]" 0.011309857837857281;
	setAttr ".wl[85].w[11]" 0.49058314781928219;
	setAttr ".wl[85].w[12]" 0.49058314781928208;
	setAttr ".wl[85].w[13]" 0.0041854959787676286;
	setAttr ".wl[85].w[17]" 0.0033383505448107754;
	setAttr -s 5 ".wl[86].w";
	setAttr ".wl[86].w[1]" 0.0015305683820141403;
	setAttr ".wl[86].w[2]" 0.010843992114436216;
	setAttr ".wl[86].w[11]" 0.48844277108054035;
	setAttr ".wl[86].w[12]" 0.49395208140768898;
	setAttr ".wl[86].w[13]" 0.0052305870153203128;
	setAttr -s 5 ".wl[87].w";
	setAttr ".wl[87].w[2]" 0.0014549866060699849;
	setAttr ".wl[87].w[3]" 0.00070814165397448732;
	setAttr ".wl[87].w[11]" 0.0061606938066620888;
	setAttr ".wl[87].w[12]" 0.49583808896664688;
	setAttr ".wl[87].w[13]" 0.49583808896664666;
	setAttr -s 5 ".wl[88].w";
	setAttr ".wl[88].w[2]" 0.0010319390568698898;
	setAttr ".wl[88].w[3]" 0.00047914207877833406;
	setAttr ".wl[88].w[11]" 0.0047121328798095854;
	setAttr ".wl[88].w[12]" 0.49688839299227111;
	setAttr ".wl[88].w[13]" 0.49688839299227111;
	setAttr -s 5 ".wl[89].w";
	setAttr ".wl[89].w[2]" 0.00063846131192002008;
	setAttr ".wl[89].w[11]" 0.0048659585859778887;
	setAttr ".wl[89].w[12]" 0.53789537936428011;
	setAttr ".wl[89].w[13]" 0.45623700935241268;
	setAttr ".wl[89].w[17]" 0.00036319138540917247;
	setAttr -s 5 ".wl[90].w";
	setAttr ".wl[90].w[2]" 0.00048332352700277727;
	setAttr ".wl[90].w[11]" 0.0034215387917662494;
	setAttr ".wl[90].w[12]" 0.50829509417454888;
	setAttr ".wl[90].w[13]" 0.48761130891924259;
	setAttr ".wl[90].w[17]" 0.00018873458743933912;
	setAttr ".wl[91].w[4]"  1;
	setAttr ".wl[92].w[4]"  1;
	setAttr ".wl[93].w[4]"  1;
	setAttr ".wl[94].w[4]"  1;
	setAttr -s 5 ".wl[95].w[2:6]"  0.010642523156674511 0.48485868824237605 
		0.48485868824237593 0.015216813927517905 0.0044232864310555153;
	setAttr -s 5 ".wl[96].w[2:6]"  0.08653905882292702 0.2851310144106024 
		0.30277922976968785 0.11988028920380933 0.20567040779297335;
	setAttr -s 5 ".wl[97].w";
	setAttr ".wl[97].w[1]" 0.082108976000603143;
	setAttr ".wl[97].w[2]" 0.42206317736158272;
	setAttr ".wl[97].w[3]" 0.1105495546308691;
	setAttr ".wl[97].w[4]" 0.020865869536174267;
	setAttr ".wl[97].w[8]" 0.3644124224707706;
	setAttr -s 5 ".wl[98].w";
	setAttr ".wl[98].w[1]" 0.014247125190327408;
	setAttr ".wl[98].w[2]" 0.45848168870923811;
	setAttr ".wl[98].w[3]" 0.019898724121899823;
	setAttr ".wl[98].w[8]" 0.49170299525052313;
	setAttr ".wl[98].w[9]" 0.015669466728011582;
	setAttr ".wl[99].w[6]"  1;
	setAttr -s 5 ".wl[100].w";
	setAttr ".wl[100].w[1]" 0.060350299530033832;
	setAttr ".wl[100].w[2]" 0.13933006344447973;
	setAttr ".wl[100].w[3]" 0.36055753614638381;
	setAttr ".wl[100].w[6]" 0.31740823002717056;
	setAttr ".wl[100].w[8]" 0.12235387085193213;
	setAttr ".wl[101].w[6]"  1;
	setAttr ".wl[102].w[6]"  1;
	setAttr -s 5 ".wl[103].w";
	setAttr ".wl[103].w[1]" 0.054895828777327751;
	setAttr ".wl[103].w[2]" 0.45941469469011581;
	setAttr ".wl[103].w[3]" 0.015653756450972448;
	setAttr ".wl[103].w[8]" 0.44775654530491854;
	setAttr ".wl[103].w[9]" 0.022279174776665571;
	setAttr -s 5 ".wl[104].w";
	setAttr ".wl[104].w[0]" 0.010896078363703229;
	setAttr ".wl[104].w[1]" 0.019429343223330377;
	setAttr ".wl[104].w[2]" 0.35159045773675646;
	setAttr ".wl[104].w[8]" 0.57334466383479799;
	setAttr ".wl[104].w[9]" 0.044739456841411882;
	setAttr -s 5 ".wl[105].w";
	setAttr ".wl[105].w[0]" 0.11589500992963779;
	setAttr ".wl[105].w[1]" 0.13563235485275163;
	setAttr ".wl[105].w[2]" 0.3111093965511027;
	setAttr ".wl[105].w[8]" 0.31332468167435867;
	setAttr ".wl[105].w[14]" 0.12403855699214915;
	setAttr -s 5 ".wl[106].w";
	setAttr ".wl[106].w[0]" 0.20976982751553017;
	setAttr ".wl[106].w[1]" 0.22249423210878691;
	setAttr ".wl[106].w[2]" 0.2076775303299592;
	setAttr ".wl[106].w[8]" 0.20815340398444357;
	setAttr ".wl[106].w[14]" 0.15190500606128021;
	setAttr -s 5 ".wl[107].w";
	setAttr ".wl[107].w[0]" 0.4441781712980889;
	setAttr ".wl[107].w[1]" 0.034874508874988309;
	setAttr ".wl[107].w[8]" 0.026933891231967662;
	setAttr ".wl[107].w[14]" 0.44417817129808912;
	setAttr ".wl[107].w[15]" 0.049835257296865984;
	setAttr -s 5 ".wl[108].w";
	setAttr ".wl[108].w[0]" 0.26022662347369124;
	setAttr ".wl[108].w[1]" 0.032690315585055571;
	setAttr ".wl[108].w[14]" 0.51478056626579405;
	setAttr ".wl[108].w[15]" 0.17760852904979541;
	setAttr ".wl[108].w[16]" 0.014693965625663741;
	setAttr -s 5 ".wl[109].w";
	setAttr ".wl[109].w[0]" 0.55948700435247645;
	setAttr ".wl[109].w[1]" 0.084269964956755608;
	setAttr ".wl[109].w[14]" 0.30982411019312744;
	setAttr ".wl[109].w[15]" 0.022532644181456632;
	setAttr ".wl[109].w[17]" 0.023886276316183782;
	setAttr -s 5 ".wl[110].w";
	setAttr ".wl[110].w[0]" 0.48199483575798291;
	setAttr ".wl[110].w[1]" 0.011335393733091463;
	setAttr ".wl[110].w[14]" 0.4819948357579828;
	setAttr ".wl[110].w[15]" 0.020331328177542608;
	setAttr ".wl[110].w[16]" 0.0043436065734003149;
	setAttr -s 5 ".wl[111].w";
	setAttr ".wl[111].w[0]" 0.44295377088343024;
	setAttr ".wl[111].w[1]" 0.011856070200120023;
	setAttr ".wl[111].w[14]" 0.48967675385245163;
	setAttr ".wl[111].w[15]" 0.045093977266298671;
	setAttr ".wl[111].w[16]" 0.010419427797699322;
	setAttr -s 5 ".wl[112].w";
	setAttr ".wl[112].w[0]" 0.015860138785760577;
	setAttr ".wl[112].w[8]" 0.0021111491422163469;
	setAttr ".wl[112].w[14]" 0.48615168161077771;
	setAttr ".wl[112].w[15]" 0.48615168161077771;
	setAttr ".wl[112].w[16]" 0.0097253488504675627;
	setAttr -s 5 ".wl[113].w";
	setAttr ".wl[113].w[0]" 0.013234553584894612;
	setAttr ".wl[113].w[1]" 0.00197121491479465;
	setAttr ".wl[113].w[14]" 0.47882717926440121;
	setAttr ".wl[113].w[15]" 0.48113632142294249;
	setAttr ".wl[113].w[16]" 0.024830730812967095;
	setAttr -s 5 ".wl[114].w";
	setAttr ".wl[114].w[0]" 0.009009933767644876;
	setAttr ".wl[114].w[1]" 0.00068448382498563953;
	setAttr ".wl[114].w[14]" 0.16118918421163536;
	setAttr ".wl[114].w[15]" 0.79357596992188784;
	setAttr ".wl[114].w[16]" 0.035540428273846202;
	setAttr -s 5 ".wl[115].w";
	setAttr ".wl[115].w[0]" 0.018128419702723022;
	setAttr ".wl[115].w[1]" 0.00083348826060262201;
	setAttr ".wl[115].w[14]" 0.44528098823337003;
	setAttr ".wl[115].w[15]" 0.51832465456269483;
	setAttr ".wl[115].w[16]" 0.017432449240609535;
	setAttr -s 5 ".wl[116].w";
	setAttr ".wl[116].w[0]" 0.0030763549439783125;
	setAttr ".wl[116].w[1]" 0.00057574783549611255;
	setAttr ".wl[116].w[14]" 0.032484907671972985;
	setAttr ".wl[116].w[15]" 0.49336903049445691;
	setAttr ".wl[116].w[16]" 0.47049395905409563;
	setAttr -s 5 ".wl[117].w";
	setAttr ".wl[117].w[0]" 0.0023128531263996452;
	setAttr ".wl[117].w[1]" 0.00050534030308198731;
	setAttr ".wl[117].w[14]" 0.023277640601684777;
	setAttr ".wl[117].w[15]" 0.50660240462651607;
	setAttr ".wl[117].w[16]" 0.46730176134231743;
	setAttr -s 5 ".wl[118].w";
	setAttr ".wl[118].w[0]" 0.0023617287876169933;
	setAttr ".wl[118].w[14]" 0.010610475991050883;
	setAttr ".wl[118].w[15]" 0.49316101278025709;
	setAttr ".wl[118].w[16]" 0.49316101278025709;
	setAttr ".wl[118].w[18]" 0.00070576966081798212;
	setAttr -s 5 ".wl[119].w";
	setAttr ".wl[119].w[0]" 0.00269839935696135;
	setAttr ".wl[119].w[1]" 0.00044347490642050551;
	setAttr ".wl[119].w[14]" 0.013323108735681738;
	setAttr ".wl[119].w[15]" 0.49176750850046824;
	setAttr ".wl[119].w[16]" 0.49176750850046824;
	setAttr -s 5 ".wl[120].w";
	setAttr ".wl[120].w[1]" 0.00042807606879125806;
	setAttr ".wl[120].w[2]" 0.0046715919616955367;
	setAttr ".wl[120].w[8]" 0.43117421237765852;
	setAttr ".wl[120].w[9]" 0.56252861737000182;
	setAttr ".wl[120].w[10]" 0.0011975022218528835;
	setAttr -s 5 ".wl[121].w";
	setAttr ".wl[121].w[1]" 0.00040073840405043952;
	setAttr ".wl[121].w[2]" 0.0044434540256128464;
	setAttr ".wl[121].w[8]" 0.45401413895850784;
	setAttr ".wl[121].w[9]" 0.54013420596420425;
	setAttr ".wl[121].w[10]" 0.001007462647624593;
	setAttr -s 5 ".wl[122].w";
	setAttr ".wl[122].w[2]" 0.011309957070765141;
	setAttr ".wl[122].w[8]" 0.4905830621669609;
	setAttr ".wl[122].w[9]" 0.49058306216696079;
	setAttr ".wl[122].w[10]" 0.0041855369389174656;
	setAttr ".wl[122].w[14]" 0.0033383816563957898;
	setAttr -s 5 ".wl[123].w";
	setAttr ".wl[123].w[1]" 0.0015305654172103949;
	setAttr ".wl[123].w[2]" 0.010843980379807001;
	setAttr ".wl[123].w[8]" 0.48844270262637585;
	setAttr ".wl[123].w[9]" 0.49395216098647765;
	setAttr ".wl[123].w[10]" 0.0052305905901290648;
	setAttr -s 5 ".wl[124].w";
	setAttr ".wl[124].w[2]" 0.0014549754510372224;
	setAttr ".wl[124].w[3]" 0.00070813584982159518;
	setAttr ".wl[124].w[8]" 0.006160641131764585;
	setAttr ".wl[124].w[9]" 0.49583812378368819;
	setAttr ".wl[124].w[10]" 0.49583812378368841;
	setAttr -s 5 ".wl[125].w";
	setAttr ".wl[125].w[2]" 0.0010319406181158004;
	setAttr ".wl[125].w[3]" 0.00047914262120667161;
	setAttr ".wl[125].w[8]" 0.0047121314348601701;
	setAttr ".wl[125].w[9]" 0.49688839266290868;
	setAttr ".wl[125].w[10]" 0.49688839266290868;
	setAttr -s 5 ".wl[126].w";
	setAttr ".wl[126].w[2]" 0.00063846950258450181;
	setAttr ".wl[126].w[8]" 0.0048660073702440675;
	setAttr ".wl[126].w[9]" 0.53789452383698921;
	setAttr ".wl[126].w[10]" 0.45623780278614068;
	setAttr ".wl[126].w[14]" 0.00036319650404156303;
	setAttr -s 5 ".wl[127].w";
	setAttr ".wl[127].w[2]" 0.00048332456135218314;
	setAttr ".wl[127].w[8]" 0.0034215396874040967;
	setAttr ".wl[127].w[9]" 0.50829476165568721;
	setAttr ".wl[127].w[10]" 0.48761163894968418;
	setAttr ".wl[127].w[14]" 0.0001887351458722999;
	setAttr -s 20 ".pm";
	setAttr ".pm[0]" -type "matrix" 3.8408463256290593e-017 4.0078396441346719e-017 -0.99999999999999978 0
		 0.6919053632356148 0.72198820511542439 -4.0078396441346719e-017 0 0.72198820511542428 -0.6919053632356148 3.8408463256290593e-017 0
		 0.0088251836024366686 -6.0375719306754601 3.3515256851332276e-016 1;
	setAttr ".pm[1]" -type "matrix" 3.8086329916699852e-017 4.0384642928913854e-017 -0.99999999999999978 0
		 0.68610232488303691 0.72750505138458788 -4.0078396441346725e-017 0 0.72750505138458776 -0.68610232488303691 3.8408463256290593e-017 0
		 -1.3068106695636394 -6.0482292603044048 3.3515256851332276e-016 1;
	setAttr ".pm[2]" -type "matrix" 1.1745767868395717e-017 5.4254261106399191e-017 -0.99999999999999978 0
		 0.21159294318114918 0.97735788040816396 -4.0078396441346719e-017 0 0.97735788040816396 -0.21159294318114924 3.8408463256290586e-017 0
		 -0.96419897694466339 -7.6457729206896614 3.3361079129570134e-016 1;
	setAttr ".pm[3]" -type "matrix" 1.0430377497562983e-017 5.452242782816911e-017 -0.99999999999999978 0
		 0.18789697684543302 0.98218874260110867 -4.0078396441346725e-017 0 0.98218874260110867 -0.18789697684543308 3.8408463256290593e-017 0
		 -2.8146705412227733 -7.7160925268071479 2.7444080785499252e-016 1;
	setAttr ".pm[4]" -type "matrix" -1.1340604319713337e-017 5.4340395698626227e-017 -0.99999999999999978 0
		 -0.20429416555366889 0.97890954327799351 -4.0078396441346707e-017 0 0.97890954327799351 0.20429416555366883 3.840846325629058e-017 0
		 -1.84811927696349 -9.128991901810048 2.0190875519489902e-016 1;
	setAttr ".pm[5]" -type "matrix" 0.99999999999999978 6.4607260946027886e-017 -1.1151594247718079e-016 0
		 2.620060863353221e-017 1 -4.4408920985006252e-016 0 7.2613839206225043e-017 4.163336342344336e-016 0.99999999999999978 0
		 -6.494681247410019e-016 -8.0664936653512456 -6.033575499650861 1;
	setAttr ".pm[6]" -type "matrix" -2.8809073695610611e-017 4.7450239028064483e-017 -0.99999999999999978 0
		 -0.51897813424176442 0.85478751522172869 -4.0078396441346713e-017 0 0.85478751522172869 0.51897813424176442 3.8408463256290586e-017 0
		 0.93861950980966125 -6.4907424828623235 1.4332122092529098e-016 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999956 3.3343397982420713e-016 -3.5079283852890493e-016 0
		 -2.374773597149423e-016 0.99999999999999978 1.6653345369377343e-016 0 2.946584441312562e-016 -1.1102230246251551e-016 0.99999999999999956 0
		 -1.7703167322094073e-016 -4.640184987630124 -4.8641168491712001 1;
	setAttr ".pm[8]" -type "matrix" 0.99969379818133131 0.024744895994583148 1.450368550719796e-016 0
		 -0.024744895994583026 0.99969379818133164 -1.6416705657291236e-015 0 -7.6857997100186554e-017 1.5528858878136557e-015 1 0
		 -2.5076973080190315 -7.8521782610808168 0.61550455288404626 1;
	setAttr ".pm[9]" -type "matrix" 0.99964327703498335 -0.026708026485666368 1.4503685507197962e-016 0
		 0.02670802648566651 0.99964327703498368 -1.6416705657291238e-015 0 3.1178502499635077e-018 1.5547835898602986e-015 1 0
		 -6.0686685676299632 -7.5500247156944678 0.61550455288404626 1;
	setAttr ".pm[10]" -type "matrix" 0.99999999999999989 -1.4571677198205157e-016 1.4503685507197965e-016 0
		 2.7755575615628918e-016 1.0000000000000002 -1.6416705657291242e-015 0 -3.8408463256290223e-017 1.5543122344752196e-015 1 0
		 -9.968175264257388 -7.8190442373099485 -1.9285809323699599 1;
	setAttr ".pm[11]" -type "matrix" 0.99969379818133153 0.024744895994583075 -2.4791223297696025e-016 0
		 0.024744895994583169 -0.99969379818133175 8.0176818192505153e-015 0 -6.3259182229030325e-017 -7.9698559279501201e-015 -1 0
		 2.5076965570264229 7.8521770413801635 -0.61550500000006314 1;
	setAttr ".pm[12]" -type "matrix" 0.99964327703498335 -0.026708026485666451 -2.4791223297696025e-016 0
		 -0.026708026485666371 -0.99964327703498357 8.0176818192505137e-015 0 -4.7311229675806004e-016 -7.9560524125394166e-015 -1 0
		 6.0686709962202539 7.5500210401915417 -0.61550500000006314 1;
	setAttr ".pm[13]" -type "matrix" 0.99999999999999978 6.036837696399268e-016 -2.479122329769602e-016 0
		 6.904199434387711e-016 -1 8.0176818192505153e-015 0 -2.6045306818131669e-016 -7.9658502016854982e-015 -1 0
		 9.9681799999999932 7.8190400000000206 1.9285799999999349 1;
	setAttr ".pm[14]" -type "matrix" -4.6984172896575078e-017 2.9563075080991111e-017 -0.99999999999999978 0
		 -0.84639161419730591 0.53256101567471026 -4.0078396441346719e-017 0 0.53256101567471026 0.84639161419730569 3.8408463256290593e-017 0
		 4.9690462480750419 1.3801850232083022 2.4714031507055338 1;
	setAttr ".pm[15]" -type "matrix" -5.4596379233398858e-017 -1.1242858079094874e-016 0.99999999999999978 0
		 -0.98352093268525387 0.18079428909655362 6.2219311185968288e-017 0 -0.18079428909655335 -0.98352093268525342 -1.588550394670321e-016 0
		 1.1357086745522025 -2.9189873458429685 -4.0312231720524734 1;
	setAttr ".pm[16]" -type "matrix" 0.99999999999999956 2.5175575342023159e-016 1.6059097270588768e-016 0
		 -3.263587474328364e-016 0.99999999999999978 3.8857805861880439e-016 0 -1.5885503946703175e-016 -7.2164496600635096e-016 0.99999999999999911 0
		 -3.7476195318075751 1.1455578094797851 3.1784759751801674 1;
	setAttr ".pm[17]" -type "matrix" 4.6984172896575078e-017 -2.9563075080991111e-017 -0.99999999999999978 0
		 0.84639161419730591 -0.53256101567471026 -4.0078396441346719e-017 0 -0.53256101567471026 -0.84639161419730569 3.8408463256290593e-017 0
		 -4.9690507614341985 -1.3801853184229353 -2.4714 1;
	setAttr ".pm[18]" -type "matrix" 5.4596379233398877e-017 1.1242858079094874e-016 0.99999999999999978 0
		 0.98352093268525365 -0.18079428909655396 6.2219311185968325e-017 0 0.18079428909655385 0.98352093268525365 -1.5885503946703217e-016 0
		 -1.1357083583712062 2.9189918484342798 4.0312199999999985 1;
	setAttr ".pm[19]" -type "matrix" 0.99999999999999956 1.8501528044695916e-016 -8.0302179715595301e-017 0
		 4.5079736980477283e-016 -0.99999999999999956 -2.7755575615628877e-017 0 -1.5885503946703222e-016 2.7755575615628879e-016 -0.99999999999999956 0
		 3.7476199999999991 -1.1455599999999977 -3.1784799999999991 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 20 ".ma";
	setAttr -s 20 ".dpf[0:19]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 20 ".lw";
	setAttr -s 20 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 20 ".ifcl";
	setAttr -s 20 ".ifcl";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:125]";
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 20 ".wm";
	setAttr -s 20 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 4.3529495296175771 -4.1838000782240936 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.2636341190383823 -0.65612274101638635 0.2636341190383823 0.65612274101638646 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.364021292365867 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.004003462466386846 0.99999198611202889 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4687988241753969 -2.8421709430404007e-014
		 1.5417772176213194e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.26813503570691394 0.9633813381140679 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.0362360886958393 -9.4368957093138306e-016
		 5.9169983440708961e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.012091691880281016 0.99992689282140634 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4022206904350756 -8.7707618945387367e-015
		 7.2532052660093421e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.1961024256125567 0.98058341749637579 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4102677674261423 -1.6653345369377348e-016
		 1.1035698706573488e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.072612768715299411 0.70336859882958835 0.072612768715299411 0.70336859882958847 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.83987480992451724 -2.2704481352372365
		 1.3111958692970146e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.35913211197702383 0.93328673308202681 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.6882513176439282 4.4408920985006262e-016
		 2.9845585088272049e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.19053377966798393 0.68095291966877702 0.19053377966798382 0.68095291966877736 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.082059647406666492 0.095854185165289429
		 -2.7012307809440181 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.066531088560352336 0.7039698958442574 -0.083930378476020806 0.70210803411502987 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.164595698124709 -1.0963452368173421e-014
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.025726473641682783 0.99966901950293718 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.104782060174025 3.8857805861880479e-015
		 2.5440854852540058 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.01335520432296731 0.99991081528178893 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.08205895634540894 0.095853106215319173
		 2.7012299999999994 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70396989584425707 0.066531088560354557 0.70210803411502964 0.083930378476023082 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1645990635457415 2.3260202377528572e-006
		 1.1102230246251565e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.025726473641682786 0.99966901950293718 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.1047842524668123 6.8677779996306754e-007
		 -2.5440849999999982 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.013355204322967728 0.99991081528178893 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.34378274201257319
		 -0.89247727998237192 -2.4714031507055334 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.77495810384798669 0.63201260848208807 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.157390042143029 -1.1102230246251565e-015
		 -1.5598200213469391 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.93170807648717524 -0.36320801231328581 -2.2240076485206897e-017 5.7050665680487824e-017 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.8370390641198133 -1.1102230246251565e-015
		 -0.28360364024489748 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.45254991738576372 -0.54332179440377548 0.45254991738576356 0.5433217944037757 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.34378212346760373
		 -0.89247279947295066 2.4714 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.63201260848208807 0.77495810384798669 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.1573917408735834 3.2334061688121807e-006
		 1.5598199999999993 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.93170807648717524 0.36320801231328598 -2.2240076485206907e-017 5.7050665680487824e-017 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8370416300257402 9.4013030249584517e-007
		 0.28359999999999985 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.45254991738576372 -0.54332179440377548 0.45254991738576356 0.5433217944037757 1
		 1 1 yes;
	setAttr -s 20 ".m";
	setAttr -s 20 ".p";
	setAttr ".bp" yes;
createNode makeNurbCircle -n "makeNurbCircle1";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".tol" 1e-008;
createNode displayLayer -n "mesh";
	setAttr ".dt" 2;
	setAttr ".do" 2;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 8.803867250972262 0 0 0 0 8.803867250972262 0 0 0 0 8.803867250972262 0
		 0 0 0 1;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n"
		+ "                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n"
		+ "            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n"
		+ "                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 200 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveUL -n "Snout_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.4022206904350756 30 2.3653954319984072;
createNode animCurveUL -n "Snout_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.7707618945387367e-015 30 0.50287274399600368;
createNode animCurveUL -n "Snout_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.2532052660093421e-017 30 1.4854134025632635e-016;
createNode animCurveUA -n "Snout_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveUA -n "Snout_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveUA -n "Snout_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 30.599999394902888;
createNode animCurveUL -n "Jaw_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36997233863351037 30 -0.13746552004473217;
createNode animCurveUL -n "Jaw_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -2.0717134760707698 30 -1.5634640414490173;
createNode animCurveUL -n "Jaw_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.4623416864899371e-016 30 2.0764459516202497e-016;
createNode animCurveUA -n "Jaw_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveUA -n "Jaw_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveUA -n "Jaw_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 24.64564717686665 30 -39.253792547956756;
createNode animCurveTA -n "Main_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Main_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Main_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "ArmL_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 13.938696611883273 200 13.938696611883273;
createNode animCurveTA -n "ArmL_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 15.576981793438419 200 15.576981793438419;
createNode animCurveTA -n "ArmL_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -82.870828090537216 200 -82.870828090537216;
createNode animCurveTA -n "ArmL_CTRL1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.079020356988184 200 -1.079020356988184;
createNode animCurveTA -n "ArmL_CTRL1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -17.787449708247994 200 -17.787449708247994;
createNode animCurveTA -n "ArmL_CTRL1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 93.528086560050028 200 93.528086560050028;
createNode animCurveTA -n "Head_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 11.520000259997166 200 11.520000259997166;
createNode animCurveTA -n "Head_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Head_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "LegL_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "LegL_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "LegL_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "LegR_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "LegR_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "LegR_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Torso_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Torso_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Torso_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Waist_CTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Waist_CTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Waist_CTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTU -n "Main_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Main_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "Main_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "Main_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTU -n "Main_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Main_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Main_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "LegR_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LegR_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "LegR_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "LegR_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTU -n "LegR_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "LegR_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "LegR_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "LegL_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LegL_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "LegL_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "LegL_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTU -n "LegL_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "LegL_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "LegL_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Waist_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Waist_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "Waist_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "Waist_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTU -n "Waist_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Waist_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Waist_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Torso_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Torso_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "Torso_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.21011482649185 200 -2.21011482649185;
createNode animCurveTL -n "Torso_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.532011413818219 200 1.532011413818219;
createNode animCurveTU -n "Torso_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Torso_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Torso_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Head_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Head_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "Head_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.21011482649185 200 -2.21011482649185;
createNode animCurveTL -n "Head_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.532011413818219 200 1.532011413818219;
createNode animCurveTU -n "Head_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Head_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Head_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Head_CTRL_Mouth";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTU -n "ArmL_CTRL1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "ArmL_CTRL1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 6.863718323897265 200 6.863718323897265;
createNode animCurveTL -n "ArmL_CTRL1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -8.9281001998891334 200 -8.9281001998891334;
createNode animCurveTL -n "ArmL_CTRL1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.34240382052895901 200 0.34240382052895901;
createNode animCurveTU -n "ArmL_CTRL1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "ArmL_CTRL1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "ArmL_CTRL1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "ArmL_CTRL_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "ArmL_CTRL_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -6.4375290548016331 200 -6.4375290548016331;
createNode animCurveTL -n "ArmL_CTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -8.8795548742807249 200 -8.8795548742807249;
createNode animCurveTL -n "ArmL_CTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.26983736200813846 200 0.26983736200813846;
createNode animCurveTU -n "ArmL_CTRL_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "ArmL_CTRL_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "ArmL_CTRL_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 5 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
select -ne :initialShadingGroup;
select -ne :defaultRenderGlobals;
	setAttr ".mcfr" 60;
select -ne :hardwareRenderGlobals;
	setAttr ".hwfr" 60;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".ta" 0;
select -ne :ikSystem;
connectAttr "mesh.di" "pCube6.do";
connectAttr "skinCluster1.og[0]" "pCube6Shape.i";
connectAttr "groupId1.id" "pCube6Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube6Shape.iog.og[0].gco";
connectAttr "skinCluster1GroupId.id" "pCube6Shape.iog.og[1].gid";
connectAttr "skinCluster1Set.mwc" "pCube6Shape.iog.og[1].gco";
connectAttr "groupId3.id" "pCube6Shape.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "pCube6Shape.iog.og[2].gco";
connectAttr "tweak1.vl[0].vt[0]" "pCube6Shape.twl";
connectAttr "Shoulder_L.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_pointConstraint1.ctx" "ikHandle1.tx";
connectAttr "ikHandle1_pointConstraint1.cty" "ikHandle1.ty";
connectAttr "ikHandle1_pointConstraint1.ctz" "ikHandle1.tz";
connectAttr "ikHandle1.pim" "ikHandle1_pointConstraint1.cpim";
connectAttr "ikHandle1.rp" "ikHandle1_pointConstraint1.crp";
connectAttr "ikHandle1.rpt" "ikHandle1_pointConstraint1.crt";
connectAttr "ArmL_CTRL.t" "ikHandle1_pointConstraint1.tg[0].tt";
connectAttr "ArmL_CTRL.rp" "ikHandle1_pointConstraint1.tg[0].trp";
connectAttr "ArmL_CTRL.rpt" "ikHandle1_pointConstraint1.tg[0].trt";
connectAttr "ArmL_CTRL.pm" "ikHandle1_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle1_pointConstraint1.w0" "ikHandle1_pointConstraint1.tg[0].tw"
		;
connectAttr "Shoulder_R.msg" "ikHandle2.hsj";
connectAttr "effector2.hp" "ikHandle2.hee";
connectAttr "ikRPsolver.msg" "ikHandle2.hsv";
connectAttr "ikHandle2_pointConstraint1.ctx" "ikHandle2.tx";
connectAttr "ikHandle2_pointConstraint1.cty" "ikHandle2.ty";
connectAttr "ikHandle2_pointConstraint1.ctz" "ikHandle2.tz";
connectAttr "ikHandle2.pim" "ikHandle2_pointConstraint1.cpim";
connectAttr "ikHandle2.rp" "ikHandle2_pointConstraint1.crp";
connectAttr "ikHandle2.rpt" "ikHandle2_pointConstraint1.crt";
connectAttr "ArmL_CTRL1.t" "ikHandle2_pointConstraint1.tg[0].tt";
connectAttr "ArmL_CTRL1.rp" "ikHandle2_pointConstraint1.tg[0].trp";
connectAttr "ArmL_CTRL1.rpt" "ikHandle2_pointConstraint1.tg[0].trt";
connectAttr "ArmL_CTRL1.pm" "ikHandle2_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle2_pointConstraint1.w0" "ikHandle2_pointConstraint1.tg[0].tw"
		;
connectAttr "Thigh_L.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikRPsolver.msg" "ikHandle3.hsv";
connectAttr "ikHandle3_pointConstraint1.ctx" "ikHandle3.tx";
connectAttr "ikHandle3_pointConstraint1.cty" "ikHandle3.ty";
connectAttr "ikHandle3_pointConstraint1.ctz" "ikHandle3.tz";
connectAttr "ikHandle3.pim" "ikHandle3_pointConstraint1.cpim";
connectAttr "ikHandle3.rp" "ikHandle3_pointConstraint1.crp";
connectAttr "ikHandle3.rpt" "ikHandle3_pointConstraint1.crt";
connectAttr "LegL_CTRL.t" "ikHandle3_pointConstraint1.tg[0].tt";
connectAttr "LegL_CTRL.rp" "ikHandle3_pointConstraint1.tg[0].trp";
connectAttr "LegL_CTRL.rpt" "ikHandle3_pointConstraint1.tg[0].trt";
connectAttr "LegL_CTRL.pm" "ikHandle3_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle3_pointConstraint1.w0" "ikHandle3_pointConstraint1.tg[0].tw"
		;
connectAttr "Thigh_R.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikRPsolver.msg" "ikHandle4.hsv";
connectAttr "ikHandle4_pointConstraint1.ctx" "ikHandle4.tx";
connectAttr "ikHandle4_pointConstraint1.cty" "ikHandle4.ty";
connectAttr "ikHandle4_pointConstraint1.ctz" "ikHandle4.tz";
connectAttr "ikHandle4.pim" "ikHandle4_pointConstraint1.cpim";
connectAttr "ikHandle4.rp" "ikHandle4_pointConstraint1.crp";
connectAttr "ikHandle4.rpt" "ikHandle4_pointConstraint1.crt";
connectAttr "LegR_CTRL.t" "ikHandle4_pointConstraint1.tg[0].tt";
connectAttr "LegR_CTRL.rp" "ikHandle4_pointConstraint1.tg[0].trp";
connectAttr "LegR_CTRL.rpt" "ikHandle4_pointConstraint1.tg[0].trt";
connectAttr "LegR_CTRL.pm" "ikHandle4_pointConstraint1.tg[0].tpm";
connectAttr "ikHandle4_pointConstraint1.w0" "ikHandle4_pointConstraint1.tg[0].tw"
		;
connectAttr "Main_rotateX.o" "Main.rx";
connectAttr "Main_rotateY.o" "Main.ry";
connectAttr "Main_rotateZ.o" "Main.rz";
connectAttr "Main_visibility.o" "Main.v";
connectAttr "Main_translateX.o" "Main.tx";
connectAttr "Main_translateY.o" "Main.ty";
connectAttr "Main_translateZ.o" "Main.tz";
connectAttr "Main_scaleX.o" "Main.sx";
connectAttr "Main_scaleY.o" "Main.sy";
connectAttr "Main_scaleZ.o" "Main.sz";
connectAttr "transformGeometry1.og" "MainShape.cr";
connectAttr "Skeleton.di" "Pelvis.do";
connectAttr "Pelvis.s" "Waist.is";
connectAttr "Waist_pointConstraint1.ctx" "Waist.tx";
connectAttr "Waist_pointConstraint1.cty" "Waist.ty";
connectAttr "Waist_pointConstraint1.ctz" "Waist.tz";
connectAttr "Waist_orientConstraint1.crx" "Waist.rx";
connectAttr "Waist_orientConstraint1.cry" "Waist.ry";
connectAttr "Waist_orientConstraint1.crz" "Waist.rz";
connectAttr "Waist.s" "Torso.is";
connectAttr "Torso_pointConstraint1.ctx" "Torso.tx";
connectAttr "Torso_pointConstraint1.cty" "Torso.ty";
connectAttr "Torso_pointConstraint1.ctz" "Torso.tz";
connectAttr "Torso_orientConstraint1.crx" "Torso.rx";
connectAttr "Torso_orientConstraint1.cry" "Torso.ry";
connectAttr "Torso_orientConstraint1.crz" "Torso.rz";
connectAttr "Torso.s" "Head.is";
connectAttr "Head_pointConstraint1.ctx" "Head.tx";
connectAttr "Head_pointConstraint1.cty" "Head.ty";
connectAttr "Head_pointConstraint1.ctz" "Head.tz";
connectAttr "Head_orientConstraint1.crx" "Head.rx";
connectAttr "Head_orientConstraint1.cry" "Head.ry";
connectAttr "Head_orientConstraint1.crz" "Head.rz";
connectAttr "Head.s" "Snout.is";
connectAttr "Snout_translateX.o" "Snout.tx";
connectAttr "Snout_translateY.o" "Snout.ty";
connectAttr "Snout_translateZ.o" "Snout.tz";
connectAttr "Snout_rotateX.o" "Snout.rx";
connectAttr "Snout_rotateY.o" "Snout.ry";
connectAttr "Snout_rotateZ.o" "Snout.rz";
connectAttr "Snout.s" "Nose.is";
connectAttr "Head.s" "Jaw.is";
connectAttr "Jaw_translateX.o" "Jaw.tx";
connectAttr "Jaw_translateY.o" "Jaw.ty";
connectAttr "Jaw_translateZ.o" "Jaw.tz";
connectAttr "Jaw_rotateX.o" "Jaw.rx";
connectAttr "Jaw_rotateY.o" "Jaw.ry";
connectAttr "Jaw_rotateZ.o" "Jaw.rz";
connectAttr "Jaw.s" "Chin.is";
connectAttr "Head.pim" "Head_pointConstraint1.cpim";
connectAttr "Head.rp" "Head_pointConstraint1.crp";
connectAttr "Head.rpt" "Head_pointConstraint1.crt";
connectAttr "Head_CTRL.t" "Head_pointConstraint1.tg[0].tt";
connectAttr "Head_CTRL.rp" "Head_pointConstraint1.tg[0].trp";
connectAttr "Head_CTRL.rpt" "Head_pointConstraint1.tg[0].trt";
connectAttr "Head_CTRL.pm" "Head_pointConstraint1.tg[0].tpm";
connectAttr "Head_pointConstraint1.w0" "Head_pointConstraint1.tg[0].tw";
connectAttr "Head.ro" "Head_orientConstraint1.cro";
connectAttr "Head.pim" "Head_orientConstraint1.cpim";
connectAttr "Head.jo" "Head_orientConstraint1.cjo";
connectAttr "Head.is" "Head_orientConstraint1.is";
connectAttr "Head_CTRL.r" "Head_orientConstraint1.tg[0].tr";
connectAttr "Head_CTRL.ro" "Head_orientConstraint1.tg[0].tro";
connectAttr "Head_CTRL.pm" "Head_orientConstraint1.tg[0].tpm";
connectAttr "Head_orientConstraint1.w0" "Head_orientConstraint1.tg[0].tw";
connectAttr "Torso.s" "Shoulder_L.is";
connectAttr "Shoulder_L.s" "ForeArm_L.is";
connectAttr "ForeArm_L.s" "Hand_L.is";
connectAttr "Hand_L_orientConstraint1.crx" "Hand_L.rx";
connectAttr "Hand_L_orientConstraint1.cry" "Hand_L.ry";
connectAttr "Hand_L_orientConstraint1.crz" "Hand_L.rz";
connectAttr "Hand_L.ro" "Hand_L_orientConstraint1.cro";
connectAttr "Hand_L.pim" "Hand_L_orientConstraint1.cpim";
connectAttr "Hand_L.jo" "Hand_L_orientConstraint1.cjo";
connectAttr "Hand_L.is" "Hand_L_orientConstraint1.is";
connectAttr "ArmL_CTRL.r" "Hand_L_orientConstraint1.tg[0].tr";
connectAttr "ArmL_CTRL.ro" "Hand_L_orientConstraint1.tg[0].tro";
connectAttr "ArmL_CTRL.pm" "Hand_L_orientConstraint1.tg[0].tpm";
connectAttr "Hand_L_orientConstraint1.w0" "Hand_L_orientConstraint1.tg[0].tw";
connectAttr "Hand_L.tx" "effector1.tx";
connectAttr "Hand_L.ty" "effector1.ty";
connectAttr "Hand_L.tz" "effector1.tz";
connectAttr "Torso.s" "Shoulder_R.is";
connectAttr "Shoulder_R.s" "ForeArm_R.is";
connectAttr "ForeArm_R.s" "Hand_R.is";
connectAttr "Hand_R_orientConstraint1.crx" "Hand_R.rx";
connectAttr "Hand_R_orientConstraint1.cry" "Hand_R.ry";
connectAttr "Hand_R_orientConstraint1.crz" "Hand_R.rz";
connectAttr "Hand_R.ro" "Hand_R_orientConstraint1.cro";
connectAttr "Hand_R.pim" "Hand_R_orientConstraint1.cpim";
connectAttr "Hand_R.jo" "Hand_R_orientConstraint1.cjo";
connectAttr "Hand_R.is" "Hand_R_orientConstraint1.is";
connectAttr "ArmL_CTRL1.r" "Hand_R_orientConstraint1.tg[0].tr";
connectAttr "ArmL_CTRL1.ro" "Hand_R_orientConstraint1.tg[0].tro";
connectAttr "ArmL_CTRL1.pm" "Hand_R_orientConstraint1.tg[0].tpm";
connectAttr "Hand_R_orientConstraint1.w0" "Hand_R_orientConstraint1.tg[0].tw";
connectAttr "Hand_R.tx" "effector2.tx";
connectAttr "Hand_R.ty" "effector2.ty";
connectAttr "Hand_R.tz" "effector2.tz";
connectAttr "Torso.pim" "Torso_pointConstraint1.cpim";
connectAttr "Torso.rp" "Torso_pointConstraint1.crp";
connectAttr "Torso.rpt" "Torso_pointConstraint1.crt";
connectAttr "Torso_CTRL.t" "Torso_pointConstraint1.tg[0].tt";
connectAttr "Torso_CTRL.rp" "Torso_pointConstraint1.tg[0].trp";
connectAttr "Torso_CTRL.rpt" "Torso_pointConstraint1.tg[0].trt";
connectAttr "Torso_CTRL.pm" "Torso_pointConstraint1.tg[0].tpm";
connectAttr "Torso_pointConstraint1.w0" "Torso_pointConstraint1.tg[0].tw";
connectAttr "Torso.ro" "Torso_orientConstraint1.cro";
connectAttr "Torso.pim" "Torso_orientConstraint1.cpim";
connectAttr "Torso.jo" "Torso_orientConstraint1.cjo";
connectAttr "Torso.is" "Torso_orientConstraint1.is";
connectAttr "Torso_CTRL.r" "Torso_orientConstraint1.tg[0].tr";
connectAttr "Torso_CTRL.ro" "Torso_orientConstraint1.tg[0].tro";
connectAttr "Torso_CTRL.pm" "Torso_orientConstraint1.tg[0].tpm";
connectAttr "Torso_orientConstraint1.w0" "Torso_orientConstraint1.tg[0].tw";
connectAttr "Waist.pim" "Waist_pointConstraint1.cpim";
connectAttr "Waist.rp" "Waist_pointConstraint1.crp";
connectAttr "Waist.rpt" "Waist_pointConstraint1.crt";
connectAttr "Waist_CTRL.t" "Waist_pointConstraint1.tg[0].tt";
connectAttr "Waist_CTRL.rp" "Waist_pointConstraint1.tg[0].trp";
connectAttr "Waist_CTRL.rpt" "Waist_pointConstraint1.tg[0].trt";
connectAttr "Waist_CTRL.pm" "Waist_pointConstraint1.tg[0].tpm";
connectAttr "Waist_pointConstraint1.w0" "Waist_pointConstraint1.tg[0].tw";
connectAttr "Waist.ro" "Waist_orientConstraint1.cro";
connectAttr "Waist.pim" "Waist_orientConstraint1.cpim";
connectAttr "Waist.jo" "Waist_orientConstraint1.cjo";
connectAttr "Waist.is" "Waist_orientConstraint1.is";
connectAttr "Waist_CTRL.r" "Waist_orientConstraint1.tg[0].tr";
connectAttr "Waist_CTRL.ro" "Waist_orientConstraint1.tg[0].tro";
connectAttr "Waist_CTRL.pm" "Waist_orientConstraint1.tg[0].tpm";
connectAttr "Waist_orientConstraint1.w0" "Waist_orientConstraint1.tg[0].tw";
connectAttr "Pelvis.s" "Thigh_L.is";
connectAttr "Thigh_L.s" "Shin_L.is";
connectAttr "Shin_L.s" "Foot_L.is";
connectAttr "Foot_L_orientConstraint1.crx" "Foot_L.rx";
connectAttr "Foot_L_orientConstraint1.cry" "Foot_L.ry";
connectAttr "Foot_L_orientConstraint1.crz" "Foot_L.rz";
connectAttr "Foot_L.ro" "Foot_L_orientConstraint1.cro";
connectAttr "Foot_L.pim" "Foot_L_orientConstraint1.cpim";
connectAttr "Foot_L.jo" "Foot_L_orientConstraint1.cjo";
connectAttr "Foot_L.is" "Foot_L_orientConstraint1.is";
connectAttr "LegL_CTRL.r" "Foot_L_orientConstraint1.tg[0].tr";
connectAttr "LegL_CTRL.ro" "Foot_L_orientConstraint1.tg[0].tro";
connectAttr "LegL_CTRL.pm" "Foot_L_orientConstraint1.tg[0].tpm";
connectAttr "Foot_L_orientConstraint1.w0" "Foot_L_orientConstraint1.tg[0].tw";
connectAttr "Foot_L.tx" "effector3.tx";
connectAttr "Foot_L.ty" "effector3.ty";
connectAttr "Foot_L.tz" "effector3.tz";
connectAttr "Pelvis.s" "Thigh_R.is";
connectAttr "Thigh_R.s" "Shin_R.is";
connectAttr "Shin_R.s" "Foot_R.is";
connectAttr "Foot_R_orientConstraint1.crx" "Foot_R.rx";
connectAttr "Foot_R_orientConstraint1.cry" "Foot_R.ry";
connectAttr "Foot_R_orientConstraint1.crz" "Foot_R.rz";
connectAttr "Foot_R.ro" "Foot_R_orientConstraint1.cro";
connectAttr "Foot_R.pim" "Foot_R_orientConstraint1.cpim";
connectAttr "Foot_R.jo" "Foot_R_orientConstraint1.cjo";
connectAttr "Foot_R.is" "Foot_R_orientConstraint1.is";
connectAttr "LegR_CTRL.r" "Foot_R_orientConstraint1.tg[0].tr";
connectAttr "LegR_CTRL.ro" "Foot_R_orientConstraint1.tg[0].tro";
connectAttr "LegR_CTRL.pm" "Foot_R_orientConstraint1.tg[0].tpm";
connectAttr "Foot_R_orientConstraint1.w0" "Foot_R_orientConstraint1.tg[0].tw";
connectAttr "Foot_R.tx" "effector4.tx";
connectAttr "Foot_R.ty" "effector4.ty";
connectAttr "Foot_R.tz" "effector4.tz";
connectAttr "LegR_CTRL_translateX.o" "LegR_CTRL.tx";
connectAttr "LegR_CTRL_translateY.o" "LegR_CTRL.ty";
connectAttr "LegR_CTRL_translateZ.o" "LegR_CTRL.tz";
connectAttr "LegR_CTRL_rotateX.o" "LegR_CTRL.rx";
connectAttr "LegR_CTRL_rotateY.o" "LegR_CTRL.ry";
connectAttr "LegR_CTRL_rotateZ.o" "LegR_CTRL.rz";
connectAttr "LegR_CTRL_visibility.o" "LegR_CTRL.v";
connectAttr "LegR_CTRL_scaleX.o" "LegR_CTRL.sx";
connectAttr "LegR_CTRL_scaleY.o" "LegR_CTRL.sy";
connectAttr "LegR_CTRL_scaleZ.o" "LegR_CTRL.sz";
connectAttr "LegL_CTRL_translateX.o" "LegL_CTRL.tx";
connectAttr "LegL_CTRL_translateY.o" "LegL_CTRL.ty";
connectAttr "LegL_CTRL_translateZ.o" "LegL_CTRL.tz";
connectAttr "LegL_CTRL_rotateX.o" "LegL_CTRL.rx";
connectAttr "LegL_CTRL_rotateY.o" "LegL_CTRL.ry";
connectAttr "LegL_CTRL_rotateZ.o" "LegL_CTRL.rz";
connectAttr "LegL_CTRL_visibility.o" "LegL_CTRL.v";
connectAttr "LegL_CTRL_scaleX.o" "LegL_CTRL.sx";
connectAttr "LegL_CTRL_scaleY.o" "LegL_CTRL.sy";
connectAttr "LegL_CTRL_scaleZ.o" "LegL_CTRL.sz";
connectAttr "Waist_CTRL_translateX.o" "Waist_CTRL.tx";
connectAttr "Waist_CTRL_translateY.o" "Waist_CTRL.ty";
connectAttr "Waist_CTRL_translateZ.o" "Waist_CTRL.tz";
connectAttr "Waist_CTRL_rotateX.o" "Waist_CTRL.rx";
connectAttr "Waist_CTRL_rotateY.o" "Waist_CTRL.ry";
connectAttr "Waist_CTRL_rotateZ.o" "Waist_CTRL.rz";
connectAttr "Waist_CTRL_visibility.o" "Waist_CTRL.v";
connectAttr "Waist_CTRL_scaleX.o" "Waist_CTRL.sx";
connectAttr "Waist_CTRL_scaleY.o" "Waist_CTRL.sy";
connectAttr "Waist_CTRL_scaleZ.o" "Waist_CTRL.sz";
connectAttr "Torso_CTRL_translateX.o" "Torso_CTRL.tx";
connectAttr "Torso_CTRL_translateY.o" "Torso_CTRL.ty";
connectAttr "Torso_CTRL_translateZ.o" "Torso_CTRL.tz";
connectAttr "Torso_CTRL_rotateX.o" "Torso_CTRL.rx";
connectAttr "Torso_CTRL_rotateY.o" "Torso_CTRL.ry";
connectAttr "Torso_CTRL_rotateZ.o" "Torso_CTRL.rz";
connectAttr "Torso_CTRL_visibility.o" "Torso_CTRL.v";
connectAttr "Torso_CTRL_scaleX.o" "Torso_CTRL.sx";
connectAttr "Torso_CTRL_scaleY.o" "Torso_CTRL.sy";
connectAttr "Torso_CTRL_scaleZ.o" "Torso_CTRL.sz";
connectAttr "Head_CTRL_Mouth.o" "Head_CTRL.Mouth";
connectAttr "Head_CTRL_translateX.o" "Head_CTRL.tx";
connectAttr "Head_CTRL_translateY.o" "Head_CTRL.ty";
connectAttr "Head_CTRL_translateZ.o" "Head_CTRL.tz";
connectAttr "Head_CTRL_rotateX.o" "Head_CTRL.rx";
connectAttr "Head_CTRL_rotateY.o" "Head_CTRL.ry";
connectAttr "Head_CTRL_rotateZ.o" "Head_CTRL.rz";
connectAttr "Head_CTRL_visibility.o" "Head_CTRL.v";
connectAttr "Head_CTRL_scaleX.o" "Head_CTRL.sx";
connectAttr "Head_CTRL_scaleY.o" "Head_CTRL.sy";
connectAttr "Head_CTRL_scaleZ.o" "Head_CTRL.sz";
connectAttr "ArmL_CTRL1_translateX.o" "ArmL_CTRL1.tx";
connectAttr "ArmL_CTRL1_translateY.o" "ArmL_CTRL1.ty";
connectAttr "ArmL_CTRL1_translateZ.o" "ArmL_CTRL1.tz";
connectAttr "ArmL_CTRL1_rotateX.o" "ArmL_CTRL1.rx";
connectAttr "ArmL_CTRL1_rotateY.o" "ArmL_CTRL1.ry";
connectAttr "ArmL_CTRL1_rotateZ.o" "ArmL_CTRL1.rz";
connectAttr "ArmL_CTRL1_visibility.o" "ArmL_CTRL1.v";
connectAttr "ArmL_CTRL1_scaleX.o" "ArmL_CTRL1.sx";
connectAttr "ArmL_CTRL1_scaleY.o" "ArmL_CTRL1.sy";
connectAttr "ArmL_CTRL1_scaleZ.o" "ArmL_CTRL1.sz";
connectAttr "ArmL_CTRL_translateX.o" "ArmL_CTRL.tx";
connectAttr "ArmL_CTRL_translateY.o" "ArmL_CTRL.ty";
connectAttr "ArmL_CTRL_translateZ.o" "ArmL_CTRL.tz";
connectAttr "ArmL_CTRL_rotateX.o" "ArmL_CTRL.rx";
connectAttr "ArmL_CTRL_rotateY.o" "ArmL_CTRL.ry";
connectAttr "ArmL_CTRL_rotateZ.o" "ArmL_CTRL.rz";
connectAttr "ArmL_CTRL_visibility.o" "ArmL_CTRL.v";
connectAttr "ArmL_CTRL_scaleX.o" "ArmL_CTRL.sx";
connectAttr "ArmL_CTRL_scaleY.o" "ArmL_CTRL.sy";
connectAttr "ArmL_CTRL_scaleZ.o" "ArmL_CTRL.sz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "Skeleton.id";
connectAttr "file1.oc" "lambert2.c";
connectAttr "file4.oc" "lambert2.ambc";
connectAttr "bump2d1.o" "lambert2.n";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pCube6Shape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "file3.oa" "bump2d1.bv";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Pelvis.wm" "skinCluster1.ma[0]";
connectAttr "Waist.wm" "skinCluster1.ma[1]";
connectAttr "Torso.wm" "skinCluster1.ma[2]";
connectAttr "Head.wm" "skinCluster1.ma[3]";
connectAttr "Snout.wm" "skinCluster1.ma[4]";
connectAttr "Nose.wm" "skinCluster1.ma[5]";
connectAttr "Jaw.wm" "skinCluster1.ma[6]";
connectAttr "Chin.wm" "skinCluster1.ma[7]";
connectAttr "Shoulder_L.wm" "skinCluster1.ma[8]";
connectAttr "ForeArm_L.wm" "skinCluster1.ma[9]";
connectAttr "Hand_L.wm" "skinCluster1.ma[10]";
connectAttr "Shoulder_R.wm" "skinCluster1.ma[11]";
connectAttr "ForeArm_R.wm" "skinCluster1.ma[12]";
connectAttr "Hand_R.wm" "skinCluster1.ma[13]";
connectAttr "Thigh_L.wm" "skinCluster1.ma[14]";
connectAttr "Shin_L.wm" "skinCluster1.ma[15]";
connectAttr "Foot_L.wm" "skinCluster1.ma[16]";
connectAttr "Thigh_R.wm" "skinCluster1.ma[17]";
connectAttr "Shin_R.wm" "skinCluster1.ma[18]";
connectAttr "Foot_R.wm" "skinCluster1.ma[19]";
connectAttr "Pelvis.liw" "skinCluster1.lw[0]";
connectAttr "Waist.liw" "skinCluster1.lw[1]";
connectAttr "Torso.liw" "skinCluster1.lw[2]";
connectAttr "Head.liw" "skinCluster1.lw[3]";
connectAttr "Snout.liw" "skinCluster1.lw[4]";
connectAttr "Nose.liw" "skinCluster1.lw[5]";
connectAttr "Jaw.liw" "skinCluster1.lw[6]";
connectAttr "Chin.liw" "skinCluster1.lw[7]";
connectAttr "Shoulder_L.liw" "skinCluster1.lw[8]";
connectAttr "ForeArm_L.liw" "skinCluster1.lw[9]";
connectAttr "Hand_L.liw" "skinCluster1.lw[10]";
connectAttr "Shoulder_R.liw" "skinCluster1.lw[11]";
connectAttr "ForeArm_R.liw" "skinCluster1.lw[12]";
connectAttr "Hand_R.liw" "skinCluster1.lw[13]";
connectAttr "Thigh_L.liw" "skinCluster1.lw[14]";
connectAttr "Shin_L.liw" "skinCluster1.lw[15]";
connectAttr "Foot_L.liw" "skinCluster1.lw[16]";
connectAttr "Thigh_R.liw" "skinCluster1.lw[17]";
connectAttr "Shin_R.liw" "skinCluster1.lw[18]";
connectAttr "Foot_R.liw" "skinCluster1.lw[19]";
connectAttr "Pelvis.obcc" "skinCluster1.ifcl[0]";
connectAttr "Waist.obcc" "skinCluster1.ifcl[1]";
connectAttr "Torso.obcc" "skinCluster1.ifcl[2]";
connectAttr "Head.obcc" "skinCluster1.ifcl[3]";
connectAttr "Snout.obcc" "skinCluster1.ifcl[4]";
connectAttr "Nose.obcc" "skinCluster1.ifcl[5]";
connectAttr "Jaw.obcc" "skinCluster1.ifcl[6]";
connectAttr "Chin.obcc" "skinCluster1.ifcl[7]";
connectAttr "Shoulder_L.obcc" "skinCluster1.ifcl[8]";
connectAttr "ForeArm_L.obcc" "skinCluster1.ifcl[9]";
connectAttr "Hand_L.obcc" "skinCluster1.ifcl[10]";
connectAttr "Shoulder_R.obcc" "skinCluster1.ifcl[11]";
connectAttr "ForeArm_R.obcc" "skinCluster1.ifcl[12]";
connectAttr "Hand_R.obcc" "skinCluster1.ifcl[13]";
connectAttr "Thigh_L.obcc" "skinCluster1.ifcl[14]";
connectAttr "Shin_L.obcc" "skinCluster1.ifcl[15]";
connectAttr "Foot_L.obcc" "skinCluster1.ifcl[16]";
connectAttr "Thigh_R.obcc" "skinCluster1.ifcl[17]";
connectAttr "Shin_R.obcc" "skinCluster1.ifcl[18]";
connectAttr "Foot_R.obcc" "skinCluster1.ifcl[19]";
connectAttr "pCube6ShapeOrig.w" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId3.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCube6Shape.iog.og[1]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId3.msg" "tweakSet1.gn" -na;
connectAttr "pCube6Shape.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupParts1.og" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "Pelvis.msg" "bindPose1.m[0]";
connectAttr "Waist.msg" "bindPose1.m[1]";
connectAttr "Torso.msg" "bindPose1.m[2]";
connectAttr "Head.msg" "bindPose1.m[3]";
connectAttr "Snout.msg" "bindPose1.m[4]";
connectAttr "Nose.msg" "bindPose1.m[5]";
connectAttr "Jaw.msg" "bindPose1.m[6]";
connectAttr "Chin.msg" "bindPose1.m[7]";
connectAttr "Shoulder_L.msg" "bindPose1.m[8]";
connectAttr "ForeArm_L.msg" "bindPose1.m[9]";
connectAttr "Hand_L.msg" "bindPose1.m[10]";
connectAttr "Shoulder_R.msg" "bindPose1.m[11]";
connectAttr "ForeArm_R.msg" "bindPose1.m[12]";
connectAttr "Hand_R.msg" "bindPose1.m[13]";
connectAttr "Thigh_L.msg" "bindPose1.m[14]";
connectAttr "Shin_L.msg" "bindPose1.m[15]";
connectAttr "Foot_L.msg" "bindPose1.m[16]";
connectAttr "Thigh_R.msg" "bindPose1.m[17]";
connectAttr "Shin_R.msg" "bindPose1.m[18]";
connectAttr "Foot_R.msg" "bindPose1.m[19]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[3]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[2]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[2]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[0]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[0]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "Pelvis.bps" "bindPose1.wm[0]";
connectAttr "Waist.bps" "bindPose1.wm[1]";
connectAttr "Torso.bps" "bindPose1.wm[2]";
connectAttr "Head.bps" "bindPose1.wm[3]";
connectAttr "Snout.bps" "bindPose1.wm[4]";
connectAttr "Nose.bps" "bindPose1.wm[5]";
connectAttr "Jaw.bps" "bindPose1.wm[6]";
connectAttr "Chin.bps" "bindPose1.wm[7]";
connectAttr "Shoulder_L.bps" "bindPose1.wm[8]";
connectAttr "ForeArm_L.bps" "bindPose1.wm[9]";
connectAttr "Hand_L.bps" "bindPose1.wm[10]";
connectAttr "Shoulder_R.bps" "bindPose1.wm[11]";
connectAttr "ForeArm_R.bps" "bindPose1.wm[12]";
connectAttr "Hand_R.bps" "bindPose1.wm[13]";
connectAttr "Thigh_L.bps" "bindPose1.wm[14]";
connectAttr "Shin_L.bps" "bindPose1.wm[15]";
connectAttr "Foot_L.bps" "bindPose1.wm[16]";
connectAttr "Thigh_R.bps" "bindPose1.wm[17]";
connectAttr "Shin_R.bps" "bindPose1.wm[18]";
connectAttr "Foot_R.bps" "bindPose1.wm[19]";
connectAttr "layerManager.dli[2]" "mesh.id";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "Head_CTRL.Mouth" "Snout_translateX.i";
connectAttr "Head_CTRL.Mouth" "Snout_translateY.i";
connectAttr "Head_CTRL.Mouth" "Snout_translateZ.i";
connectAttr "Head_CTRL.Mouth" "Snout_rotateX.i";
connectAttr "Head_CTRL.Mouth" "Snout_rotateY.i";
connectAttr "Head_CTRL.Mouth" "Snout_rotateZ.i";
connectAttr "Head_CTRL.Mouth" "Jaw_translateX.i";
connectAttr "Head_CTRL.Mouth" "Jaw_translateY.i";
connectAttr "Head_CTRL.Mouth" "Jaw_translateZ.i";
connectAttr "Head_CTRL.Mouth" "Jaw_rotateX.i";
connectAttr "Head_CTRL.Mouth" "Jaw_rotateY.i";
connectAttr "Head_CTRL.Mouth" "Jaw_rotateZ.i";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCube6Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"C:/Users/user/Desktop/EnemyMaps_vcols.tga\" 3033726246 \"C:/Users/user/Desktop/EnemyMaps_vcols.tga\" \"sourceImages\"\n1\n\"file2\" \"fileTextureName\" \"C:/Users/user/Desktop/EnemyMaps_occlusion.tga\" 2309284480 \"C:/Users/user/Desktop/EnemyMaps_occlusion.tga\" \"sourceImages\"\n2\n\"file3\" \"fileTextureName\" \"C:/Users/user/Desktop/EnemyMaps_normals.tga\" 841935618 \"C:/Users/user/Desktop/EnemyMaps_normals.tga\" \"sourceImages\"\n3\n\"file4\" \"fileTextureName\" \"C:/Users/user/Desktop/EnemyMaps_occlusion.tga\" 2309284480 \"C:/Users/user/Desktop/EnemyMaps_occlusion.tga\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Enemy(MoveAnimation).ma
