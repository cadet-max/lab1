create table склады (
Номер_склада int primary key,
Вместимость int not null,
Адрес_склада VARCHAR(255) not null,
Заведубщий_складом VARCHAR(150) NOT NULL
);
create table размещение (
Номер_склада int not null,
Код_товара  int not null,
Количество_упаковок int not null,
Дата_отгрузки DATE,
Вес DECIMAL(10, 2),
Отметка_о_получение BOOLEAN DEFAULT FALSE,
PRIMARY KEY (Номер_склада ,Код_товара),
FOREIGN KEY  (Номер_склада) REFERENCES Склады(Номер_склада)
ON DELETE CASCADE
ON UPDATE CASCADE
);