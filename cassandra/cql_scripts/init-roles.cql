
CREATE ROLE consumer_role WITH LOGIN = TRUE AND PASSWORD = 'consumer_password' AND SUPERUSER = FALSE;
GRANT SELECT ON KEYSPACE fraud_detection TO consumer_role;
GRANT SELECT ON fraud_detection.credit_data TO consumer_role;
GRANT SELECT ON fraud_detection.insurance_data TO consumer_role;


CREATE ROLE producer_role WITH LOGIN = TRUE AND PASSWORD = 'producer_password' AND SUPERUSER = FALSE;
GRANT SELECT, INSERT, UPDATE, DELETE ON KEYSPACE fraud_detection TO producer_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON fraud_detection.credit_data TO producer_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON fraud_detection.insurance_data TO producer_role;


CREATE ROLE admin_role WITH LOGIN = TRUE AND PASSWORD = 'admin_password' AND SUPERUSER = TRUE;
GRANT ALL PRIVILEGES ON KEYSPACE fraud_detection TO admin_role;
GRANT ALL PRIVILEGES ON ALL TABLES IN KEYSPACE fraud_detection TO admin_role;

CREATE ROLE consumer_role WITH LOGIN = TRUE AND PASSWORD = 'consumer_password' AND SUPERUSER = FALSE;
GRANT SELECT ON KEYSPACE fraud_detection TO consumer_role;
GRANT SELECT ON fraud_detection.credit_data TO consumer_role;
GRANT SELECT ON fraud_detection.insurance_data TO consumer_role;


-- Vérifier les rôles et privilèges créés
LIST ALL ROLES;