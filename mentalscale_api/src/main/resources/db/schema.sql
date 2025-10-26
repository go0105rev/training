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
 scale1 INT,
 scale2 INT,
 scale3 INT,
 scale4 INT,
 scale5 INT,
 scale6 INT,
 scale7 INT,
 scale8 INT,
 scale9 INT,
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
 ques_scale1 TEXT NOT NULL,
 ques_scale2 TEXT NOT NULL,
 ques_scale3 TEXT NOT NULL,
 ques_scale4 TEXT NOT NULL,
 ques_scale5 TEXT NOT NULL,
 ques_scale6 TEXT NOT NULL,
 ques_scale7 TEXT NOT NULL,
 ques_scale8 TEXT NOT NULL,
 ques_scale9 TEXT NOT NULL,
 ques_scale10 TEXT NOT NULL,
 ques_scale11 TEXT NOT NULL,
 ques_scale12 TEXT NOT NULL,
 ques_scale13 TEXT NOT NULL,
 ques_scale14 TEXT NOT NULL,
 ques_scale15 TEXT NOT NULL,
 ques_scale16 TEXT NOT NULL,
 ques_scale17 TEXT NOT NULL,
 ques_scale18 TEXT NOT NULL,
 ques_scale19 TEXT NOT NULL,
 ques_scale20 TEXT NOT NULL
);
