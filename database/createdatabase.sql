teraz pisze tu Paweł

jestem szymek robie bałagan 

CREATE TABLE users(
	user_id INT NOT NULL AUTO_INCREMENT, 
	name NVARCHAR NOT NULL, 
	first_name NVARCHAR, 
	last_name NVARCHAR, 
	PRIMARY KEY (user_id)
);

CREATE TABLE account_types(
	account_type_id INT NOT NULL AUTO_INCREMENT, 
	account_type NVARCHAR,
	PRIMARY KEY (account_type_id)
);

CREATE TABLE accounts(
	account_id INT NOT NULL AUTO_INCREMENT, 
	user_id INT, 
	account_type_id INT, 
	username NVARCHAR, 
	password NVARCHAR, 
	creation_date DATETIME, 
	PRIMARY KEY (account_id),
	FOREIGN KEY (user_id) REFERENCES users (user_id),
	FOREIGN KEY (account_type_id) REFERENCES account_types (account_type_id)
);

CREATE TABLE recreation_day(
	recreation_day_id INT NOT NULL AUTO_INCREMENT,
	start_time DATETIME,
	end_time DATETIME,
	PRIMARY KEY (recreation_day_id)
);

CREATE TABLE reservation(
	reservation_id INT NOT NULL AUTO_INCREMENT,
	recreation_day_id INT,
	account_id INT,
	PRIMARY KEY (reservation_id),
	FOREIGN KEY (recreation_day_id) REFERENCES recreation_day (recreation_day_id),
	FOREIGN KEY (account_id) REFERENCES accounts (account_id)
);

INSERT INTO account_types (account_type) VALUES('administrator'), ('rw_user'), ('ro_user');