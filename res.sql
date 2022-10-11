DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `restaurantId` int NOT NULL AUTO_INCREMENT,
  `restaurantName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`restaurantId`)
);

DROP TABLE IF EXISTS `tables`;
CREATE TABLE IF NOT EXISTS `tables` (
  `tableId` int NOT NULL AUTO_INCREMENT,
  `tableName` varchar(255) NOT NULL,
  `restaurantId` int NOT NULL,
  PRIMARY KEY (`tableId`),
  FOREIGN KEY (`restaurantId`) REFERENCES `restaurant`(`restaurantId`)
);

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customersId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`customersId`)
);

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `tableId` int NOT NULL,
  `customersId` int NOT NULL,
  `isBooked` int(1) NOT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  CONSTRAINT PK_Books PRIMARY KEY (`tableId`, `customersId`),
  FOREIGN KEY (`tableId`) REFERENCES `tables`(`tableId`),
  FOREIGN KEY (`customersId`) REFERENCES `customers`(`customersId`)
);

-- Restaurant Information
insert into restaurant (restaurantId, restaurantName, address) values (1, 'McDoanlds', 'EASV');

-- Tables Information
insert into tables (tableId, tableName, restaurantId) values (1, 'Canyon Silktassel', 1);
insert into tables (tableId, tableName, restaurantId) values (2, 'Turk''s Head', 2);
insert into tables (tableId, tableName, restaurantId) values (3, 'Palmer Evening Primrose', 3);
insert into tables (tableId, tableName, restaurantId) values (4, 'Plitt''s Pore Lichen', 4);
insert into tables (tableId, tableName, restaurantId) values (5, 'Woodsorrel', 5);
insert into tables (tableId, tableName, restaurantId) values (6, 'Plains Mock Vervain', 6);
insert into tables (tableId, tableName, restaurantId) values (7, 'Ophiopogon', 7);
insert into tables (tableId, tableName, restaurantId) values (8, 'Chinese Peony', 8);
insert into tables (tableId, tableName, restaurantId) values (9, 'Spreading Asphead', 9);
insert into tables (tableId, tableName, restaurantId) values (10, 'Eatonella', 10);
insert into tables (tableId, tableName, restaurantId) values (11, 'Pond Pine', 11);
insert into tables (tableId, tableName, restaurantId) values (12, 'Horsekiller', 12);
insert into tables (tableId, tableName, restaurantId) values (13, 'Venus'' Looking-glass', 13);
insert into tables (tableId, tableName, restaurantId) values (14, 'Naked Buckwheat', 14);
insert into tables (tableId, tableName, restaurantId) values (15, 'Northern Microseris', 15);
insert into tables (tableId, tableName, restaurantId) values (16, 'Metcalfe''s Ticktrefoil', 16);
insert into tables (tableId, tableName, restaurantId) values (17, 'Beard Lichen', 17);
insert into tables (tableId, tableName, restaurantId) values (18, 'Southwestern False Cloak Fern', 18);
insert into tables (tableId, tableName, restaurantId) values (19, 'Derris', 19);
insert into tables (tableId, tableName, restaurantId) values (20, 'Blistered Naval Lichen', 20);

-- Customers Information
insert into customers (customersId, name, phone) values (1, 'Tommy Tybalt', '+62-102-860-4527');
insert into customers (customersId, name, phone) values (2, 'Allix Kemell', '+420-767-428-5748');
insert into customers (customersId, name, phone) values (3, 'Lesley Minihane', '+86-396-659-4866');
insert into customers (customersId, name, phone) values (4, 'Bernadina Kermitt', '+51-780-808-7693');
insert into customers (customersId, name, phone) values (5, 'Dorian Missington', '+86-828-635-8033');
insert into customers (customersId, name, phone) values (6, 'Alexia Kasting', '+235-889-819-2878');
insert into customers (customersId, name, phone) values (7, 'Jermaine Ivashnyov', '+63-102-517-2374');
insert into customers (customersId, name, phone) values (8, 'Anet Dunne', '+7-973-468-4472');
insert into customers (customersId, name, phone) values (9, 'Eva Delhay', '+48-561-750-8042');
insert into customers (customersId, name, phone) values (10, 'Wynne Johnes', '+55-155-603-6755');
insert into customers (customersId, name, phone) values (11, 'Gabbi Payne', '+381-440-891-6513');
insert into customers (customersId, name, phone) values (12, 'Clementine McGeouch', '+689-645-862-4877');
insert into customers (customersId, name, phone) values (13, 'Farrell Tesimon', '+30-666-992-6385');
insert into customers (customersId, name, phone) values (14, 'Moyna Munnis', '+86-132-655-1999');
insert into customers (customersId, name, phone) values (15, 'Raddy Theunissen', '+7-738-835-0270');
insert into customers (customersId, name, phone) values (16, 'Philippine Blabber', '+27-858-139-9328');
insert into customers (customersId, name, phone) values (17, 'Melamie Bolsteridge', '+62-956-450-6809');
insert into customers (customersId, name, phone) values (18, 'Phillida Furlong', '+51-626-538-0092');
insert into customers (customersId, name, phone) values (19, 'Irvine Hinks', '+86-486-807-7210');
insert into customers (customersId, name, phone) values (20, 'Freeman Stodart', '+7-869-606-9884');

-- Bookings Information
insert into books (tableId, customersId, isBooked, createdAt) values (1, 1, true, '2022-03-03 18:18:48');
insert into books (tableId, customersId, isBooked, createdAt) values (2, 2, true, '2022-09-08 06:36:58');
insert into books (tableId, customersId, isBooked, createdAt) values (3, 3, true, '2022-09-12 17:17:34');
insert into books (tableId, customersId, isBooked, createdAt) values (4, 4, true, '2021-10-30 20:11:53');
insert into books (tableId, customersId, isBooked, createdAt) values (5, 5, true, '2021-12-24 14:44:55');
insert into books (tableId, customersId, isBooked, createdAt) values (6, 6, true, '2022-10-08 20:54:25');
insert into books (tableId, customersId, isBooked, createdAt) values (7, 7, true, '2022-07-18 16:48:44');
insert into books (tableId, customersId, isBooked, createdAt) values (8, 8, true, '2022-03-01 16:07:40');
insert into books (tableId, customersId, isBooked, createdAt) values (9, 9, true, '2022-07-28 17:31:47');
insert into books (tableId, customersId, isBooked, createdAt) values (10, 1, true, '2022-04-11 14:51:00');
insert into books (tableId, customersId, isBooked, createdAt) values (11, 11, true, '2022-04-18 11:32:40');
insert into books (tableId, customersId, isBooked, createdAt) values (12, 12, true, '2021-11-15 23:37:47');
insert into books (tableId, customersId, isBooked, createdAt) values (13, 13, true, '2022-08-31 03:23:18');
insert into books (tableId, customersId, isBooked, createdAt) values (14, 1, true, '2022-08-08 19:29:24');
insert into books (tableId, customersId, isBooked, createdAt) values (2, 15, true, '2022-03-09 14:57:07');
insert into books (tableId, customersId, isBooked, createdAt) values (16, 16, true, '2022-06-15 07:17:18');
insert into books (tableId, customersId, isBooked, createdAt) values (2, 17, true, '2022-04-17 00:07:14');
insert into books (tableId, customersId, isBooked, createdAt) values (18, 18, true, '2022-07-25 02:37:57');
insert into books (tableId, customersId, isBooked, createdAt) values (3, 19, true, '2021-12-24 05:12:49');
insert into books (tableId, customersId, isBooked, createdAt) values (20, 20, true, '2022-09-13 12:52:29');