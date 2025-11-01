CREATE TABLE IF NOT EXISTS b_user_inf (
 user_id VARCHAR(10) NOT NULL PRIMARY KEY,
 user_name VARCHAR(20) NOT NULL,
 corp_id VARCHAR(3),
 department VARCHAR(3),
 grade INT,
 gender VARCHAR(1) NOT NULL,
 birth TIMESTAMP NOT NULL,
 career_yrs INT NOT NULL
);

CREATE TABLE IF NOT EXISTS b_mental_scale (
 user_id VARCHAR(10) NOT NULL,
 mscale_num VARCHAR(10) NOT NULL PRIMARY KEY,
 s_date TIMESTAMP NOT NULL,
 avg_score DOUBLE NOT NULL,
 max_score INT NOT NULL,
 min_score INT NOT NULL
);

CREATE TABLE IF NOT EXISTS b_mental_scale_detail (
 mscale_num VARCHAR(10) NOT NULL PRIMARY KEY,
 s_date TIMESTAMP NOT NULL,
 scale01 INT,
 scale02 INT,
 scale03 INT,
 scale04 INT,
 scale05 INT,
 scale06 INT,
 scale07 INT,
 scale08 INT,
 scale09 INT,
 scale10 INT,
 scale11 INT,
 scale12 INT,
 scale13 INT,
 scale14 INT,
 scale15 INT,
 scale16 INT,
 scale17 INT,
 scale18 INT,
 scale19 INT,
 scale20 INT,
 other TEXT
);

CREATE TABLE IF NOT EXISTS m_mental (
 ques_key VARCHAR(4) NOT NULL PRIMARY KEY,
 ques_detail TEXT
);

CREATE SEQUENCE mscale_num_seq_2025 START WITH 1;
CREATE SEQUENCE mscale_num_seq_2026 START WITH 1;