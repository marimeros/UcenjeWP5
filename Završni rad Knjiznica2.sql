use master;
go
create database Knjiznica2 COLLATE Croatian_CI_AS;
go
use Knjiznica2;
go
create table Clanova(
sifra INT PRIMARY KEY identity(1,1),
ime VARCHAR(50) COLLATE Croatian_CI_AS,
prezime VARCHAR(50)COLLATE Croatian_CI_AS,
clanskibroj VARCHAR(20),
telefon VARCHAR(20));

create table Knjiga(
sifra INT PRIMARY KEY identity(1,1),
naziv VARCHAR(100) COLLATE Croatian_CI_AS,
knjizevnavrsta VARCHAR(50)COLLATE Croatian_CI_AS
);

create table Posudba(
sifra INT PRIMARY KEY identity(1,1),
sifraKnjiga INT,
sifraClan INT,
datumposudbe DATE,
datumvracanja DATE,
FOREIGN KEY (sifraKnjiga) REFERENCES Knjiga(sifra),
FOREIGN KEY (sifraClan) REFERENCES Clanova(sifra));

insert into Clanova ( ime, prezime, clanskibroj, telefon) values ('Ivo', 'Ivić', '5531', '098242382');
SELECT * FROM Clanova WHERE sifra =1;

insert into Knjiga (naziv, knjizevnavrsta) values ( 'Judita Marko Marulić', 'ep');

insert into Posudba ( sifraKnjiga, sifraClan, datumposudbe, datumvracanja) values ('1', '1', '01-01-2024', '02-02-2024');

SELECT * FROM Knjiga WHERE sifra =1;

SELECT * FROM Posudba WHERE sifra =1;