CREATE TABLE `creators` (
    `Creator ID` INT PRIMARY KEY,
    `Introduction` VARCHAR(255),
    `Post Number` INT,
    `Followers Number` INT
);

INSERT INTO `creators` (`Creator ID`, `Introduction`, `Post Number`, `Followers Number`)
VALUES
(358910756, "Using vlog to record life", 4, 223),
(3479, "All things about music", 8, 1968),
(73040, "Here to share my travel and food", 3, 305),
(448267806, "technical experts to take you to choose good electronic products", 5, 1577),
(497190916, "game area creator", 3, 187),
(43241, "Inspire creativity", 4, 72),
(28437, "Very lazy and nothing left", 1, 22),
(70989, "Hope you like my photography", 2, 503);