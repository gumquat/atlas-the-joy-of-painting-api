﻿CREATE TABLE episode_subjects 
(
    episode	INT,
    subjectID	VARCHAR(512)
);

INSERT INTO episode_subjects (episode, subjectID) VALUES
	('1', '"[8,17,28,49,59,60]"'),
	('2', '"[9,14,15,38,52,53,59,60,66]"'),
	('3', '"[9,15,22,38,39,56,57,59,60,66]"'),
	('4', '"[8,14,15,33,38,53,59,60]"'),
	('5', '"[17,49,50,59,60]"'),
	('6', '"[9,15,33,37,38,39,40,52,53,56,59,60,66]"'),
	('7', '"[17,33,38,39,53,59,60]"'),
	('8', '"[8,15,33,38,39,59,60]"'),
	('9', '"[4,14,22,41]"'),
	('10', '"[8,15,17,33,38,59,60]"'),
	('11', '"[17,33,59,60]"'),
	('12', '"[12,14,15,33,38,39,53,59,60]"'),
	('13', '"[8,15,17,28,38,53,59,60]"'),
	('14', '"[8,15,16,17,28,33,38,53,59,60]"'),
	('15', '"[15,33,52,57,59,60]"'),
	('16', '"[14,16,17,41,57,59,60,63]"'),
	('17', '"[8,9,14,15,16,17,33,38,39,52,53,56,59,60]"'),
	('18', '"[8,17,28,33,59,60]"'),
	('19', '"[8,14,16,17,28,49,59,60]"'),
	('20', '"[14,15,16,28,33,38,39,59,60]"'),
	('21', '"[8,12,14,15,33,38,53,59,60]"'),
	('22', '"[12,16,17,41,50,57,59,60,63]"'),
	('23', '"[17,28,49,59,60]"'),
	('24', '"[8,14,15,16,17,28,49,50,59,60,62]"'),
	('25', '"[17,28,33,38,39,53,59,60,62]"'),
	('26', '"[8,14,15,16,33,38,39,53,59,60]"'),
	('27', '"[8,9,15,17,33,38,39,56,59,60]"'),
	('28', '"[14,16,37,40,41,43,59,60,63]"'),
	('29', '"[17,28,49,50,59,60]"'),
	('30', '"[9,15,52,56,59,60,66]"'),
	('31', '"[12,14,15,17,32,33,38,39,59,60]"'),
	('32', '"[6,17,44,56,59,60]"'),
	('33', '"[17,33,38,39,59,60]"'),
	('34', '"[13,14,16,35,40,41,56,63]"'),
	('35', '"[8,9,14,16,17,36,49,56,59,60]"'),
	('36', '"[8,17,23,33,45,59,60]"'),
	('37', '"[3,17,22,33,56,59,60]"'),
	('38', '"[8,15,17,33,38,39,59,60]"'),
	('39', '"[14,15,16,17,29,33,38,53,55,59,60]"'),
	('40', '"[9,15,33,52,56,59,60,66]"'),
	('41', '"[8,14,16,17,28,33,38,39,59,60]"'),
	('42', '"[8,15,28,38,39,53,59,60]"'),
	('43', '"[9,11,14,15,16,17,27,29,33,52,56,59,60,66]"'),
	('44', '"[4,13,14,15,16,41,50,59,60,63]"'),
	('45', '"[8,17,33,59,60]"'),
	('46', '"[9,17,28,44,56,59,60]"'),
	('47', '"[15,17,28,33,59,60]"'),
	('48', '"[8,14,15,33,38,39,53,59,60]"'),
	('49', '"[8,15,28,49,59,60]"'),
	('50', '"[14,15,16,18,29,38,39,53,59,60]"'),
	('51', '"[17,28,32,33,59,60]"'),
	('52', '"[15,28,33,38,53,59]"'),
	('53', '"[8,14,15,16,33,38,39,53,59,60,62]"'),
	('54', '"[14,16,17,28,33,59,60]"'),
	('55', '"[15,25,29,38,39,52,53,59,60]"'),
	('56', '"[15,17,33,52,59,60,66]"'),
	('57', '"[17,28,33,59,60]"'),
	('58', '"[14,28,29,41,57]"'),
	('59', '"[17,28,49,50,59,60]"'),
	('60', '"[17,28,38,39,49,59,60]"'),
	('61', '"[29,41,63]"'),
	('62', '"[3,14,17,44,56,59,64]"'),
	('63', '"[8,14,16,17,28,33,38,50,53,59,60]"'),
	('64', '"[29,46]"'),
	('65', '"[3,14,17,28,49,50,56,59,60]"'),
	('66', '"[8,15,17,28,32,49,59,60]"'),
	('67', '"[8,9,14,17,26,28,33,56,59,60]"'),
	('68', '"[14,15,26,33,38,53,59,60]"'),
	('69', '"[17,28,49,50,59,60]"'),
	('70', '"[8,17,49,59,60]"'),
	('71', '"[14,15,16,28,52,59,60]"'),
	('72', '"[12,14,15,28,38,39,49,53,59,60,62]"'),
	('73', '"[8,15,33,38,53,59,60]"'),
	('74', '"[8,9,14,15,16,28,50,59,60]"'),
	('75', '"[3,12,14,22,28]"'),
	('76', '"[12,14,17,38,39,49,59]"'),
	('77', '"[8,14,17,33,59,60]"'),
	('78', '"[14,15,17,28,32,49,59,60]"'),
	('79', '"[9,14,17,52,56,59,66]"'),
	('80', '"[14,17,28,33,50,59,60]"'),
	('81', '"[12,14,15,17,49,57,59,60]"'),
	('82', '"[9,14,15,16,17,38,39,49,53,56,59,60]"'),
	('83', '"[29,46]"'),
	('84', '"[8,14,16,17,33,49,59,60,62]"'),
	('85', '"[3,14,16,17,44,52,56,59,60]"'),
	('86', '"[8,17,38,49,53,59,60]"'),
	('87', '"[8,14,16,17,29,33,38,53,55,59,60]"'),
	('88', '"[14,15,28,38,39,53,59,60]"'),
	('89', '"[8,14,33,52,59,60,66]"'),
	('90', '"[5,14,16,17,19,33,56,59]"'),
	('91', '"[8,17,49,59,60,62]"'),
	('92', '"[15,26,28,38,39,59,60]"'),
	('93', '"[8,9,11,14,17,27,28,33,56,59,60]"'),
	('94', '"[9,17,28,52,56,57,59,60,66]"'),
	('95', '"[8,17,28,33,44,50,59,60]"'),
	('96', '"[9,12,14,15,17,44,49,50,56,59,60]"'),
	('97', '"[8,14,15,28,38,39,49,59,60]"'),
	('98', '"[9,15,17,22,52,56,59,60,66]"'),
	('99', '"[15,17,28,38,39,49,53,59,60]"'),
	('100', '"[8,14,15,27,48,59,60]"'),
	('101', '"[10,14,44,50]"'),
	('102', '"[14,15,16,17,29,33,38,39,53,55,59,60]"'),
	('103', '"[9,14,15,52,56,59,66]"'),
	('104', '"[2,9,15,17,33,38,40,52,53,56,59,60,66]"'),
	('105', '"[12,14,15,38,39,52,53,57,59,60,66]"'),
	('106', '"[4,13,14,16,41,50,63]"'),
	('107', '"[8,14,15,33,59,60]"'),
	('108', '"[8,14,15,16,17,28,38,39,44,53,59,60]"'),
	('109', '"[8,9,15,26,27,38,42,49,53,56,59,60]"'),
	('110', '"[4,14,16,41,50,63]"'),
	('111', '"[8,15,17,38,39,49,50,53,59,60]"'),
	('112', '"[9,17,22,38,44,56,59,60]"'),
	('113', '"[8,14,38,49,53,59,60]"'),
	('114', '"[8,14,16,17,28,38,39,49,59,60]"'),
	('115', '"[4,8,14,16,17,38,41,53,59,63]"'),
	('116', '"[12,14,15,17,28,38,39,49,53,59,60]"'),
	('117', '"[8,14,15,16,17,32,33,38,53,59,60]"'),
	('118', '"[9,14,15,22,28,56,59,60]"'),
	('119', '"[14,15,17,28,32,49,50,59,60,62]"'),
	('120', '"[6,17,49,50,56,59,60]"'),
	('121', '"[14,16,41,50,63]"'),
	('122', '"[8,14,15,16,17,33,38,39,53,59,60]"'),
	('123', '"[8,17,52,59,60,66]"'),
	('124', '"[17,33,52,57,59,60]"'),
	('125', '"[8,12,14,15,17,27,29,33,38,39,42,53,55,59,60]"'),
	('126', '"[4,14,41,50,63]"'),
	('127', '"[9,15,17,27,28,38,39,44,53,56,59,60,61]"'),
	('128', '"[14,15,17,38,39,52,53,57,59,60,66]"'),
	('129', '"[9,14,16,17,28,33,44,50,56,59,60]"'),
	('130', '"[15,28,38,49,53,59,60]"'),
	('131', '"[8,9,14,15,17,52,56,59,60,66]"'),
	('132', '"[15,22,25,59,60]"'),
	('133', '"[8,14,17,49,59,60,62]"'),
	('134', '"[14,15,16,28,38,49,50,53,59,60,62]"'),
	('135', '"[3,8,14,16,17,27,42,52,56,59,60,66]"'),
	('136', '"[8,14,15,16,17,28,33,44,50,59,60]"'),
	('137', '"[8,14,15,16,17,27,33,38,42,53,59,60]"'),
	('138', '"[3,12,14,17,52,56,59,60,66]"'),
	('139', '"[4,14,41,50,57,63]"'),
	('140', '"[14,15,33,52,59,60,62]"'),
	('141', '"[3,14,16,17,22,33,44,56,59,60]"'),
	('142', '"[8,17,28,49,50,59,60]"'),
	('143', '"[9,17,26,28,56,57,59]"'),
	('144', '"[8,14,15,16,38,39,49,50,53,59,60]"'),
	('145', '"[14,15,16,17,28,33,38,50,59,60]"'),
	('146', '"[8,17,44,49,59,60]"'),
	('147', '"[4,14,16,40,41,50,63]"'),
	('148', '"[8,9,12,14,15,17,28,33,38,39,56,59,60]"'),
	('149', '"[8,14,15,16,17,28,38,49,53,59,60]"'),
	('150', '"[15,28,49,59,60,62]"'),
	('151', '"[4,12,14,41,43,63]"'),
	('152', '"[8,14,15,17,28,38,49,53,59,60]"'),
	('153', '"[8,15,28,38,49,53,59,60]"'),
	('154', '"[8,14,15,16,17,27,28,38,39,42,49,57,59,60]"'),
	('155', '"[15,38,39,49,52,53,59,60,66]"'),
	('156', '"[8,17,28,32,33,59,60]"'),
	('157', '"[8,9,14,15,33,38,39,52,53,56,59,60,66]"'),
	('158', '"[12,14,17,27,28,38,42,49,59,60]"'),
	('159', '"[8,9,12,14,15,17,49,50,56,59,60]"'),
	('160', '"[14,17,28,38,39,49,50,59,60]"'),
	('161', '"[17,28,49,59,60]"'),
	('162', '"[14,15,16,44,49,59,60]"'),
	('163', '"[14,15,16,28,38,39,49,53,59,60]"'),
	('164', '"[8,17,33,59,60]"'),
	('165', '"[8,14,15,16,17,38,49,53,59,60]"'),
	('166', '"[9,15,17,33,38,39,52,56,59,60,66]"'),
	('167', '"[14,15,27,40,41,42,50,59,60,63]"'),
	('168', '"[15,28,33,38,39,44,53,59,60]"'),
	('169', '"[8,14,15,16,33,38,39,44,53,59,60]"'),
	('170', '"[15,28,49,59,60]"'),
	('171', '"[15,17,27,28,38,39,40,42,59,60]"'),
	('172', '"[12,14,17,22,52,59,60,66]"'),
	('173', '"[8,14,15,16,26,27,38,39,49,50,58,59,60]"'),
	('174', '"[12,14,15,17,38,39,49,53,59,60]"'),
	('175', '"[4,14,16,28,41,43,63]"'),
	('176', '"[15,38,49,52,53,57,59,60,66]"'),
	('177', '"[14,16,17,27,42,44,49,59,60]"'),
	('178', '"[12,14,17,29,33,38,39,53,55,59,62]"'),
	('179', '"[17,28,33,59,60]"'),
	('180', '"[14,17,26,27,28,42,59,60]"'),
	('181', '"[14,15,16,17,28,33,38,53,59,60]"'),
	('182', '"[8,12,14,15,17,52,57,59,60,66]"'),
	('183', '"[14,16,17,28,49,59,60]"'),
	('184', '"[3,17,22,28,44,56,59,60]"'),
	('185', '"[9,12,14,15,27,33,38,39,42,53,56,59,60,66]"'),
	('186', '"[4,14,16,41,50,63]"'),
	('187', '"[9,14,15,17,28,33,56,59,60]"'),
	('188', '"[14,16,17,28,38,39,49,50,59,60]"'),
	('189', '"[9,14,15,16,38,39,52,53,56,59,60,66]"'),
	('190', '"[8,17,27,28,42,44,59,60]"'),
	('191', '"[9,17,28,44,56,59,60]"'),
	('192', '"[17,33,50,59,60]"'),
	('193', '"[12,14,15,28,33,38,39,59,60]"'),
	('194', '"[14,15,16,17,26,33,38,53,59,60]"'),
	('195', '"[9,17,28,44,56,59,60]"'),
	('196', '"[9,14,15,17,52,56,59,60,66]"'),
	('197', '"[8,14,15,16,26,52,59,60,66]"'),
	('198', '"[8,14,15,16,20,27,33,38,39,53,59,60]"'),
	('199', '"[29,46]"'),
	('200', '"[15,49,50,59,60,62]"'),
	('201', '"[4,14,41,43,63]"'),
	('202', '"[3,15,22,27,42,52,56,59,60,66]"'),
	('203', '"[14,17,29,32,33,55,59,60]"'),
	('204', '"[8,17,49,50,59,60,62]"'),
	('205', '"[14,16,25,28,33,38,53]"'),
	('206', '"[17,27,42,49,50,59,60]"'),
	('207', '"[15,26,27,42,49,59,60]"'),
	('208', '"[9,17,22,28,44,56,59]"'),
	('209', '"[17,28,33,38,39,59,60]"'),
	('210', '"[4,14,16,41,50,57,63]"'),
	('211', '"[9,17,25,27,33,42,56,59]"'),
	('212', '"[14,15,17,49,52,59,60,66]"'),
	('213', '"[15,38,39,49,50,59,60,62]"'),
	('214', '"[1,6,7,17,27,33,56,59,60]"'),
	('215', '"[15,17,25,28,29,32,33,55,59,60]"'),
	('216', '"[17,36,49,50,56,59,62]"'),
	('217', '"[17,26,44,59,60]"'),
	('218', '"[15,28,38,49,53,59,60]"'),
	('219', '"[16,25,28,29,32,33,38,53,59,60]"'),
	('220', '"[8,14,15,16,27,31,33,38,39,59,60]"'),
	('221', '"[8,14,16,17,28,49,59,60]"'),
	('222', '"[9,14,15,38,39,49,52,56,59,60,66]"'),
	('223', '"[17,28,49,59,60,62]"'),
	('224', '"[17,28,33,59,60]"'),
	('225', '"[8,15,33,38,39,53,59,60]"'),
	('226', '"[17,26,28,49,59,60]"'),
	('227', '"[14,16,17,27,30,33,52,59,60,66]"'),
	('228', '"[4,12,14,41,63]"'),
	('229', '"[8,17,27,49,59,60]"'),
	('230', '"[17,44,59,60]"'),
	('231', '"[10,12,14,38,39,44]"'),
	('232', '"[17,49,50,57,59,60,62]"'),
	('233', '"[17,49,52,59,60,66]"'),
	('234', '"[14,16,17,28,33,38,59,60]"'),
	('235', '"[17,27,42,49,57,59,60]"'),
	('236', '"[9,15,52,56,59,60,66]"'),
	('237', '"[8,15,28,33,38,39,59,60]"'),
	('238', '"[17,28,49,50,59,60,62]"'),
	('239', '"[6,15,22,27,42,49,52,56,59,60,66]"'),
	('240', '"[8,15,17,28,38,49,59,60,62]"'),
	('241', '"[4,14,16,41,50,57,63]"'),
	('242', '"[17,44,59,60]"'),
	('243', '"[14,16,17,33,50,52,59,60,66]"'),
	('244', '"[3,15,17,22,37,40,52,56,59,60,66]"'),
	('245', '"[8,14,15,16,28,38,39,49,53,59,60,62]"'),
	('246', '"[14,15,16,17,33,38,53,59,60]"'),
	('247', '"[3,15,22,28,44,56,57,59,60]"'),
	('248', '"[15,17,38,39,52,53,59,60,66]"'),
	('249', '"[17,26,27,42,49,50,59,60]"'),
	('250', '"[14,15,16,33,38,39,50,53,59,60]"'),
	('251', '"[4,13,14,41,50,63]"'),
	('252', '"[12,14,15,38,39,49,53,59,60]"'),
	('253', '"[17,28,49,59]"'),
	('254', '"[14,15,16,38,49,52,53,59,60,66]"'),
	('255', '"[6,8,9,15,17,44,56,59,60]"'),
	('256', '"[17,38,39,49,53,59,60]"'),
	('257', '"[9,15,17,44,49,57,59,60]"'),
	('258', '"[8,15,26,33,38,39,52,53,59,60,66]"'),
	('259', '"[15,33,38,39,53,59,60]"'),
	('260', '"[15,17,26,49,57,59,60]"'),
	('261', '"[14,15,38,39,49,50,53,59,60,62]"'),
	('262', '"[17,25,49,59,60,62]"'),
	('263', '"[9,17,27,42,44,56,59,60]"'),
	('264', '"[15,33,38,52,53,59,60,66]"'),
	('265', '"[9,15,33,50,56,59,60]"'),
	('266', '"[4,13,14,16,17,41,50,57,59,63]"'),
	('267', '"[8,15,59,60]"'),
	('268', '"[14,15,16,38,39,49,52,53,59,60,66]"'),
	('269', '"[10,14,27,38,42,44]"'),
	('270', '"[15,28,33,38,53,59,60]"'),
	('271', '"[4,24,41,43,63]"'),
	('272', '"[8,14,16,17,25,49,59,60]"'),
	('273', '"[8,15,38,39,49,53,59,60,62]"'),
	('274', '"[15,25,49,50,59,60]"'),
	('275', '"[14,17,27,28,32,42,49,59,60]"'),
	('276', '"[3,17,52,56,59,66]"'),
	('277', '"[8,17,28,49,59,60,62]"'),
	('278', '"[15,27,38,39,47,49,53,59,60]"'),
	('279', '"[9,13,17,28,49,59,60,62]"'),
	('280', '"[9,15,27,33,38,39,42,44,53,56,59,60]"'),
	('281', '"[14,15,16,38,39,52,59,60,66]"'),
	('282', '"[4,14,27,41,42,57,63]"'),
	('283', '"[15,49,50,59,60]"'),
	('284', '"[15,28,49,59,60]"'),
	('285', '"[9,15,17,22,32,52,59,60,66]"'),
	('286', '"[8,17,28,44,59,60]"'),
	('287', '"[14,15,16,28,33,38,39,59]"'),
	('288', '"[14,17,27,42,49,52,57,59,60]"'),
	('289', '"[8,15,17,32,33,50,59,60]"'),
	('290', '"[17,28,49,59,60,62]"'),
	('291', '"[8,15,17,33,44,59,60]"'),
	('292', '"[15,28,38,49,50,53,59,62]"'),
	('293', '"[8,9,17,27,28,42,49,56,59,60]"'),
	('294', '"[15,17,28,38,49,59,60,62]"'),
	('295', '"[9,15,17,33,52,56,59,60,66]"'),
	('296', '"[4,13,14,41,50,57,63]"'),
	('297', '"[8,17,27,33,38,39,42,52,53,59,66]"'),
	('298', '"[8,15,38,49,53,59,60]"'),
	('299', '"[17,33,59,60]"'),
	('300', '"[9,17,38,52,53,56,59,60,66]"'),
	('301', '"[9,15,17,27,28,42,56,59,60]"'),
	('302', '"[14,15,17,28,38,49,50,53,59,60]"'),
	('303', '"[14,15,33,38,39,50,59,60]"'),
	('304', '"[8,17,44,59,60]"'),
	('305', '"[13,17,49,50,59,60,62]"'),
	('306', '"[15,17,27,29,33,42,52,55,59,60,66]"'),
	('307', '"[4,5,14,27,28,32,41,42,57,63]"'),
	('308', '"[8,15,33,38,39,52,53,59,60,66]"'),
	('309', '"[6,15,17,28,49,50,56,59,60]"'),
	('310', '"[9,14,15,17,22,52,59,60,66]"'),
	('311', '"[8,15,33,38,53,59,60]"'),
	('312', '"[17,27,42,49,59,60,62]"'),
	('313', '"[15,33,38,52,53,59,60,66]"'),
	('314', '"[17,33,49,59,60,62]"'),
	('315', '"[8,14,15,29,33,38,39,53,55,59,60]"'),
	('316', '"[8,15,26,50,59,60,62]"'),
	('317', '"[17,22,33,59,60]"'),
	('318', '"[17,33,59]"'),
	('319', '"[14,15,16,17,28,49,50,59,60]"'),
	('320', '"[14,27,41,42,43,63]"'),
	('321', '"[9,15,33,56,57,59,60]"'),
	('322', '"[10,12,14,38,44]"'),
	('323', '"[8,17,22,52,59,66]"'),
	('324', '"[8,15,26,28,49,59,60]"'),
	('325', '"[9,17,22,28,44,56,59,60]"'),
	('326', '"[14,15,28,38,52,53,59,60,66]"'),
	('327', '"[8,17,28,33,38,44,53,57,59,60]"'),
	('328', '"[8,15,17,25,28,49,59,60]"'),
	('329', '"[9,14,15,33,38,39,52,53,56,59,60,66]"'),
	('330', '"[17,33,52,59,60,66]"'),
	('331', '"[15,17,27,28,33,38,42,59,60]"'),
	('332', '"[17,49,50,59,60]"'),
	('333', '"[4,14,16,32,41,50,63]"'),
	('334', '"[14,15,33,38,59,60]"'),
	('335', '"[15,40,49,59,60,62]"'),
	('336', '"[15,17,26,27,33,42,57,59,60]"'),
	('337', '"[15,33,38,39,50,53,59,60]"'),
	('338', '"[17,52,57,59,60,66]"'),
	('339', '"[8,14,15,28,38,39,49,50,59,60,62]"'),
	('340', '"[15,21,22,52,56,59,60,66]"'),
	('341', '"[9,15,17,25,27,33,42,56,59,60]"'),
	('342', '"[9,14,15,16,38,39,44,56,59,60]"'),
	('343', '"[9,15,17,22,26,52,56,59,60,66]"'),
	('344', '"[4,14,27,32,41,42,43,50,63]"'),
	('345', '"[8,17,28,29,49,57,59,60]"'),
	('346', '"[9,15,17,38,52,53,56,59,60,66]"'),
	('347', '"[17,28,49,57,59,60]"'),
	('348', '"[15,26,33,50,57,59,60]"'),
	('349', '"[8,15,33,38,39,44,53,59,60]"'),
	('350', '"[3,15,17,32,52,56,57,59,60,66]"'),
	('351', '"[14,15,38,53,59,60]"'),
	('352', '"[8,17,57,59,60]"'),
	('353', '"[17,22,28,59]"'),
	('354', '"[15,28,33,38,50,53,59,60]"'),
	('355', '"[3,17,28,44,59,60]"'),
	('356', '"[8,17,49,59,60,62]"'),
	('357', '"[15,26,38,39,52,59,60,66]"'),
	('358', '"[17,26,28,33,57,59,60]"'),
	('359', '"[4,14,16,41,57,63]"'),
	('360', '"[8,15,28,33,38,53,59,60]"'),
	('361', '"[9,14,17,28,40,56,59,60]"'),
	('362', '"[8,15,33,59,60]"'),
	('363', '"[8,15,27,33,39,42,59,60]"'),
	('364', '"[8,15,27,28,33,38,39,52,53,54,59,60,66]"'),
	('365', '"[17,28,38,39,44,57,59,60]"'),
	('366', '"[3,17,28,44,56,59]"'),
	('367', '"[14,15,16,33,38,39,49,53,59,60,62]"'),
	('368', '"[17,28,49,59,60]"'),
	('369', '"[8,9,15,17,33,38,39,56,59,60]"'),
	('370', '"[4,14,28,41,43,50,63]"'),
	('371', '"[25,29]"'),
	('372', '"[8,9,14,15,38,52,53,56,59,60,66]"'),
	('373', '"[2,9,15,33,40,52,59,60,66]"'),
	('374', '"[8,15,33,38,39,53,59,60]"'),
	('375', '"[8,17,28,49,59,62]"'),
	('376', '"[17,27,28,33,38,53,59,67]"'),
	('377', '"[9,14,15,33,56,59,60]"'),
	('378', '"[8,17,44,59,60]"'),
	('379', '"[15,17,33,59,60]"'),
	('380', '"[14,15,16,32,33,38,59,60]"'),
	('381', '"[15,17,27,52,59,60,65,66]"'),
	('382', '"[9,14,15,16,28,33,56,59,60]"'),
	('383', '"[12,14,15,17,29,38,39,49,53,55,59,60]"'),
	('384', '"[4,14,41,50,63]"'),
	('385', '"[8,15,33,38,39,53,59,60]"'),
	('386', '"[9,15,17,28,44,57,59,60]"'),
	('387', '"[8,15,38,49,50,59,60,62]"'),
	('388', '"[15,33,38,39,59,60]"'),
	('389', '"[8,9,14,15,49,56,59,60]"'),
	('390', '"[14,15,28,49,50,59,60]"'),
	('391', '"[17,28,33,50,59,60]"'),
	('392', '"[9,15,27,42,49,52,59,60,66]"'),
	('393', '"[8,15,28,38,39,49,59,60]"'),
	('394', '"[6,17,33,44,56,59,60]"'),
	('395', '"[14,17,44,59,60]"'),
	('396', '"[15,28,38,39,50,53,59,60]"'),
	('397', '"[4,27,41,43,50,51,63]"'),
	('398', '"[14,15,17,28,29,33,38,39,53,55,59,60]"'),
	('399', '"[3,15,17,26,44,52,56,59,60,66]"'),
	('400', '"[17,28,38,59,60]"');