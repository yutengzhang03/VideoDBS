CREATE TABLE `videos` (
    `Video ID` INT PRIMARY KEY,
    `Title` VARCHAR(255),
    `Duration`INT,
    `Author ID`INT,
    `Likes`INT,
    `Favors`INT,
    `Coins`INT,
    `Transfer`INT,
    `Views`INT,
    `Public Date`VARCHAR(255),
    `Channel`VARCHAR(255)
);

INSERT INTO `videos` (`Video ID`, `Title`, `Duration`, `Author ID`, `Likes`, `Favors`, `Coins`, `Transfer`, `Views`, `Public Date`, `Channel`)
VALUES
(973710360, "Breakthroughs in Science: Lung Health and Research", 161, 448267806, 3364, 184, 3021, 5, 23939, "2021/6/16 21:36", "Knowledge"),
(545942490, "The Symphony of Xi'an: Traditional Music Rediscovered", 306, 474569011, 5536, 830, 5811, 210, 76890, "2021/6/7 15:03", "Music"),
(938586493, "Morning Routines: Starting the Day in a Chinese City", 44, 1750305126, 3198, 248, 1755, 69, 84228, "2022/5/3 21:55", "Daily_Live"),
(684755047, "Soothing Tunes: A Playlist for Well-Being", 57, 1187563385, 2751, 280, 73, 25, 31709, "2022/6/11 19:00", "Music"),
(342234574, "Level Up: Mastering The Latest Strategy Games", 853, 482300628, 3316, 609, 211, 209, 59478, "2022/6/2 17:06", "Game"),
(82878094, "Behind The Scenes: The Making of an Epic Saga", 747, 288171417, 960, 286, 277, 68, 24731, "2020/1/14 11:00", "Movie"),
(502479517, "Culinary Secrets: Recipes from the Heart", 755, 486043149, 1503, 241, 470, 98, 63241, "2021/4/4 18:39", "Food"),
(888755535, "Winning Strategies: Inside Competitive Gaming", 67, 482767965, 4824, 310, 2711, 12, 59346, "2021/6/24 22:24", "Game"),
(566813132, "Champion's Diet: Nutrition for Athletes", 184, 1403656459, 15807, 1243, 16270, 47, 77675, "2023/2/14 10:08", "Sport"),
(856766619, "High Scores: Memorable Soundtracks in Gaming History", 71, 358910756, 78242, 3310, 10901, 55, 105598, "2022/8/10 15:34", "Music"),
(631584226, "Chef's Diary: Exploring Regional Cuisines", 80, 497190916, 10100, 225, 446, 47, 133729, "2021/7/11 21:06", "Food"),
(286148718, "A Day with Me: Exploring Local Markets", 22, 618445551, 127, 45, 11, 15, 42839, "2020/7/4 13:46", "Daily_Live"),
(542999207, "Training Day: Exercises to Keep You Fit", 115, 702771759, 652, 676, 132, 776, 34680, "2020/11/29 18:40", "Sport"),
(549623750, "Athletic Dreams: Raising Funds for the Big Game", 18, 297434372, 1793, 895, 884, 449, 25473, "2021/12/3 0:51", "Sport"),
(80395664, "Melodic Healing: Music as Medicine", 45, 438401919, 3718, 287, 4265, 35, 68804, "2019/12/23 21:45", "Music"),
(546124716, "Inquiring Minds: The Latest Medical Innovations", 137, 448267806, 14187, 716, 10400, 38, 158762, "2021/6/10 13:09", "Knowledge"),
(350093734, "Home Cooking: Traditional Recipes for Modern Times", 104, 1403656459, 9609, 809, 9919, 48, 44719, "2023/1/9 17:50", "Game"),
(248735683, "Dance Rhythms: Getting Fit with Lung Health Exercises", 118, 448267806, 5146, 310, 4941, 10, 42562, "2021/6/17 18:07", "Dance"),
(422015649, "Rhythmic Gymnastics: Graceful Moves to Stay Fit", 93, 392345697, 1457, 128, 427, 16, 32883, "2021/12/1 17:00", "Dance"),
(435344548, "Real to Reel: Dramatic Stories of Courage", 10, 412578153, 2826, 131, 36, 20, 47877, "2023/1/13 19:23", "Game"),
(980023694, "Health Hacks: Daily Tips for a Better You", 626, 405504949, 15484, 6100, 3732, 1897, 295654, "2022/3/24 17:30", "Daily_Live"),
(458897404, "Concerts for a Cause: Music that Moves Us", 461, 698941501, 426, 81, 31, 55, 22767, "2021/1/31 9:06", "Music"),
(637260648, "Play to Win: Overcoming Challenges in Strategy Games", 58, 507638282, 4589, 226, 2440, 5, 23621, "2022/3/17 22:55", "Game"),
(301207654, "Step by Step: Learning to Dance with Passion", 10, 430371278, 2124, 31, 60, 3, 24979, "2022/7/21 23:21", "Dance"),
(429767430, "Life on Camera: Daily Vlogs of a Foodie", 155, 1403656459, 10522, 846, 9438, 52, 26836, "2022/8/24 18:40", "Daily_Live"),
(969083675, "Youth in Action: Sporting Events and Young Talent", 177, 628211263, 4401, 372, 6539, 25, 51650, "2020/7/28 18:43", "Game"),
(764968406, "Dancing Joy: Celebrating Every Moment", 90, 90582650, 10808, 914, 11330, 54, 102041, "2021/12/20 13:14", "Dance"),
(724619742, "Songs of Hope: Inspirational Music from Around the World", 88, 493260599, 8333, 340, 1313, 25, 61203, "2022/3/8 9:11", "Music"),
(986658543, "Understanding Our World: Educational Talks", 112, 1403656459, 23071, 2468, 25732, 112, 115985, "2022/10/19 21:11", "Knowledge"),
(773651737, "Epic Scenes: Filming Traditional Festivities", 151, 1403656459, 7142, 622, 7355, 36, 30652, "2022/10/3 21:48", "Movie");