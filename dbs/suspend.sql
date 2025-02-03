SET DBS = '<% dbsname %>';
SET XMA = '<% depname %>';
SET SVC = '<% depname %>_SVC';
SET USR = '<% depname %>_USR';
SET ROL = '<% depname %>_ROL';
SET CPL = '<% depname %>_CPL';
SET VWH = '<% depname %>_VWH';
SET NRL = '<% depname %>_NRL';
SET EAI = '<% depname %>_EAI';


---------------------------------------------------------------------------------
USE ROLE IDENTIFIER($ROL);

USE DATABASE IDENTIFIER($DBS);
USE SCHEMA IDENTIFIER($XMA);
USE WAREHOUSE IDENTIFIER($VWH);

ALTER SERVICE IF EXISTS IDENTIFIER($SVC) SUSPEND;
ALTER COMPUTE POOL IF EXISTS IDENTIFIER($CPL) SUSPEND;
--ALTER WAREHOUSE IF EXISTS IDENTIFIER($VWH) SUSPEND;
