# SAYNA-EVALUATION INTERMEDIARE 1

## 1
### 1.1 Chargement de Biblio_base.sql

### 1.2 Correction apporté à Biblio_base.sql
*	Ordonner l'ordre de la création des tables pour eviter les erreur suivant :
	*  	Error Code: 1824. Failed to open the referenced table 'oeuvres'
	*	Error Code: 1824. Failed to open the referenced table 'adherents'
	*	Error Code: 1824. Failed to open the referenced table 'livres'

Ainsi l'ordre de création des tables sera :
1) 	oeuvres
2) 	adherants
3) 	livres
4) 	emprunter

### 1.3 Nombres de tuples apres l'execution du script :

* Pour la table oeuvres :
```	
SELECT COUNT(*) FROM `biblio`.`oeuvres`;
```
* Pour la table adherents :

```
SELECT COUNT(*) FROM `biblio`.`adherents`;
```
* Pour la table livres :

```	
SELECT COUNT(*) FROM `biblio`.`livres`;
```
* Pour la table emprunter :

```
SELECT COUNT(*) FROM `biblio`.`emprunter`;
```

**Ainsi pour obtenir le nombre totale de Tuple on fait :**
```
SELECT 
    (SELECT COUNT(*) FROM `biblio`.`oeuvres`) 
    +
    (SELECT COUNT(*) FROM `biblio`.`adherents`)
    +
    (SELECT COUNT(*) FROM `biblio`.`livres`)
    +
    (SELECT COUNT(*) FROM `biblio`.`emprunter`)
AS `Nombres de tuples`;
```

### 1.4 Nombre d'attribut :
* Pour la table oeuvres :
```	
DESCRIBE `biblio`.`oeuvres`;


+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| NO     | int          | NO   | PRI | NULL    | auto_increment |
| titre  | varchar(150) | NO   |     | NULL    |                |
| auteur | varchar(100) | YES  |     | NULL    |                |
| annee  | int          | YES  |     | NULL    |                |
| genre  | varchar(30)  | YES  |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
```
On a donc 5 attributs pour la table oeuvre;

* Pour la table adherents :

```
DESCRIBE `biblio`.`adherents`;

+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| NA     | int          | NO   | PRI | NULL    | auto_increment |
| nom    | varchar(30)  | NO   |     | NULL    |                |
| prenom | varchar(30)  | YES  |     | NULL    |                |
| adr    | varchar(100) | NO   |     | NULL    |                |
| tel    | char(10)     | YES  |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
```
Donc on a 5 pour la tables adherents.

* Pour la table livres :

```	
DESCRIBE `biblio`.`livres`;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| NL      | int         | NO   | PRI | NULL    | auto_increment |
| editeur | varchar(50) | YES  |     | NULL    |                |
| NO      | int         | NO   | MUL | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
```
Donc on a 3 attributs por la table livres.

* Pour la table emprunter :

```
DESCRIBE `biblio`.`emprunter`;

+----------+------+------+-----+---------+-------+
| Field    | Type | Null | Key | Default | Extra |
+----------+------+------+-----+---------+-------+
| NL       | int  | NO   | PRI | NULL    |       |
| dateEmp  | date | NO   | PRI | NULL    |       |
| dureeMax | int  | NO   |     | NULL    |       |
| dateRet  | date | YES  |     | NULL    |       |
| NA       | int  | NO   | MUL | NULL    |       |
+----------+------+------+-----+---------+-------+

```
Donc on a 5 attributs pour la table emprunter


### 1.5 Liste des clé Primaire : 
* Pour la table oeuvres :
```	
NO
```
* Pour la table adherents :
```
NA
```
* Pour la table livres :

```	
NL
```
* Pour la table emprunter :

```
NL,DateEmp
```





