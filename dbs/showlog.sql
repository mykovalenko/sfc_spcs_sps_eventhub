SET DBS = '<% dbsname %>';
SET XMA = '<% depname %>';
SET SVC = '<% depname %>_SVC';
SET USR = '<% depname %>_USR';
SET ROL = '<% depname %>_ROL';
SET CPL = '<% depname %>_CPL';
SET VWH = '<% depname %>_VWH';
SET NRL = '<% depname %>_NRL';
SET EAI = '<% depname %>_EAI';
SET DEP = 'dep-<% depname %>';

---------------------------------------------------------------------------------
USE ROLE IDENTIFIER($ROL);
USE DATABASE IDENTIFIER($DBS);
USE SCHEMA IDENTIFIER($XMA);
USE WAREHOUSE IDENTIFIER($VWH);

SELECT $1 from @SPECS/service.yaml; 

SHOW SERVICES;

-- check the status of service
CALL SYSTEM$GET_SERVICE_STATUS($SVC);

-- check the logs in the docker containers
CALL SYSTEM$GET_SERVICE_LOGS($SVC, '0', $DEP, 1000);
