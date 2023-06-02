CREATE TABLE `besar_storage` (
  `id_besar_storage` int NOT NULL AUTO_INCREMENT,
  `besar_storage` varchar(45) DEFAULT NULL,
  `nilai_besar_storage` int DEFAULT NULL,
  PRIMARY KEY (`id_besar_storage`)
) ;
INSERT INTO `besar_storage` VALUES (1,'128 GB',1),(2,'256 GB',2),(3,'512 GB',3),(4,'1TB',4),(5,'2TB',5);


CREATE TABLE `merk` (
  `id_merk` int NOT NULL AUTO_INCREMENT,
  `nama_merk` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_merk`)
) ;
INSERT INTO `merk` VALUES (1,'Lenovo'),(2,'ASUS'),(3,'HP'),(4,'Dell'),(5,'Acer'),(6,'Xiaomi'),(7,'Infinix'),(8,'Axioo');


CREATE TABLE `processor` (
  `id_processor` int NOT NULL AUTO_INCREMENT,
  `nama_processor` varchar(45) DEFAULT NULL,
  `nilai_processor` int DEFAULT NULL,
  PRIMARY KEY (`id_processor`)
);
INSERT INTO `processor` VALUES (1,'Intel Celeron / AMD A',1),(2,'Intel Pentium / AMD Athlon',2),(3,'Intel i3 / AMD Ryzen 3',3),(4,'Intel i5 / AMD Ryzen 5',4),(5,'Intel i7 / AMD Ryzen 7',5),(6,'Intel i9 / AMD Ryzen 9',6);

CREATE TABLE `ram` (
  `id_ram` int NOT NULL AUTO_INCREMENT,
  `besar_ram` varchar(45) DEFAULT NULL,
  `nilai_ram` int DEFAULT NULL,
  PRIMARY KEY (`id_ram`)
) ;

INSERT INTO `ram` VALUES (1,'4 GB',1),(2,'8 GB',2),(3,'16 GB',3),(4,'32 GB',4),(5,'64 GB',5);

CREATE TABLE `tipe_layar` (
  `id_tipe_layar` int NOT NULL AUTO_INCREMENT,
  `nama_layar` varchar(45) DEFAULT NULL,
  `nilai_layar` int DEFAULT NULL,
  PRIMARY KEY (`id_tipe_layar`)
);
INSERT INTO `tipe_layar` VALUES (1,'TN',1),(2,'IPS',3),(3,'OLED',5);

CREATE TABLE `tipe_storage` (
  `id_tipe_storage` int NOT NULL AUTO_INCREMENT,
  `nama_tipe_storage` varchar(45) DEFAULT NULL,
  `nilai_tipe_storage` int DEFAULT NULL,
  PRIMARY KEY (`id_tipe_storage`)
);
INSERT INTO `tipe_storage` VALUES (1,'HDD',1),(2,'SSD',3);

CREATE TABLE `vga` (
  `id_vga` int NOT NULL AUTO_INCREMENT,
  `nama_vga` varchar(45) DEFAULT NULL,
  `nilai_vga` int DEFAULT NULL,
  PRIMARY KEY (`id_vga`)
) ;
INSERT INTO `vga` VALUES (1,'MX250',1),(2,'MX350',2),(3,'GTX 1650',3),(4,'RTX 2050',4),(5,'RTX 3050',5);

CREATE TABLE `laptop` (
  `id_laptop` int NOT NULL AUTO_INCREMENT,
  `kode_model` varchar(45) DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `id_processor` int DEFAULT NULL,
  `id_ram` int DEFAULT NULL,
  `id_vga` int DEFAULT NULL,
  `id_tipe_layar` int DEFAULT NULL,
  `id_tipe_storage` int DEFAULT NULL,
  `id_besar_storage` int DEFAULT NULL,
  `id_merk` int DEFAULT NULL,
  PRIMARY KEY (`id_laptop`),
  KEY `id_processor_idx` (`id_processor`),
  KEY `id_ram_idx` (`id_ram`),
  KEY `id_tipe_layar_idx` (`id_tipe_layar`),
  KEY `id_vga_idx` (`id_vga`),
  KEY `id_tipe_storage_idx` (`id_tipe_storage`),
  KEY `id_besar_storage_idx` (`id_besar_storage`),
  KEY `id_merk_idx` (`id_merk`),
  CONSTRAINT `id_besar_storage` FOREIGN KEY (`id_besar_storage`) REFERENCES `besar_storage` (`id_besar_storage`),
  CONSTRAINT `id_merk` FOREIGN KEY (`id_merk`) REFERENCES `merk` (`id_merk`),
  CONSTRAINT `id_processor` FOREIGN KEY (`id_processor`) REFERENCES `processor` (`id_processor`),
  CONSTRAINT `id_ram` FOREIGN KEY (`id_ram`) REFERENCES `ram` (`id_ram`),
  CONSTRAINT `id_tipe_layar` FOREIGN KEY (`id_tipe_layar`) REFERENCES `tipe_layar` (`id_tipe_layar`),
  CONSTRAINT `id_tipe_storage` FOREIGN KEY (`id_tipe_storage`) REFERENCES `tipe_storage` (`id_tipe_storage`),
  CONSTRAINT `id_vga` FOREIGN KEY (`id_vga`) REFERENCES `vga` (`id_vga`)
);
INSERT INTO `laptop` VALUES (1,'A223ASD',8000000,4,2,2,2,2,3,4),(2,'BJWATA',5000000,2,1,1,2,1,2,1),(3,'ASFAFAW9',3000000,1,2,1,2,2,3,5),(4,'BUY39TW3',8500000,4,2,NULL,2,2,3,7),(5,'BUY39TW3',8500000,4,2,NULL,2,2,3,7),(6,'BUY39TW3',8500000,4,2,NULL,2,2,3,7),(7,'BUY39TW3',8500000,4,2,NULL,2,2,3,7),(8,'BUY39TW3',8500000,4,2,NULL,2,2,3,7),(9,'ASFIFWAU',20000000,6,4,5,2,2,4,7),(10,'ASFIFWAU',20000000,6,4,5,2,2,4,7),(11,'ASFIFWAU',20000000,6,4,5,2,2,4,7),(12,'ASFIFWAU',20000000,6,4,NULL,2,2,4,7),(13,'ASFIFWAU',20000000,6,4,NULL,2,2,4,7),(14,'AA;JFW',20000000,2,4,NULL,2,2,4,7),(15,'AA;JFW',20000000,2,4,NULL,2,2,4,7),(16,'QWR2RRQQ',20000000,2,4,NULL,2,2,4,1),(17,'QWR2RRQQ',20000000,2,4,NULL,2,2,4,1),(18,'ANFLAIWHF',20000000,3,1,2,1,2,1,1),(19,'LOASD23LHUGLGF',6800000,1,1,NULL,1,1,1,1),(20,'ASHFAHF',6800000,1,1,NULL,2,1,1,1),(21,'QWEQFQW',4677770,1,1,NULL,1,1,1,5),(22,'ASDA393',11000000,4,2,3,2,2,3,1),(23,'ARAFWF',80000000,1,3,NULL,1,1,1,1),(24,'ARAFWF',80000000,1,3,NULL,1,1,1,1),(25,'ARAFWF',80000000,1,3,NULL,1,1,1,1),(26,'GUGUGAGA',50000000,1,1,NULL,2,2,1,4);
