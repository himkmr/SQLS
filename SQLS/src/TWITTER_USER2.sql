--------------------------------------------------------
--  File created - Friday-August-28-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TWITTER_USER2
--------------------------------------------------------

  CREATE TABLE "TESTDB"."TWITTER_USER2" 
   (	"ID" NUMBER, 
	"NAME" VARCHAR2(50 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"MOTTO" VARCHAR2(200 BYTE), 
	"JOIN_DATE" DATE DEFAULT NULL
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TESTDB.TWITTER_USER2
SET DEFINE OFF;
Insert into TESTDB.TWITTER_USER2 (ID,NAME,PASSWORD,MOTTO,JOIN_DATE) values (1,'nisha','nisha','i don''t have one',to_date('28-AUG-15','DD-MON-RR'));
Insert into TESTDB.TWITTER_USER2 (ID,NAME,PASSWORD,MOTTO,JOIN_DATE) values (2,'him2','him2','i have a secret motto',to_date('28-AUG-15','DD-MON-RR'));
Insert into TESTDB.TWITTER_USER2 (ID,NAME,PASSWORD,MOTTO,JOIN_DATE) values (3,'himanshu','Himanshu','My motto',to_date('28-AUG-15','DD-MON-RR'));
--------------------------------------------------------
--  DDL for Index TWITTER_USER2_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TESTDB"."TWITTER_USER2_PK" ON "TESTDB"."TWITTER_USER2" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TWITTER_USER2
--------------------------------------------------------

  ALTER TABLE "TESTDB"."TWITTER_USER2" ADD CONSTRAINT "TWITTER_USER2_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TESTDB"."TWITTER_USER2" MODIFY ("JOIN_DATE" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."TWITTER_USER2" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."TWITTER_USER2" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "TESTDB"."TWITTER_USER2" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  DDL for Trigger TWITTER_USER2_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TESTDB"."TWITTER_USER2_TRG" 
BEFORE INSERT ON TWITTER_USER2 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING THEN
      SELECT TWITTER_USER2_SEQ2.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "TESTDB"."TWITTER_USER2_TRG" ENABLE;