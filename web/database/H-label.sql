-- USE vpdbHydrogen;

CREATE TABLE labels (
    `Label ID` INT PRIMARY KEY,
    `Label` VARCHAR(255),
    `Description` TEXT(65535)
);

INSERT INTO labels (`Label ID`, `Label`, `Description`)
VALUES
    (0, 'Technology', 'Content related to advancements, gadgets, IT, and electronics.'),
    (1, 'B-cut', 'Supplementary footage in video production or outtakes not included in the final edit.'),
    (2, "Event", "Content pertaining to specific happenings such as concerts, sports, conferences."),
    (3, "Hot", "Topics that are currently trending or receiving a lot of attention."),
    (4, "Gender", "Issues related to gender differences, roles, and equality."),
    (5, "Policy", "Discussions on policy analysis, political decisions, and regulations."),
    (6, "LOL", "Either content meant to be humorous or related to the game League of Legends."),
    (7, "MOBA", "Content about Multiplayer Online Battle Arena video games."),
    (8, "CUHK", "Content related to to The Chinese University of Hong Kong."),
    (9, "CUHKSZ", "Content related to The Chinese University of Hong Kong, Shenzhen."),
    (10, "Student", "Related to student life, education, or academic activities."),
    (11, "MC", "Master of Ceremonies or Microphone Controller in music context."),
    (12, "Hiphop", "A cultural movement encompassing a music genre and associated art forms."),
    (13, "Kpop", "Korean pop music, part of a global phenomenon of Korean cultural and musical export.");
