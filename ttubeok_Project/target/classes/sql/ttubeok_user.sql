CREATE TABLE ttubeok_user(
	user_num int auto_increment PRIMARY KEY,
	user_id VARCHAR(80) UNIQUE,
	password VARCHAR(80) NOT NULL,
	name VARCHAR(100) NOT NULL,
	reg_date TIMESTAMP DEFAULT NOW(),
    session_id VARCHAR(80) NOT NULL DEFAULT 'none',
    limit_time TIMESTAMP
);