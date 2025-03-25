
CREATE KEYSPACE IF NOT EXISTS fraud_detection 
WITH REPLICATION = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE fraud_detection;

CREATE TABLE IF NOT EXISTS credit_data (
    client_id TEXT,
    transaction_id TEXT,  
    type TEXT,
    amount DOUBLE,
    oldbalanceOrg DOUBLE,
    newbalanceOrig DOUBLE,
    PRIMARY KEY (client_id, transaction_id)
);



CREATE TABLE IF NOT EXISTS insurance_data (
    client_id TEXT,
    transaction_id TEXT , 
    high_education_ind INT,
    past_num_of_claims INT,
    gender TEXT,
    address_change_ind INT,
    witness_present_ind INT,
    channel TEXT,
    accident_site TEXT,
    living_status TEXT,
    vehicle_category TEXT,
    marital_status INT,
    PRIMARY KEY (client_id, transaction_id)
);

