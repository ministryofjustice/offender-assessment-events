
INSERT INTO OFFENDER(OFFENDER_PK, PNC)
VALUES (1234, 'PNC');

INSERT INTO OASYS_ASSESSMENT_GROUP(OASYS_ASSESSMENT_GROUP_PK, OFFENDER_PK)
VALUES (6543, 1234);

INSERT INTO OASYS_SET (OASYS_SET_PK, OASYS_ASSESSMENT_GROUP_PK, ASSESSMENT_TYPE_ELM, ASSESSMENT_STATUS_ELM,  DATE_COMPLETED)
VALUES (5432, 6543, 'LAYER_3', 'COMPLETE', TO_DATE('2018-06-20 23:00:09', 'YYYY-MM-DD HH24:MI:SS')),
       (5433, 6543, 'LAYER_3', 'OPEN', null),
       (5434, 6543, 'LAYER_3', 'LOCKED_INCOMPLETE', TO_DATE('2016-07-20 02:00:09', 'YYYY-MM-DD HH24:MI:SS')),
       (5435, 6543, 'LAYER_3', 'LOCKED_INCOMPLETE', TO_DATE('2016-07-20 10:00:09', 'YYYY-MM-DD HH24:MI:SS'))
;
