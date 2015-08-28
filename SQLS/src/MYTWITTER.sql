--------------------------------------------------------
--  File created - Friday-August-28-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MYTWITTER
--------------------------------------------------------

  CREATE TABLE "TESTDB"."MYTWITTER" 
   (	"ID" NUMBER, 
	"COMMENTS" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TESTDB.MYTWITTER
SET DEFINE OFF;
Insert into TESTDB.MYTWITTER (ID,COMMENTS,NAME) values (45,'comm2','nisha');
Insert into TESTDB.MYTWITTER (ID,COMMENTS,NAME) values (46,'nisha c3','nisha');
Insert into TESTDB.MYTWITTER (ID,COMMENTS,NAME) values (44,'hahahhah','nisha');
Insert into TESTDB.MYTWITTER (ID,COMMENTS,NAME) values (42,'him2 comment','him2');
Insert into TESTDB.MYTWITTER (ID,COMMENTS,NAME) values (43,'himasnhu''s comm','himanshu');
--------------------------------------------------------
--  DDL for Index MYTWITTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TESTDB"."MYTWITTER_PK" ON "TESTDB"."MYTWITTER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MYTWITTER
--------------------------------------------------------

  ALTER TABLE "TESTDB"."MYTWITTER" ADD CONSTRAINT "MYTWITTER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TESTDB"."MYTWITTER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Trigger MYTWITTER_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TESTDB"."MYTWITTER_TRG" 
BEFORE INSERT ON MYTWITTER 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    NULL;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "TESTDB"."MYTWITTER_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MYTWITTER_TRG1
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TESTDB"."MYTWITTER_TRG1" 
BEFORE INSERT ON MYTWITTER 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING THEN
      SELECT MYTWITTER_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "TESTDB"."MYTWITTER_TRG1" ENABLE;