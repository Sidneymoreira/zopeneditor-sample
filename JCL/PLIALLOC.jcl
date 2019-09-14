//ZDEPLIA JOB ,NOTIFY=&SYSUID,
// MSGCLASS=H,MSGLEVEL=(1,1),REGION=144M
//****************************************************************
//* LICENSED MATERIALS - PROPERTY OF IBM
//* "RESTRICTED MATERIALS OF IBM"
//* (C) COPYRIGHT IBM CORPORATION 2019. ALL RIGHTS RESERVED
//*
//*  US GOVERNMENT USERS RESTRICTED RIGHTS - USE, DUPLICATION,
//*  OR DISCLOSURE RESTRICTED BY GSA ADP SCHEDULE
//*  CONTRACT WITH IBM CORPORATION
//*
//*
//* THE FOLLOWING HLQ SYMBOLIC MUST CONTAIN THE HIGH LEVEL
//* QUALIFIER UNDER WHICH THE SAMPLE DATASETS MAY RESIDE.
//*
//    SET HLQ='TSOUSER'       *TSO USER ID
//*************************
//* CLEAN UP DATASETS
//*************************
//DELETE   EXEC PGM=IEFBR14
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//DD1      DD DSN=&HLQ..SAMPLE.PLIOBJ,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(0))
//DD2      DD DSN=&HLQ..SAMPLE.PLILOAD,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(0))
//DD3      DD DSN=&HLQ..SAMPLE.PLI,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(0))
//DD4      DD DSN=&HLQ..SAMPLE.PLINC,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(0))
//DD5      DD DSN=&HLQ..SAMPLE.PLI.TRANFILE,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(0))
//DD6      DD DSN=&HLQ..SAMPLE.PLI.CUSTFILE,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(0))
/*
//*************************
//* ALLOCATE DATASETS
//*************************
//ALLOCAT EXEC PGM=IEFBR14,COND=(8,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
/*
//DD1      DD DSN=&HLQ..SAMPLE.PLIOBJ,
//            DISP=(NEW,CATLG),LRECL=80,RECFM=FB,DSORG=PO,
//            SPACE=(TRK,(100,10),RLSE),
//            BLKSIZE=(32720),DSNTYPE=LIBRARY
/*
//DD2      DD DSN=&HLQ..SAMPLE.PLILOAD,
//            DISP=(NEW,CATLG),LRECL=0,RECFM=U,DSORG=PO,
//            SPACE=(TRK,(100,10),RLSE),
//            BLKSIZE=(32720),DSNTYPE=LIBRARY
/*
//DD3      DD DSN=&HLQ..SAMPLE.PLI,
//            DISP=(NEW,CATLG),LRECL=80,RECFM=FB,DSORG=PO,
//            SPACE=(TRK,(100,10),RLSE),
//            BLKSIZE=(32720),DSNTYPE=LIBRARY
/*
//DD4      DD DSN=&HLQ..SAMPLE.PLINC,
//            DISP=(NEW,CATLG),LRECL=80,RECFM=FB,DSORG=PO,
//            SPACE=(TRK,(100,10),RLSE),
//            BLKSIZE=(32720),DSNTYPE=LIBRARY
/*
//DD5      DD DSN=&HLQ..SAMPLE.PLI.TRANFILE,
//            DISP=(NEW,CATLG),LRECL=80,RECFM=FB,DSORG=PS,
//            SPACE=(TRK,(100,10),RLSE),
//            BLKSIZE=(32720)
/*
//DD6      DD DSN=&HLQ..SAMPLE.PLI.CUSTFILE,
//            DISP=(NEW,CATLG),LRECL=80,RECFM=FB,DSORG=PS,
//            SPACE=(TRK,(100,10),RLSE),
//            BLKSIZE=(80)
/*