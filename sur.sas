PROC IMPORT OUT= WORK.WK 
            DATAFILE= "C:\Users\u6023429\Desktop\sur\Book1.xlsx" 
            DBMS=EXCEL REPLACE;
     RANGE="Sheet1$"; 
     GETNAMES=YES;
     MIXED=NO;
     SCANTEXT=YES;
     USEDATE=YES;
     SCANTIME=YES;
RUN;


ods graphics on;

proc lifetest data=wk plots=survival(atrisk=0 to 90 by 10);
   time day * censor(0);
   strata gourp / test=logrank adjust=sidak;
run;


*MMAE;

PROC IMPORT OUT= WORK.WK1
            DATAFILE= "C:\Users\u6023429\Desktop\sur\Book1.xlsx" 
            DBMS=EXCEL REPLACE;
     RANGE="Sheet2$"; 
     GETNAMES=YES;
     MIXED=NO;
     SCANTEXT=YES;
     USEDATE=YES;
     SCANTIME=YES;
RUN;


ods graphics on;

proc lifetest data=wk1 plots=survival(atrisk=0 to 90 by 10);
   time day * censor(0);
   strata gourp / test=logrank adjust=sidak;
run;


*shhet3;

PROC IMPORT OUT= WORK.WK1
            DATAFILE= "C:\Users\u6023429\Desktop\sur\Book1.xlsx" 
            DBMS=EXCEL REPLACE;
     RANGE="Sheet3$"; 
     GETNAMES=YES;
     MIXED=NO;
     SCANTEXT=YES;
     USEDATE=YES;
     SCANTIME=YES;
RUN;


ods graphics on;

proc lifetest data=wk1 plots=survival(atrisk=0 to 90 by 10);
   time day * censor(0);
   strata gourp / test=logrank adjust=sidak;
run;


PROC IMPORT OUT= WORK.WK1
            DATAFILE= "C:\Users\u6023429\Desktop\sur\Book1.xlsx" 
            DBMS=EXCEL REPLACE;
     RANGE="Sheet4$"; 
     GETNAMES=YES;
     MIXED=NO;
     SCANTEXT=YES;
     USEDATE=YES;
     SCANTIME=YES;
RUN;


ods graphics on;

proc lifetest data=wk1 plots=survival(atrisk=0 to 90 by 10);
   time day * censor(0);
   strata gourp / test=logrank adjust=sidak;
run;




/*88888888*/

PROC IMPORT OUT= WORK.WK 
            DATAFILE= "C:\Users\u6023429\Desktop\sur\Book1.xlsx" 
            DBMS=EXCEL REPLACE;
     RANGE="Sheet5$"; 
     GETNAMES=YES;
     MIXED=NO;
     SCANTEXT=YES;
     USEDATE=YES;
     SCANTIME=YES;
RUN;


ods graphics on;

proc lifetest data=wk plots=survival;
   time day * censor(0);
   strata group / test=logrank adjust=sidak;
run;
