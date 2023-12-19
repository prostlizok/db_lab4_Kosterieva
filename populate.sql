INSERT INTO Match (id, duration, platformid, seasonid) VALUES
(10, 1909, 'EUW1', 8),
(11, 1693, 'EUW1', 8),
(12, 1482, 'EUW1', 8),
(13, 1954, 'EUW1', 8),
(14, 2067, 'EUW1', 8),
(15, 1593, 'EUW1', 8),
(16, 1589, 'EUW1', 8),
(17, 1664, 'EUW1', 8),
(18, 1875, 'EUW1', 8),
(19, 1541, 'EUW1', 8);

INSERT INTO Participants (ID, matchID, player, championID, role, position) VALUES
(9, 10, 1, 19, 'NONE', 'JUNGLE'),
(10, 10, 2, 267, 'DUO_SUPPORT', 'BOT'),
(11, 10, 3, 119, 'DUO_CARRY', 'BOT'),
(12, 10, 4, 114, 'SOLO', 'TOP'),
(13, 10, 5, 112, 'SOLO', 'MID'),
(14, 10, 6, 72, 'NONE', 'JUNGLE'),
(15, 10, 7, 3, 'SOLO', 'TOP'),
(16, 10, 8, 103, 'SOLO', 'MID'),
(17, 10, 9, 222, 'DUO_CARRY', 'BOT'),
(18, 10, 10, 161, 'DUO_SUPPORT', 'BOT');

INSERT INTO Champions (championID, champion_name) VALUES
(19, 'Warwick'),
(267, 'Nami'),
(119, 'Draven'),
(114, 'Fiora'),
(112, 'Viktor'),
(72, 'Skarner'),
(3, 'Galio'),
(103, 'Ahri'),
(222, 'Jinx'),
(161, 'VelKoz');