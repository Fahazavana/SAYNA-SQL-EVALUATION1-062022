CREATE TABLE emprunter (
	NL		integer not null, foreign key(NL) references livres(NL),
	dateEmp		date not null,
	dureeMax	integer not null,
	dateRet 	date,
	NA		integer not null, foreign key(NA) references adherents(NA),
	primary key (NL, dateEmp),
	index(dateEmp)
) ENGINE InnoDB;