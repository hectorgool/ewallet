-- mysql -u root -p -v < db.sql

DROP DATABASE IF EXISTS `ewallet_development`;
CREATE DATABASE ewallet_development CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP DATABASE IF EXISTS `ewallet_test`;
CREATE DATABASE ewallet_test CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP DATABASE IF EXISTS `ewallet_production`;
CREATE DATABASE ewallet_production CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP USER IF EXISTS 'ewallet'@'localhost';
GRANT ALL PRIVILEGES ON *.* to ewallet@localhost identified by 'asdfasdf' WITH GRANT option;