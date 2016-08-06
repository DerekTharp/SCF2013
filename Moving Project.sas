*FSHS 806 - Day 1 Summer 2016;
LIBNAME data 'C:\Users\Derek\Documents\PhD\Datasets\SCF';
*create a temporary dataset from the permanent dataset called scfu33 - leave the permanent database alone, only manipulate your temporary file;
DATA data.scfu33;
SET data.scf806;
*as you need variables for your analysis, add them to this keep statement; 
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
X6678 X6679 X6680 X6681 X6682 X6683 X6684 X6685 x401 x402 x403 x404 x405 x406 x7575 x7700 x7729 j7727 j7728
x7136 x3007 x7513 x7514 x7515 x6848 x42001 X3015 X3016 X3017 X3018 X3019 X3020 X7508 x7509 x7510 x7187;

RUN;

*Day Three Code
*FSHS 806 - Summer 2016;

*Temporary dataset for project specific code. This reads in the smaller permanent dataset that the keep statement was used on (which we moved to another program file);
DATA movingproject;
SET data.scfu33;

*Age of respondent;
	If x8000=1 then respage=x19;else respage=x14;
	respagesq=respage*respage;

*Delete respondents over age 33;
	IF respage>=34 THEN DELETE;

/*natural log of income*/
if income > 0 then loginc=log(income);
else if income=0 then loginc=log(1); 
else if income<0 then loginc=log(.01);


*Education Coding
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
*respondent education;
	if x8000=1 then respED=x6101; else respED=x5901;
	if respED<12 then respHSdrop=1; else respHSdrop=0;
	if respED=12 then respHS=1; else respHS=0;
	if respED in (13,14,15) then respSC=1; else respSC=0;
	if respED=16 then respBS=1; else respBS=0;
	if respED=17 then respGRAD=1; else respGRAD=0;
	*two category resp ed for college achievement;
	IF resped>12 THEN respcollege=1; ELSE respcollege=0;

*spouse education;
	if x8000=1 then spED=x5901; else spED=x6101;
	if spED^=0 then do;
		if spED<12 then spHSdrop=1; else spHSdrop=0;
		if spED=12 then spHS=1; else spHS=0;
		if spED in (13,14,15) then spSC=1; else spSC=0;
		if spED=16 then spBS=1; else spBS=0;
		if spED=17 then spGRAD=1; else spGRAD=0;
		END;
	if spED=0 then do;
		spHSdrop=.;
		spHS=.;
		spSC=.;
		spBS=.;
		spGRAD=.;
		END;
*max household ed;
		*highest ed level of household;
	HHed=max(respED, spED);
	if HHed<12 then HHdrop=1; else HHdrop=0;
	if HHed=12 then HHHS=1; else HHHS=0;
	if HHed in (13,14,15) then HHSC=1; else HHSC=0;
	if HHed=16 then HHBS=1; else HHBS=0;
	if HHed=17 then HHGRAD=1; else HHGRAD=0;

*sex;
*X8021(#1)       CODE SEX WITHOUT ASKING.  IF NECESSARY, SAY:
X103(#2)        I am required to ask your sex.
X109(#3)        
X115(#4)        What is (your spouse's/your partner's/that person's) sex?
X121(#5)
X127(#6)             1.    *MALE
X133(#7)             2.    *FEMALE
X203(#8)             0.     Inap. (/no further persons);


IF x8000=5 THEN respsex=x8021; ELSE respsex=x103;
respfemale=respsex-1;
IF respsex=2 THEN respmale=0; ELSE respmale=1;

*Dummy variables for race of respondent;
  if race=1 then white=1; else white=0;             *white;
  if race=2 then black=1; else black=0;             *black;
  if race=3 then hispanic=1; else hispanic=0;       *hispanic;
  if race>3 then asianother=1; else asianother=0;  *asianother;

/*health insurance coverage - all covered?

X6357           Is everyone in your household covered by
                some type of health insurance?

                     1.    *YES
                     5.    *NO
                     0.     Inap. (no health insurance: X6341^=1)*/

IF X6357=1 THEN allhealth=1; else allhealth=0;

if x8000=5 then relation=x8023; else if x8000=1 then relation=x105;
if respsex=1 and (relation in (3 4 5 6)) then singlemale=1; else singlemale=0;  *single male;
if respsex=2 and (relation in (3 4 5 6)) then singlefemale=1; else singlefemale=0;  *single female;
if relation=1 then married=1; else married=0; *married;
if relation=2 then partner=1; else partner=0; *partner;

*in class day 4 DV;
if resped<=13 then resped3=1;
else if resped<=16 then resped3=2;
else if resped>=17 then resped3=3; 
else resped3=0;

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
	*three categories for risk tolerance;
if risk=1 then risktol3=1;
else if risk=2 then risktol3=2;	
else if risk>=3 then risktol3=3;
	*two categories for risk tolerance;
if risk>=2 then risktol=1; else risktol=0; *risktol=0 represents a risk averse household;

if risk>1 then takerisk=1; else takerisk=0;

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

*motivated movers;
if x3006=9 then motivatedmover=1; 
else if x3007=9 then motivatedmover=1;
else if x7513=9 then motivatedmover=1; 
else if x7514=9 then motivatedmover=1;
else if x7515=9 then motivatedmover=1;
else if x6848=9 then motivatedmover=1;
else motivatedmover=0;

/*X7187           About how much do you think you (and your family) need to
                have in savings for emergencies and other unexpected things
                that may come up?
                
                $ AMOUNT:
                    -1.     Nothing
                *********************************************************
                    ORIGINALLY ALLOWED VALUES: [0,...,99999999]
                
                    IF < 0, OUT OF RANGE: ILLEGAL VALUE ERROR MESSAGE
                **********************************************************/
*Savings need;
if x7187 = -1 then savingneed = 0;
else if x7187 >= 0 then savingneed = x7187;

*Saving shortfall;
savingshortfall = saving - savingneed;

*Natural log of saving;
if saving>0 then logsaving=log(saving);
else if saving=0 then logsaving=log(1); 

*Log saving shortfall;
if savingshortfall>0 then logsavingshortfall=log(savingshortfall);
else if savingshortfall=0 then logsavingshortfall=log(1); 
else if savingshortfall<0 then logsavingshortfall=-log(-1*savingshortfall);

*2 category saving shortfall;
if savingshortfall<0 then savingshortfall2 = 1;
else savingshortfall2 = 0;




 /*X7136           We are interested in your view of the chance
                that you will be staying at your current address for the
                next two years.  Using any number from  zero to 100, where
                zero equals no chance and 100 equals absolutely certain,
                what do you think the chances are that you will be living
                at your current address two years from now?
                
                INTERVIEWER: ROUND TO CLOSEST NUMBER DISPLAYED.

                     0.     NO CHANCE OF STAYING (Recoded to -1)
                    10.
                    20.
                    30.
                    40.
                    50.     50-50 CHANCE
                    60.
                    70.
                    80.
                    90.
                   100.     ABSOLUTELY CERTAIN TO STAY

                NOTE: CARD 6 contains the following information:
                The numbers 0, 10, 20, ..., 100 in a horizontal row bounded
                by dark lines.  Below 0 is printed "Absolutely no chance";*
                in the space below 20 and 30 is printed "Possible but not
                likely";* below 50 is printed "50-50 chance";* in the space
                below 70 and 80 is printed "Likely but not certain";* and
                below 100 is printed "Absolutely certain."*/

/*Self-perceived chance of moving*/
if x7136=-1 then chanceofmoving=100;
else if x7136>=0 then chanceofmoving=x7136*-1+100;

*Self-perceived chance of moving (3 categories);
if chanceofmoving<=30 then chanceofmoving3=1;        *Not likely;
else if chanceofmoving<=70 then chanceofmoving3=2;        *Possible;
else if chanceofmoving<=100 then chanceofmoving3=3;  *Highly likely;

*Chance of moving age 33 and under;
if chanceofmoving<=30 and respage<34 then chanceofmoving3u33=1;         *Not likely;
else if chanceofmoving<=70 and respage<34 then chanceofmoving3u33=2;    *Possible;
else if chanceofmoving<=100 and respage<34 then chanceofmoving3u33=3;   *Highly likely;

*Chance of moving age 40 and under;
if chanceofmoving<=30 and respage<40 then chanceofmoving3u40=1;         *Not likely;
else if chanceofmoving<=70 and respage<40 then chanceofmoving3u40=2;    *Possible;
else if chanceofmoving<=100 and respage<40 then chanceofmoving3u40=3;   *Highly likely;

/*X3015 X3016 X3017 X3018 X3019 X3020

                IN PERSON VERSION:
                (SHOW CARD 9)
                Which of the following statements on this page comes closest
                to describing your (and your {husband/wife/partner}'s) saving
                habits?

                READ RESPONSES IF NECESSARY
                INTERVIEWER: DO NOT PROBE FOR MORE THAN ONE RESPONSE.
                TREAT SAVING AND INVESTING THE SAME.
                CODE ALL THAT APPLY: CODE RESPONSES IN THE ORDER THEY ARE
                GIVEN
     
                TELEPHONE VERSION:
                Which of the following statements comes closest to
                describing your (and your {husband/wife/partner}'s)
                saving habits?
     
                INTERVIEWER: DO NOT PROBE FOR MORE THAN ONE RESPONSE.
                TREAT SAVING AND INVESTING THE SAME.
                CODE ALL THAT APPLY: CODE RESPONSES IN THE ORDER THEY ARE
                GIVEN
     
                X3015: *Don't save - usually spend more than income
                X3016: *Don't save - usually spend about as much as income
                X3017: *Save whatever is left over at the end of the month -
                        no regular plan   
                X3018: *Save income of one family member, spend the other
                X3019: *Spend regular income, save other income
                X3020: *Save regularly by putting money aside each month

                     1.     Checked
                     5.     Not checked

                NOTE: CARD 9 contains the following text in a vertical
                column: "Don't save -- Usually spend more than income,"
                "Don't save -- Usually spend about as much as income,"
                "Save whatever is left over at the end of each month -- No
                regular plan," "Save income of one family member, spend the
                other," "Save regularly by putting money aside each month."*/

/*X7510           Over the past year, would you say that your (family's)
                spending exceeded your (family's) income, that it was about
                the same as your income, or that you spent less than your
                income?
                
                (Spending should not include any investments you have made.)
                IF DEBTS ARE BEING REPAID ON NET, TREAT THIS AS SPENDING
                LESS THAN INCOME.

                     1.    *SPENDING EXCEEDED INCOME
                     2.    *SPENDING SAME AS INCOME
                     3.    *SPENDING WAS LESS THAN INCOME*/

/*X7509           Did any of that spending include purchases of a home or
                automobile or spending for any investments?

                     1.    *YES
                     5.    *NO
                     0.     Inap. (spending less than income: X7510=3)


X7508           Leaving aside those expenses, over the past year, would
                you say that your (family's) spending exceeded your
                (family's) income, that it was about the same as your income, 
                or that you spent less than your income?

                     1.    *SPENDING EXCEEDED INCOME
                     2.    *SPENDING EQUALED INCOME
                     3.    *SPENDING WAS LESS THAN INCOME
                     0.     Inap. (spending less than or equal to income:
                            X7510=(2, 3); spending did not include
                            durables purchases: X7509^=1)*/


if x7510 = 1 then saving3 = 1;
else if x7510 = 2 then saving3 = 2;
else if x7510 = 3 then saving3 = 3;

if x7508 = 1 then saving3adjusted = 1;
else if x7508 = 2 then saving3adjusted = 2;
else if x7508 = 3 then saving3adjusted = 3;
else if x7508 = 0 then saving3adjusted = 0;








RUN;


********************
END OF DATASTEP
********************;

*DAY 1: understanding switch variable and weighting options;
PROC FREQ DATA=movingproject;
TABLE X8000;
TITLE 'Switch No Weight';
RUN;
PROC FREQ DATA=movingproject; WEIGHT wt5;
TABLE X8000;
TITLE 'Switch wt5';
RUN;
PROC FREQ DATA=movingproject; WEIGHT nwgt;
TABLE X8000;
TITLE 'Switch nwgt';
RUN;
PROC FREQ DATA=movingproject; WEIGHT x42001;
TABLE X8000;
TITLE 'Switch x42001';
RUN;

*Day 2: exploring dv=income;
PROC UNIVARIATE DATA=movingproject; WEIGHT nwgt;
VAR income;
TITLE 'Weighted Income';
RUN;
PROC UNIVARIATE DATA=movingproject;
VAR income;
HISTOGRAM income;
TITLE 'Unweighted Income';
RUN;
PROC UNIVARIATE DATA=movingproject;
VAR loginc;
HISTOGRAM loginc;
TITLE 'Log Income';
RUN;

*Day 2: DV=INCOME;
*unweighted OLS;
PROC REG DATA=movingproject; WEIGHT wt5;
MODEL loginc = respage respagesq resphsdrop respsc respbs respgrad;
TITLE 'unweighted loginc = respage respagesq resphsdrop respsc respbs respgrad';
RUN;

*weighted;
PROC REG DATA=movingproject; weight nwgt;
MODEL loginc = respage respagesq resphsdrop respsc respbs respgrad;
TITLE ' weighted loginc = respage respagesq resphsdrop respsc respbs respgrad';
RUN;

*Day 3: Binary Outcomes
*for odds calculations;
PROC FREQ DATA=movingproject; WEIGHT wt5;
TABLE respfemale*respcollege;
TITLE 'Female by College';
RUN;
*Descriptives for in class education model;
ods rtf file='C:\Users\sheckman\Dropbox\KSU\Classes\Summer 2016\Stats\Day3Descriptive.rtf';
PROC FREQ DATA=movingproject; WEIGHT nwgt;
TABLE respcollege respfemale white black hispanic asianother;
TITLE 'Day 3 Descriptives';
RUN;

PROC MEANS DATA=movingproject; WEIGHT nwgt;
VAR risktol3*respinc;
TITLE ' Day 3 Mean Age';
RUN;
ods rtf close;

*DV=Education;
*we will do unweighted regressions for now;
*Linear Probability Model;
PROC REG DATA=movingproject; weight wt5;
MODEL respcollege=respfemale black hispanic asianother respage /VIF TOL;
TITLE 'Linear Probability Model - respcollege';
RUN;
*Linear Probability Model with correction for heteroscedasticity;
PROC REG DATA=movingproject; weight wt5;
MODEL respcollege=respfemale black hispanic asianother respage /HCC VIF TOL;
TITLE 'Linear Probability Model with HCC- respcollege';
RUN;
*Basic Binary Logit;
PROC LOGISTIC DATA=movingproject DESCENDING; WEIGHT wt5;
MODEL respcollege = respfemale black hispanic asianother respage / RSQ;
TITLE 'Binary Logisitic Regression - More than HS';
RUN;
PROC LOGISTIC DATA=movingproject DESCENDING; WEIGHT wt5;
MODEL respcollege = respmale black hispanic asianother respage / RSQ;
TITLE 'Binary Logisitic Regression - More than HS';
RUN;
*PROC QLIM should run this - but not found???;
PROC QLIM DATA=movingproject;
ENDOGENOUS respcollege~DISCRETE(DIST=LOGISTIC);
MODEL respcollege = respfemale black hispanic asianother respage;
OUTPUT OUT=a MARGINAL;
TITLE 'PROC QLIM logit';
RUN;
PROC MEANS DATA=a;
VAR meff_P2_respfemale;
TITLE 'Average Marginal Effect of Female';
RUN;

*Probit;
PROC LOGISTIC DATA=movingproject DESCENDING; WEIGHT wt5;
MODEL respcollege = respfemale black hispanic asianother respage / LINK=probit;
TITLE 'Probit - More than HS';
RUN;

*Descriptive table on HW3;
PROC FREQ DATA=movingproject; WEIGHT nwgt;
TABLE allhealth singlemale singlefemale married partner white black hispanic asianother;
TITLE 'HW3 Descriptives';
RUN;
PROC MEANS DATA=movingproject MEDIAN MEAN STD MIN MAX; WEIGHT nwgt;
VAR respage income;
TITLE 'HW 3 Descriptives';
RUN;

*multinomial logit, 3 levels of respondent education;
*technically you can only compare one category with another (?) and SAS has to choose a reference group and compare many times in order to get results (See Allison text for more);
*If we don't include 'LINK=GLOGIT' then SAS will automatically run this as a cumulative logit;
PROC LOGISTIC DATA=movingproject; WEIGHT wt5;
MODEL resped3 (Ref='1') = respfemale black hispanic asianother respage / LINK=GLOGIT;
TITLE 'Multinomial Logisitic Regression - 1=one year of college or less, 2=Two to four years of college, 3=more';
RUN;

*3 category risk tolerance univariate and histogram;
PROC UNIVARIATE DATA=movingproject;
VAR risktol3;
TITLE '3 Category Risk Tolerance Distribution';
HISTOGRAM risktol3;
RUN;

PROC FREQ DATA=movingproject; WEIGHT wt5;
TABLE respunemployed resppt respretired;
RUN;

*3 category risk tolerance multinomial regression;
PROC LOGISTIC DATA=movingproject; WEIGHT wt5;
MODEL risktol3 (Ref='2') = respage respcollege loginc black hispanic asianother respfemale 
respunemployed resppt respretired / LINK=GLOGIT RSQ;
TITLE 'Multinomial Logisitic Regression - 1=no risk, 2=moderate risk, 3=above average risk';
RUN;

ods csv file='C:\Users\Derek\Google Drive\PhD\Summer Stats\Day4Descriptive.csv';
PROC FREQ DATA=movingproject; WEIGHT nwgt;
TABLE risktol3 respcollege white black hispanic asianother respfemale respft respunemployed resppt respretired;
TITLE 'Day 4 Descriptives';
RUN;
ods csv close;


PROC FREQ DATA=movingproject; WEIGHT wt5;
TABLE ageunder45;
TITLE 'Age Under 45';
RUN;

PROC FREQ DATA=movingproject;
TABLE cplanner;
TITLE 'Financial Planner Credit Advice';
RUN;

PROC FREQ DATA=movingproject; WEIGHT wt5;
TABLE chanceofmoving chanceofmoving3 chanceofmoving3u33 chanceofmoving3u40;
TITLE 'Chance of moving descriptives';
RUN;

*************
Project-related PROCs
************;

PROC FREQ DATA=movingproject; WEIGHT wt5;
TABLE respage;
TITLE 'Age table';
RUN;

PROC FREQ DATA=movingproject; WEIGHT wt5;
TABLE loginc;
TITLE 'Saving table';
RUN;
PROC FREQ DATA=movingproject; WEIGHT wt5;
TABLE saving;
TITLE 'Adjustments to saving table';
RUN;
PROC FREQ DATA=movingproject; WEIGHT wt5;
TABLE resped3;
TITLE 'Respondent education';
RUN;

PROC UNIVARIATE DATA=movingproject; WEIGHT wt5;
VAR logsavingshortfall savingshortfall;
TITLE 'Savings univariate';
RUN;

PROC LOGISTIC DATA=movingproject; WEIGHT wt5;
MODEL chanceofmoving3 (Ref='1') = respage resped risk loginc savingshortfall2 motivatedmover black hispanic asianother respfemale 
respunemployed resppt respretired / LINK=GLOGIT RSQ;
TITLE 'Multinomial Logisitic Regression - 1=unlikely, 2=possible, 3=likely';
RUN;

