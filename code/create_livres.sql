CREATE TABLE livres (
	NL		integer primary key auto_increment,
	editeur		varchar(50),
	NO		integer not null, foreign key(NO) references oeuvres(NO)
) ENGINE InnoDB;