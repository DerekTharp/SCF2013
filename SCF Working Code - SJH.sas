*This is working SCF code that manipulates the dataset created from the Fed's macrocode;
LIBNAME OUT 'C:\Users\********\dropbox\Data\SCF';
data out.SCFworking;
set out.SCF92_13;
*****************
KEEP LIST
*****************;
keep
/*from Fed*/
REFIN_EVER HEXTRACT_EVER PURCH1 
PAYMORT1 PAYMORT2 PAYMORT3 PAYMORTO PAYLOC1
    PAYLOC2 PAYLOC3 PAYLOCO
    PAYHI1 PAYHI2 PAYLC1 PAYLC2 PAYLCO PAYORE1 PAYORE2 PAYORE3
    PAYOREV PAYVEH1 PAYVEH2 PAYVEH3 PAYVEH4 PAYVEHM PAYVEO1 PAYVEO2
    PAYVEOM PAYEDU1 PAYEDU2 PAYEDU3 PAYEDU4 PAYEDU5 PAYEDU6 PAYEDU7
    PAYILN1 PAYILN2 PAYILN3 PAYILN4 PAYILN5 PAYILN6 PAYILN7 PAYMARG
    PAYINS PAYPEN1 PAYPEN2 PAYPEN3 PAYPEN4 PAYPEN5 PAYPEN6 FARMBUS_KG MORT1
    MORT2 MORT3 REVPAY MORTPAY CONSPAY PIRMORT PIRCONS PIRREV
    PENACCTWD MMDA MMMF STMUTF TFBMUTF GBMUTF OBMUTF COMUTF 
    OMUTF HSTOCKS NSTOCKS WILSH NOTXBND MORTBND GOVTBND OBND 
    FUTPEN CURRPEN DBPLANCJ DBPLANT DCPLANCJ BPLANCJ ANNUIT TRUSTS 
    EQUITINC HBROK HTRAD NTRAD OWN NOWN LEASE NLEASE 
    NVEHIC FARMBUS NHNFIN LIFECL LF 
    WSAVED SPENDMOR SPENDLESS EXPENSHILO EHCHKG IRAKH THRIFT HHSEX
    FOODHOME FOODAWAY FOODDELV PIR40 LEVRATIO DEBT2INC TURNDOWN
    FEARDENIAL TURNFEAR LATE HPAYDAY BNKRUPLAST5 NOCCBAL

    RACE HOUSECL ASSET FIN LIQ CDS SAVING NMMF STOCKS BOND RETQLIQ
    SAVBND CASHLI OTHMA OTHFIN CHECKING MMA CALL NFIN VEHIC HOUSES
    ORESRE NNRESRE BUS OTHNFIN DEBT PIRTOTAL MRTHEL RESDBT OTHLOC CCBAL
    INSTALL ODEBT NETWORTH HOMEEQ TPAY PLOAN1-PLOAN8 LLOAN1-LLOAN12
    EDUC OCCAT1 KGTOTAL SAVRES1-SAVRES9 ANYPEN BUSVEH
    NBUSVEH LATE60 EQUITY DEQ VLEASE RETEQ HLIQ
    VEH_INST EDN_INST OTH_INST HELOC NH_MORT NOCHK WHYNOCKG HDEBT
    KGHOUSE KGORE KGBUS KGSTMF 
    HPRIM_MORT HSEC_MORT PURCH2 HMORT2 HELOC_YN ACTBUS NONACTBUS
    DONTWRIT MINBAL DONTLIKE SVCCHG NOMONEY CANTMANG CREDIT 
    DONTWANT OTHER CKLOCATION CKLOWFEEBAL CKMANYSVCS CKRECOMFRND
    CKPERSONAL CKCONNECTN CKLONGTIME CKSAFETY CKCONVPAYRL CKOTHCHOOSE
    FAMSTRUCT HBUS HCHECK HSAVING HMMA HCALL      
    HCDS HNMMF HBOND HRETQLIQ HSAVBND HCASHLI HOTHMA HOTHFIN HEQUITY    
    HFIN HVEHIC HHOUSES HORESRE HNNRESRE HOTHNFIN HNFIN HASSET HMRTHEL    
    HHELOC HNH_MORT HOTHLOC HRESDBT HCCBAL HVEH_INST HEDN_INST HOTH_INST  
    HINSTALL HODEBT HSTOCKS 
WGT WILSH MARRIED KIDS
    AGE INCCL2 INCOME NORMINC WAGEINC BUSSEFARMINC INTDIVINC KGINC 
    SSRETINC TRANSFOTHINC RENTINC AGECL EDCL LIFECL FAMSTRUCT RACECL h_racecl
    RACE h_race HOUSECL ASSET FIN LIQ CDS
    NMMF STOCKS BOND RETQLIQ SAVBND CASHLI OTHMA OTHFIN CHECKING
    MMA CALL HFIN HLIQ HCDS SAVING HSAVING HNMMF HSTOCKS HBOND
    HRETQLIQ HSAVBND HCASHLI HOTHMA HOTHFIN HCHECK HMMA HCALL NFIN
    VEHIC HOUSES ORESRE NNRESRE BUS OTHNFIN HNFIN HVEHIC HHOUSES
    HORESRE HNNRESRE HBUS HOTHNFIN DEBT MRTHEL RESDBT OTHLOC CCBAL
    INSTALL ODEBT HDEBT HMRTHEL 
    HELOC_YN HRESDBT HOTHLOC HCCBAL HINSTALL
    HODEBT HASSET NETWORTH HOMEEQ TPAY PIRTOTAL TPLOAN PLOAN1-PLOAN8
    PLOANB1-PLOANB8
    TLLOAN LLOAN1-LLOAN12 EDUC X7401 X7402 OCCAT1 NHNFIN
    KGTOTAL SAVRES1-SAVRES9 ANYPEN DBPLANCJ
    DBPLANT DCPLANCJ BPLANCJ BUSVEH NBUSVEH LATE60 EQUITY EQUITINC
    HEQUITY DEQ OWN NOWN VOWN LEASE NLEASE VLEASE NVEHIC 
    NOCHK EHCHKG X3503 HBROK HTRAD NSTOCKS NTRAD
    RETEQ X3006 NOTXBND MORTBND GOVTBND OBND STMUTF TFBMUTF GBMUTF
    OBMUTF COMUTF IRAKH PENEQ THRIFT CURRPEN FUTPEN MORTPAY CONSPAY REVPAY 
    PIRMORT PIRCONS PIRREV WHYNOCKG VEH_INST HVEH_INST EDN_INST
    HEDN_INST OTH_INST HOTH_INST HELOC HHELOC NH_MORT
    HNH_MORT ANNUIT TRUSTS ACTBUS NONACTBUS 
    OUTMARG OUTPEN HHSEX SAVEQ
    INTDIVINC KGINC SSRETINC TRANSFOTHINC AGECL EDCL RACECL Y1 YY1 X42001

/*from SJH working*/
Year implic uwgt wgt nwgt1 nwgt wt5 yi yyi racediffer
x8000 x19 x14 x7727 x7728 x7396 x7381 x6101 x5901 x8021 x103 x8023 x105
x7101 x7102 x7103 x7104 x7105 x7106 x7107 x7108 x7109 x7110 x6849
X6861 X6862 X6863 X6864
x7112 x7113 x7114 x7115 x7116 x7117 x7118 x7119 x7120 
x7121 X6865 X6866 X6867 X6868 X6869 x4706 x4106 x5111 x4511 x6678 x6670 x4511 x5111 X6357 x3014
x7395 x7380 x4714 x4114 x4135 x4735 x4136 x4736 x4137 x4737
x7411 x7401 x6443 x3008 x6525 x6124 x6030 x414
x7708 x7681 j7681 j7708 X7125 X6913 X6914 x6408
X6670 X6671 X6672 X6673 X6674 X6675 X6676 X6677 
X6678 X6679 X6680 X6681 X6682 X6683 X6684 X6685 x401 x402 x403 x404 x405 x406 x7575 x7700 x7729 j7727 j7728;
run;

data out.scfsmall;
set out.scfworking;
where year>=2000; *use this statement to restrict to certain years;

*Age of respondent;
	If x8000=1 then respage=x19;else respage=x14;
	respagesq=respage*respage;
*age of spouse;
	if x8000=1 then spage=x14; else spage=x19;
*age of household;
	if spage=0 then HHage=respage; else HHage=(respage+spage)/2;
*dummies for age;
	*respondent;
	if respage<=35 then resp35=1; else resp35=0;
	if respage>35 and respage<=45 then resp45=1; else resp45=0;
	if respage>45 and respage<=55 then resp55=1; else resp55=0;
	if respage>55 and respage<=65 then resp65=1; else resp65=0;
	if respage>65 then resp75=1; else resp75=0;
	*spouse;
	if spage<=35 then sp35=1; else sp35=0;
	if spage>35 and spage<=45 then sp45=1; else sp45=0;
	if spage>45 and spage<=55 then sp55=1; else sp55=0;
	if spage>55 and spage<=65 then sp65=1; else sp65=0;
	if spage>65 then sp75=1; else sp75=0;
	*household;
	if HHage<=35 then HH35=1; else HH35=0;
	if HHage>35 and HHage<=45 then HH45=1; else HH45=0;
	if HHage>45 and HHage<=55 then HH55=1; else HH55=0;
	if HHage>55 and HHage<=65 then HH65=1; else HH65=0;
	if HHage>65 then HH75=1; else HH75=0;

	*retirement age
	                Thinking now of the future, in what year or at what age
                (do you/does your husband/does your wife/
                does your partner/does your spouse) expect to stop
                working full-time?

X7237(#1)       YEAR:
X7304(#2)           -2.    *NEVER STOP
                     0.     Inap. (not doing any work for pay: X4105=5/
                            X4705=5: /no spouse/partner: not
                            currently working full-time: X4511^=1/
                            X5111^=1:
                            volunteer work not considered a job:
                            X7591=5/X7589=5)
X7728(#1)       AT AGE:
X7727(#2)           -2.    *NEVER STOP
                     0.     Inap. (not doing any work for pay: X4105=5/
                            X4705=5: no spouse/partner: not
                            currently working full-time: X4511^=1/
                            X5111^=1:
                            volunteer work not considered a job:
                            X7591=5/X7589=5);


if x8000=1 then respretage=x7727; else respretage=x7728;
if x8000=1 then spretage=x7728; else spretage=x7727;
if respretage = -2 then noretire=1; else noretire=0;

*earliest retirement age;
minretage=min(respretage, spretage);
*latest retirement age;
maxretage=max(respretage, spretage);

/****************
Life Expectancy
*****************

X7381(#1)       About how old do you think you will live to be?
X7396(#2)       
                If we asked your (husband/wife/partner/spouse), about how
                old do you think (he/she/he or she) would say that (he/she/
                he or she) expects to live to be?
                
                AGE:
                     0.     Inap. (no spouse/partner)*/

if x8000=1 then respLE=x7396; else respLE=x7381;
if x8000=1 then spLE=x7381; else spLE=x7396;

hLE=max(respLE,spLE);

*Remaining work life expectancy (RWLE);
respRWLE=respretage-respage;
if spage>0 then do;
	spRWLE = spretage-spage;
	end;
hRWLE=max(respRWLE,spRWLE); *max household RWLE;

*Remaining Retirement Life Expectancy (RLE);
respRLE=resple-respretage;
*education of respondent
	X5901(#1)       What is the highest grade of school or year of college you
X6101(#2)       completed?
                
                I'd like to ask you some questions about your (husband/wife/
                partner/spouse)'s background. What is the highest grade of
                school or year of college (he/she/he or she) completed?
                
                RECORD THE HIGHEST LEVEL OF EDUCATION COMPLETED, NOT THE
                TIME IT TOOK TO COMPLETE IT.  DO NOT INCLUDE TRADE SCHOOLS
                AS COLLEGE.

                    -1.    *NO GRADES COMPLETED
                     1.    *1ST GRADE
                     2.    *2ND GRADE
                     3.    *3RD GRADE
                     4.    *4TH GRADE
                     5.    *5TH GRADE
                     6.    *6TH GRADE
                     7.    *7TH GRADE
                     8.    *8TH GRADE
                     9.    *9TH GRADE
                    10.    *10TH GRADE
                    11.    *11TH GRADE
                    12.    *12TH GRADE
                    13.    *1 YEAR OF COLLEGE
                    14.    *2 YEARS OF COLLEGE
                    15.    *3 YEARS OF COLLEGE
                    16.    *4 YEARS OF COLLEGE
                    17.    *GRADUATE SCHOOL
                     0.     Inap. (no spouse/partner);


	if x8000=1 then respED=x6101; else respED=x5901;
	if respED<12 then respHSdrop=1; else respHSdrop=0;
	if respED=12 then respHS=1; else respHS=0;
	if respED in (13,14,15) then respSC=1; else respSC=0;
	if respED=16 then respBS=1; else respBS=0;
	if respED=17 then respGRAD=1; else respGRAD=0;
	if respED>15 then respBSG=1; else respBSG=0;
	if respED<13 then respHSL=1; else respHSL=0;

	if x8000=1 then spED=x5901; else spED=x6101;
	if spED^=0 then do;
		if spED<12 then spHSdrop=1; else spHSdrop=0;
		if spED=12 then spHS=1; else spHS=0;
		if spED in (13,14,15) then spSC=1; else spSC=0;
		if spED=16 then spBS=1; else spBS=0;
		if spED=17 then spGRAD=1; else spGRAD=0;
		if spED>15 then spBSG=1; else spBSG=0;
		if spED<13 then spHSL=1; else spHSL=0;
		end;
	else if spED=0 then do;
		spHSdrop=.;
		spHS=.;
		spSC=.;
		spBS=.;
		spGRAD=.;
		spBSG=.;
		spHSL=.;
		end;
*highest ed level of household;
	HHed=max(respED, spED);
	if HHed<12 then HHdrop=1; else HHdrop=0;
	if HHed=12 then HHHS=1; else HHHS=0;
	if HHed in (13,14,15) then HHSC=1; else HHSC=0;
	if HHed=16 then HHBS=1; else HHBS=0;
	if HHed=17 then HHGRAD=1; else HHGRAD=0;
	if HHed>15 then HHBSG=1; else HHBSG=0;
	if HHed<13 then HHHSL=1; else HHHSL=0;

/***************************
OTHER INDEPENDENT VARIABLES
***************************;
*sex & marital status;
*X8021(#1)       CODE SEX WITHOUT ASKING.  IF NECESSARY, SAY:
X103(#2)        I am required to ask your sex.
X109(#3)        
X115(#4)        What is (your spouse's/your partner's/that person's) sex?
X121(#5)
X127(#6)             1.    *MALE
X133(#7)             2.    *FEMALE
X203(#8)             0.     Inap. (/no further persons);

*X8023(#1)       (Are you/Is your [RELATIONSHIP] currently married or
X105(#2)        living with a partner, separated, divorced,
X111(#3)        widowed, or (have you/has [he/she]) never been married?
X117(#4)        
X123(#5)        (NOTE: if R lives with a partner who is financially
X129(#6)        interdependent, this variable is always coded '2' for the
X135(#7)        head and partner.  The legal marital status of R and of the
X205(#8)        partner are given by X7372 and X7018 respectively.)
X211(#9)
X217(#10)            1.    *MARRIED
X223(#11)            2.    *LIVING WITH PARTNER
X229(#12)            3.    *SEPARATED
                     4.    *DIVORCED
                     5.    *WIDOWED
                     6.    *NEVER MARRIED
                     0.     Inap. (person age 17 or less: No Further persons);*/

if x8000=5 then respsex=x8021;else if x8000=1 then respsex=x103;
if x103=x8021 then samesex=1; else samesex=0;
if x8000=5 then relation=x8023; else if x8000=1 then relation=x105;
if respsex=1 and (relation in (3 4 5 6)) then singlemale=1; else singlemale=0;  *single male;
if respsex=2 and (relation in (3 4 5 6)) then singlefemale=1; else singlefemale=0;  *single female;
if relation=1 then married=1; else married=0; *married;
if relation=2 then partner=1; else partner=0; *partner;
if relation in(1,2) then couple=1; else couple=0; *couple (ie, married or partner);
if couple=1 then agediff=abs(respage-spage); else agediff=.;

*Dummy variables for race of respondent;
  if race=1 then white=1; else white=0;             *white;
  if race=2 then black=1; else black=0;             *black;
  if race=3 then hispanic=1; else hispanic=0;       *hispanic;
  if race>3 then asianother=1; else asianother=0;  *asianother;

/*natural log of income*/
if income > 0 then loginc=log(income);
else if income=0 then loginc=log(1); 
else if income<0 then loginc=log(.01);

/*natural log of networth*/
if networth > 0 then logNW=log(networth);
else if networth=0 then logNW=log(1);
else if networth<0 then logNW=log(.01);

/*natural log of financial assets*/
if fin> 0 then logfin=log(fin); else logfin=0;

/*natural log of nonfinancial assets*/
if nfin> 0 then lognfin=log(nfin); else lognfin=0;

/*natural log of debt*/
if debt>0 then logdebt=log(debt); else logdebt=0;



**************************
FINANCIAL PLANNER USE
**************************;

/*Credit Advice*/
  ARRAY creditadv {*} x7101 x7102 x7103 x7104 x7105 x7106 x7107 x7108 x7109 x7110 x6849
 X6861 X6862 X6863 X6864;
if year=1995 then do;
 cplanner=0;
 caccountant=0; 
 cbanker=0;
 cbroker=0; 
 clawyer=0;
      DO I=1 TO DIM(CREDITadv);
        if creditadv{I}=5  then cplanner=1;
        if creditadv{I}=3 then caccountant=1; 
        if creditadv{I}=12 then cbanker=1;
        if creditadv{I}=5 then cbroker=1; 
        if creditadv{I}=4 then clawyer=1;
      END;
/*Insurance agent and internet not in 95*/
	cagent=0;
	cinternet=0;
end;
else do; 
 cplanner=0;
 caccountant=0; 
 cbanker=0;
 cbroker=0; 
 cagent=0;
 cinternet=0;
 clawyer=0;
      DO I=1 TO DIM(CREDITadv);
        if creditadv{I}=12  then cplanner=1;
        if creditadv{I}=9 then caccountant=1; 
        if creditadv{I}=10 then cbanker=1;
        if creditadv{I}=11 then cbroker=1; 
        if creditadv{I}=24 then cagent=1;
		if creditadv{I}=5 then cinternet=1;
        if creditadv{I}=8 then clawyer=1;
      END;
	end;  
*SAVINGS AND INVESTING ADVICE;
  ARRAY invadv {*} x7112 x7113 x7114 x7115 x7116 x7117 x7118 x7119 x7120 
x7121 X6865 X6866 X6867 X6868 X6869;
splanner=0;
saccountant=0;
sbanker=0;
sbroker=0;
slawyer=0;
if year=1995 then do;
      DO I=1 TO DIM(invadv);
        if invadv{I}=12 then splanner=5;
        if invadv{I}=9  then saccountant=3; 
        if invadv{I}=10  then sbanker=12;
        if invadv{I}=11   then sbroker=5;
        if creditadv{I}=4 then slawyer=1;  
      END; 
/*Insurance agent and internet not in 95*/
	sagent=0;
	sinternet=0;
end;

else do;
splanner=0;
saccountant=0;
sbanker=0;
sbroker=0;
sagent=0;
sinternet=0;
slawyer=0;
       DO I=1 TO DIM(invadv);
        if invadv{I}=12 then splanner=1;
        if invadv{I}=9  then saccountant=1; 
        if invadv{I}=10  then sbanker=1;
        if invadv{I}=11   then sbroker=1;
        if invadv{I}=24 then sagent=1;
        if invadv{I}=5   then sinternet=1;
        if creditadv{I}=8 then slawyer=1;  
      END; 
end;

/*dummy variables for different kinds of advice*/
if cinternet=1 or sinternet=1 then internet=1;else internet=0;
if splanner=1 or sbroker=1 or cplanner=1 or cbroker=1 then brokerplanner=1;else brokerplanner=0;
IF CPLANNER=1 OR SPLANNER=1 THEN PLANNER=1; ELSE PLANNER=0; *financial planner use;
if CPLANNER=1 and SPLANNER=1 then COMPfp=1; else COMPfp=0; *comprehensive financial planner use;
if clawyer=1 or slawyer=1 then lawyer=1;else lawyer=0;
if sbanker=1 or cbanker=1 then banker=1;else banker=0;
if cbroker=1 or sbroker=1 then broker=1;else broker=0;
if cagent=1 or sagent=1 then agent=1;else agent=0;
if caccountant=1 or saccountant=1 then accountant=1; else accountant=0;

/*dummy variable for a paid advisor*/
if planner=1 or lawyer=1 or broker=1 or agent=1 or banker=1 or accountant=1 then paidadv=1; else paidadv=0;

/*Self-employed status
X4106(#1)       Next are some questions about your (husband/wife/
X4706(#2)       partner/spouse)'s current, main job.  (Do you/Does he/
                Does she/Does he or she) work for someone else,
                (are you/is he/is she/is he or she) self-employed,
                or something else?
                
                IF (R/SP) IS BOTH SELF-EMPLOYED AND WORKS FOR SOMEONE ELSE,
                SELECT THE ONE (R/SP) WORKS FOR THE MOST.

                CODE "OTHER" ONLY IF NO OTHER CATEGORY APPLIES AT ALL..

                     1.    *Someone else
                     2.    *Self-employed; other closely held business owned
                            by PEU
                     3.    *PARTNERSHIP; law firm; medical/dental partnership;
                            other non-publicly-traded business in which R/S/P
                            has an interest
                     4.    *CONSULTANT/CONTRACTOR
                    -7.    *OTHER
                     0.     Inap. (not doing any work for pay:
                            X4105=5/X4705=5; volunteer work
                            not considered a job: X7591=5/X7589=5;
                            /no spouse/partner)
                *********************************************************
                    FOR THE PUBLIC DATA SET, CODES 3 AND 4 ARE COMBINED
                    WITH CODE 2
                *********************************************************/
if x8000=1 then respSE=x4706; else respSE=x4106;
if x8000=1 then spSE=x4106; else spSE=x4706;
if respSE=2 then rselfemp=1; else rselfemp=0;
if spSE=2 then spselfemp=1; else spselfemp=0;
HHselfemp=max(rselfemp, spselfemp);

/*Working status of respondent. Categories are Unemployed, Part-time, Full-Time, and Retired*/
if x8000=1 then respworking=x5111; else respworking=x4511; 
if respworking=1 then respft=1; else respft=0; *respondent full-time;
if respworking=2 then resppt=1; else resppt=0; *respondent part-time;
if x8000=1 then do; 
	if x6678=7 then respretired=1; else respretired=0; *respondent retired;
	end;
if x8000=5 then do;
	if x6670=7 then respretired=1; else respretired=0;
	end;
if respworking=0 and respretired=0 then respunemployed=1; else respunemployed=0; *respondent unemployed;

*Working status of spouse;
if x8000=1 then spworking=x4511; else spworking=x5111;
if spworking=1 then spft=1; else spft=0; *spouse full-time;
if spworking=2 then sppt=1; else sppt=0; *spouse part-time;
if x8000=5 then do; 
	if x6678=7 then spretired=1; else spretired=0; *spouse retired;
	end;
if x8000=1 then do;
	if x6670=7 then spretired=1; else spretired=0;
	end;
if spworking=0 and spretired=0 then spunemployed=1; else spunemployed=0; *spouse unemployed;

*working status of household;
if respft=1 or resppt=1 then hhworking=1; else hhworking=0; *household working;
hhretired=respretired; *household retired;
hhunemployed=respunemployed; *household unemployed;

if singlefemale^=1 and singlemale^=1 then do;
	hhworking= max(respft,resppt,spft,sppt);
	if respretired=1 and spretired=1 then hhretired=1; else hhretired=0; *both partners retired;
	if respunemployed=1 and spunemployed=1 then hhunemployed=1; else hhunemployed=0; *both partners unemployed;
	end;

/*health insurance coverage - all covered?

X6357           Is everyone in your household covered by
                some type of health insurance?

                     1.    *YES
                     5.    *NO
                     0.     Inap. (no health insurance: X6341^=1)*/

IF X6357=1 THEN allhealth=1; else allhealth=0; *everyone covered;

/*X6341           (Including household members with independent finances, are/
                Are) you (or anyone in your family living here) covered by any
                type of public or private health insurance?

                     1.    *YES
                     5.    *NO


X6342 X6343 X6344 X6345 X6346 X6347 X6348 X6349 X6350

                What types of plans are these: Medicare, Medicaid, VA,
                Tri-Care, SCHIP, employer- or union-provided plans, a personal
                plan, or some other type of public or private plans?
     
                TREAT PRIVATE PLANS PAID FOR BY MEDICARE (MEDICAID) AS MEDICARE
                (MEDICAID).
     
                CODE ALL THAT APPLY: CODE RESPONSES IN THE ORDER THEY ARE GIVEN

                X6342: *MEDICARE
                X6343: *MEDICAID OR STATE VARIANTS OF MEDICAID
                X6344: *VA
                X6345: *TRI-CARE
                X6346: *SCHIP
                X6347: *EMPLOYER-PROVIDED; provided by former employer;
                       provided by PEU's business
                X6348: *UNION-PROVIDED
                X6349: *PERSONAL PLAN
                X6350: *OTHER

                     1.     Checked (any)
                     5.     Not checked (any)
                     6.     Women, Infants, and Children (WIC), other federal
                            welfare (only X6350)
                     7.     Other federal government plans; Indian Health
                            Service (only X6350)
                     8.     Other state/local government plans (only X6350)
                     9.     Foreign government health plan (only X6350)
                    13.     Plan from another person outside of HU (incl.
                            divorced/separated spouse) (only X6350)
                    16.     Plan through school (only X6350)
                    -7.     Other(specify) (X6350)
                     0.     Inap. (no health insurance: X6341^=1)
                *********************************************************
                    FOR THE PUBLIC DATA SET, CODES 7 AND 9 ARE COMBINED
                    WITH CODE 8 (X6350 ONLY); X6345 IS NOT INCLUDED
                    BUT IS COMBINED WITH CODE 8 (X6350 ONLY); X6344
                    IS COMBINED WITH CODE 8 (X6350 ONLY); X6346 IS
                    COMBINED WITH "YES" RESPONSES FOR X6343 (MEDICAID)
                **********************************************************/



/*Self-perceived risk tolerance level
X3014           IN PERSON VERSION:
                (SHOW CARD 8)
                Which of the statements on this page comes
                closest to the amount of financial risk that you
                (and your {husband/wife/partner}) are willing
                to take when you save or make investments?

                INTERVIEWER:  IF MORE THAN ONE RESPONSE IS GIVEN
                USE THE FIRST CATEGORY THAT APPLIES.

                     1.    *Take substantial financial risks expecting to
                            earn substantial returns
                     2.    *Take above average financial risks expecting
                            to earn above average returns
                     3.    *Take average financial risks expecting to earn
                            average returns
                     4.    *Not willing to take any financial risks*/

if x3014=1 then risk=4;               *substantial risk;
else if x3014=2 then risk=3;          *above average;
else if x3014=3 then risk=2;          *average;
else risk=1;                          *take no risk;
if risk=1 then norisk=1; else norisk=0;
if risk=2 then average=1; else average=0;
if risk=3 then above=1; else above=0;
if risk=4 then sub=1; else sub=0;
if risk>2 then high=1;else high=0;
if risk>1 then some=1;else some=0;
	*two categories for risk tolerance;
if risk>=2 then risktol=1; else risktol=0; *risktol=0 represents a risk averse household;

if risk>1 then takerisk=1; else takerisk=0;
*Smoking behavior;
*X7380(#1)       Now I'd like to ask you some questions about your
X7395(#2)       (husband/wife/partner/spouse)'s health: does your
                (husband/wife/partner/spouse) currently smoke?

                     1.    *YES
                     5.    *NO
                     0.     Inap. (no spouse/partner);
if x8000=1 then respsmokesatus=x7395; else respsmokestatus=x7380;
if x8000=1 then spsmokestatus=x7380; else spsmokestatus=x7395;
if respsmokestatus=1 then respsmokes=1; else respsmokes=0;
if spsmokestatus=1 then spsmokes=1; else spsmokes=0;
HHsmokes=max(respsmokes,spsmokes);

*Company size
X4114(#1)       About how many employees work for this company or
X4714(#2)       organization, including all locations?

                (PROBE: Is it fewer than 10, 10 to 19, 20 to 99, 100 to 499,
                or 500 or more?)

                     1.    *Fewer than 10
                     2.    *10 to 19
                     3.    *20 to 99
                     4.    *100 to 499
                     5.    *500 or MORE
                     0.     Inap. (not doing any work for pay: X4105=5/
                            X4705=5: /no spouse/partner:
                            volunteer work not considered a job:
                            X7591=5/X7589=5);
if x8000=1 then respcosize=x4714; else respcosize=x4114;
if x8000=1 then spcosize=x4114; else spcosize=x4714;
*respondent;
	if respcosize=1 then RsizeLT10=1; else RsizeLT10=0;
	if respcosize in (2,3) then Rsize10to99=1; else Rsize10to99=0;
	if respcosize=4 then Rsize100to499=1; else Rsize100to499=0;
	if respcosize=5 then Rsize500=1; else Rsize500=0;

*spouse;
	if spcosize=1 then SpsizeLT10=1; else SpsizeLT10=0;
	if spcosize in (2,3) then SPsize10to99=1; else SPsize10to99=0;
	if spcosize=4 then SPsize100to499=1; else SPsize100to499=0;
	if spcosize=5 then SPsize500=1; else SPsize500=0;

*household;
HHcosize=max(respcosize,spcosize);
if HHcosize=1 then HHsizeLT10=1; else HHsizeLT10=0;
if HHcosize in (2,3) then HHsize10to99=1; else HHsize10to99=0;
if HHcosize=4 then HHsize100to499=1; else HHsize100to499=0;
if HHcosize=5 then HHsize500=1; else HHsize500=0;

/*employer sponsored retirement plans - PARTICIPATING
X4135(#1)       IN PERSON VERSION:
X4735(#2)       (SHOW CARD 10) 
                Aside from the IRA or Keogh plans reported earlier, (are you/
                is he/is she/is he or she) included in any pension, retirement,
                or tax-deferred savings plans connected with the job you just
                told me about?

                (Are you/is he/is she/is he or she) included in any pension,
                retirement, or tax-deferred savings plans connected with the
                job you just told me about?
                
                TELEPHONE VERSION:
                Aside from the IRA or Keogh plans reported earlier, (are you/
                is he/is she/is he or she) included in any pension, retirement,
                or tax-deferred savings plans connected with the job you just
                told me about?
                
                (Are you/Is [he/she]) included in any pension, retirement,
                or tax-deferred savings plans connected with the job you
                just told me about? 
                
                INCLUDE PLANS THROUGH A UNION.
                
                DO NOT INCLUDE SOCIAL SECURITY OR PLANS CONNECTED ONLY WITH
                EARLIER JOBS. THERE ARE RECORDED LATER IN THE INTERVIEW

                     1.    *YES
                     5.    *NO
                     0.     Inap. (not doing any work for pay: X4105=5/
                            X4705=5; no spouse/partner;
                            volunteer work not considered a job:
                            X7591=5/X7589=5)*/
if x4135=1 then x4135D=1; else x4135D=0;
if x4735=1 then x4735D=1; else x4735D=0;
if x8000=1 then respretplan=x4735D; else respretplan=x4135D;
if x8000=1 then spretplan=x4135D; else spretplan=x4735D;
if respretplan=1 or spretplan=1 then HHretplan=1; else HHretplan=0;

/*Employer sponsored retirement plan - OFFERED
X4136(#1)       Does (your/his/her/his or her) employer offer any such plans?
X4736(#2)
                     1.    *YES
                     5.    *NO
                     0.     Inap. (not doing any work for pay: X4105=5/
                            X4705=5; no spouse/partner;
                            self-employed: X4106=(2, 3, 4)/
                            X4706=(2, 3, 4); included in pension
                            plan on main job: X4135=1/X4735=1;
                            volunteer work not considered a job:
                            X7591=5/X7589=5)*/
if x4136=1 then x4136D=1; else x4136D=0;
if x4736=1 then x4736D=1; else x4736D=0;
if x8000=1 then respoffered=x4736D; else respoffered=x4136D;
if x8000=1 then spoffered=x4136D; else spoffered=x4736D;
if respoffered=1 or spoffered=1 then HHoffered=1; else HHoffered=0;

/*Employer sponsored retirement plan - ELIGIBLE
X4137(#1)       (Are you/Is he/Is she/Is he or she) eligible to be included in
X4737(#2)       any of these plans?

                     1.    *YES
                     5.    *NO
                     0.     Inap. (not doing any work for pay: X4105=5/
                            X4705=5; no spouse/partner;
                            self-employed: X4106=(2, 3, 4)/
                            X4706=(2, 3, 4); included in pension
                            plan on main job: X4135=1/X4735=1;
                            no such plans: X4136^=1/X4736^=1;
                            volunteer work not considered a job:
                            X7591=5/X7589=5)*/

if x4137=1 then x4137D=1; else x4137D=0;
if x4737=1 then x4737D=1; else x4737D=0;
if x8000=1 then respeligible=x4737D; else respeligible=x4137D;
if x8000=1 then speligible=x4137D; else speligible=x4737D;
if respeligible=1 or speligible=1 then HHeligible=1; else HHeligible=0;

*participates, is eligible for, or employer offers retirement plan;
HHplan=max(HHretplan, HHeligible, HHoffered);
/*title of occupation

X7401(#1)       What is the official title of your (husband/wife/partner/
X7411(#2)       spouse)'s job? (The title that (your/his/her/his or her)
                employer uses?)

Note - public data only has 6 categories (my names below)
	1 Professional, health, social, religious
	2 Technical professions and sales
	3 Protective services,military, personal care
	4 Manual workers (construction, textiles, etc)
	5 Machine and transport workers
	6 Agriculture*/
	
if x8000=1 then respocc=x7411; else respocc=x7401;
if x8000=1 then spocc=x7401; else spocc=x7411;

*1 & 2 can be considered white collar
3-6 can be considered blue collar;
if respocc in (1,2) then respwhitecollar=1; else respwhitecollar=0;
if spocc in (1,2) then spwhitecollar=1; else spwhitecollar=0;

*finke uses 3 categories
	1 professional/managerial
	2 technical/sales/services
	3 Production/operators/farmers;
if respocc=1 then respocc1=1; else respocc1=0; *respondent finke cat 1;
if respocc=2 then respocc2=1; else respocc2=0; *respondent finke cat 2;
if respocc=3 then respocc3=1; else respocc3=0; *respondent finke cat 3;
if spocc=1 then spocc1=1; else spocc1=0; *spouse finke cat 1;
if spocc=2 then spocc2=1; else spocc2=0; *spouse finke cat 2;
if spocc=3 then spocc3=1; else spocc3=0; *spouse finke cat 3;

HHocc1=max(respocc1,spocc1);
HHocc2=max(respocc2,spocc2);
HHocc3=max(respocc3,spocc3);

***************************
Number of kids in household
***************************;
*variable from SCF is Kids - continuous variable number of kids in household without respect to age.;

/*Access to resources in case of an emergency from friends and family*/
if x6443=1 then access=1; else access=0;

/*Planning horizon - 3 categories- short (1), medium (2), long (3)*/
if x3008=1 or x3008=2 then plhz=1;
else if x3008=3 or x3008=4 then plhz=2;
else if x3008=5 then plhz=3;

/*dummy variabels for planning horizing, 3 categories*/
if plhz=1 then shorthz=1; else shorthz=0;
if plhz=2 then inthz=1; else inthz=0;
if plhz=3 then longhz=1; else longhz=0;

/*Make dummy variables for planning horizon (short plhz = splhz, etc.)*/
if x3008=1 then vshorizon=1; else vshorizon=0;
if x3008=2 then shorizon=1; else shorizon=0;
if x3008=3 then inthorizon=1; else inthorizon=0;
if x3008=4 then lhorizon=1; else lhorizon=0;
if x3008=5 then vlhorizon=1; else vlhorizon=0;

/*reverse code variable for interviewer's perception of respondent's knowledge*/
understanding=5-x6525;
if understanding = 1 then pooru=1; else pooru=0;
if understanding = 2 then fairu=1; else fairu=0;
if understanding = 3 then goodu=1; else goodu=0;
if understanding = 4 then excu=1; else excu=0;

if understanding > 2 then goodun=1; else goodun=0;
*if x6525=0 then delete; *one case in 1992;

/**********************
Health Status
***********************

X6030(#1)       Would you say your (husband/wife/partner/spouse)'s health in
X6124(#2)       general is excellent, good, fair, or poor?

                     1.    *Excellent
                     2.    *Good
                     3.    *Fair
                     4.    *Poor
                     0.     Inap. (no spouse/partner)*/
if x8000=1 then resphealth=x6124; else resphealth=x6030;
if x8000=1 then sphealth=x6030; else sphealth=x6124;
if resphealth<3 then goodhealth=1; else goodhealth=0; *good or excellent health;
if resphealth>2 then poorhealth=1; else poorhealth=0; *fair or poor health;

if sphealth=0 then Hhealth=resphealth;
if sphealth>0 then do;
	if resphealth=sphealth then do;
		Hhealth=resphealth;
		end;
	if resphealth^=sphealth then do;
		if resphealth<3 and sphealth<3 then Hhealth=min(resphealth, sphealth); *both good or excellent health;
		if resphealth>2 or sphealth>2 then Hhealth=max(resphealth,sphealth); *at least one is in fair or poor health;
		end;
end;
if Hhealth<3 then Hgoodhealth=1; else Hgoodhealth=0; *household good or excellent health;
if Hhealth>2 then Hpoorhealth=1; else Hpoorhealth=0; *household fair or poor health;

/**********************
credit balance to limit
***********************
X414(#1)        What is the maximum amount you could borrow on (this account/
                all of these accounts); that is, what is your total credit
                limit?

                For credit cards:
                WE WANT THE TOTAL CREDIT LIMIT, NOT
                JUST THE AMOUNT OF REMAINING CREDIT AVAILABLE
                
                $ AMOUNT:
                    -1.     No limit
                     0.     Inap. (no credit cards: X410=5; no cards of type)

X7575           After the last payments were made on these accounts, what
                was the balance still owed on all these accounts?

                After the last payment was made on this account, what was
                the balance still owed on this account?
                
                WE WANT THE TOTAL AMOUNT OWED, NOT THE MINIMUM PAYMENT.
                
                $ AMOUNT:
                     0.     Inap. (no accounts: X7577=5)*/

*Does not revolve more than 50% of credit card limit?;
if x7575<(0.5*x414) then nocredit50more=1; else nocredit50more=0;
if x414>0 then creditutil = x7575/x414; else creditutil = 0;


*year dummies;
if year=2001 then Y01=1; else Y01=0;
if year=2004 then Y04=1; else Y04=0;
if year=2007 then Y07=1; else Y07=0;
if year=2010 then Y10=1; else Y10=0;
if year=2013 then Y13=1; else Y13=0;

run;




proc freq data=scfworking; weight nwgt;
table respED respHSdrop respHS respSC respBS respGRAD;
table spED spHSdrop spHS spSC spBS spGRAD;
table singlemale singlefemale married partner couple;
table white black hispanic asianother;
table planner compfp paidadv;
table respworking spworking;
table allhealth;
table risk norisk average above sub;
table respsmokes spsmokes;
table resretplan spretplan respoffered spoffered respeligible speligible;
table respwhitecollar spwhitecollar respocc1 respocc2 respocc3 spocc1 spocc2 spocc3;
run;

proc means data=scfworking; weight nwgt;
var respage spage;
var loginc lognw;
var respretage spretage;
var respcosize spcosize;
run;




