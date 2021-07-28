SELECT Album_name, Year FROM Albums
    WHERE Year = 2018;

SELECT Track_name, Time FROM Tracks
    WHERE Time = MAX(Time);

SELECT Track_name FROM Tracks
    WHERE Time >= 210;

SELECT Collection_name FROM Collections
    WHERE Year BETWEEN 2018 AND 2020;

SELECT Artist_name FROM Artists
    WHERE Artist_name NOT LIKE ' ';

SELECT Track_name FROM Tracks
    WHERE Track_name LIKE '%%мой%% ' OR '%%%my%%';