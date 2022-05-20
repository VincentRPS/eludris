CREATE TABLE IF NOT EXISTS users (
	id VARCHAR(30) NOT NULL,
	username VARCHAR(32) NOT NULL,
	display_name VARCHAR(32),
	social_credit INT NOT NULL DEFAULT 0,
	email VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	salt VARCHAR(32) NOT NULL,
	status VARCHAR(255),
	bio TEXT,
	avatar VARCHAR(30) NOT NULL DEFAULT '0',
	banner VARCHAR(30),
	badges INTEGER NOT NULL DEFAULT 0,
        permissions INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY (id)
);
