-- 1 запит 
SELECT 
    M.id, 
    M.duration, 
    M.platformid, 
    M.seasonid, 
    P.player, 
    P.championID, 
    P.role, 
    P.position
FROM 
    Match M
JOIN 
    Participants P ON M.Id = P.matchID;

-- 2 запит 
SELECT 
    P.matchID, 
    P.player, 
    C.championID, 
    C.champion_name, 
    P.role, 
    P.position
FROM 
    Participants P
JOIN 
    Champions C ON P.championID = C.championID
WHERE 
    P.matchID = 10;

-- 3 запит 
SELECT 
    M.id,
    M.duration, 
    M.platformid, 
    M.seasonid, 
    P.player, 
    C.championID, 
    C.champion_name
FROM 
    Match M
JOIN 
    Participants P ON M.Id = P.matchID
JOIN 
    Champions C ON P.championID = C.championID
WHERE 
    C.champion_name = 'Galio'; 