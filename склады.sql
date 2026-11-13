create table sklad (
nomer_sklada int primary key,
vmestimost int not null,
adres_sklada VARCHAR(255) not null,
zaved_skladom VARCHAR(150) NOT NULL
);
create table razmeshenie (
nomer_sklada int not null,
kod_tovara int not null,
kolichestvo_upakovok int not null,
data_otgruzki DATE,
ves DECIMAL(10, 2),
otmetka_o_poluchenie BOOLEAN DEFAULT FALSE,
PRIMARY KEY (nomer_sklada,kod_tovara),
FOREIGN KEY  (nomer_sklada) REFERENCES sklad(nomer_sklada)
ON DELETE CASCADE
ON UPDATE CASCADE
);