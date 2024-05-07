select ID, Name, Gender, Location, Age, Last_login, Birth
from Users
where cast(ID as CHAR) = 'input' or name like "%input%";

select * from Videos where Play_counts > 1000 limit 20;

select * from Videos where Likes > 500 limit 20;

select * from Videos where Favors > 200 limit 20;

select * from Videos, Creator
where cast(Creator.ID as char) = 'input' and Videos.Creator_id = Creator.ID;

select * from Videos
where cast(Video_id as char) = 'input'
or Title like "%input%"
or Channel like "%input%";

select Creator.ID as creator, Creator.Intro as introduction, Creator.post_num as post_number, Creator.follwer_num as follower_number, 
Following.user_id, Following.Follow_time, 
Videos.Video_id, Videos.Title, Videos.Description
from Creator, Following, Videos
where cast(Following.user_id as char) = 'input'
and Creator.ID = Following.Creator_id
and Videos.Creator_id = Creator.ID;

select Videos.Video_id, Videos.Title, Videos.Description, 
Comments.user_id, Comments.review_id, Comments.content, 
Comments.agree_num as 'agree number', Comments.disagree_num as 'disagree number', Comments.post_time
from Videos, Comments 
where cast(Videos.Video_id as char) = 'input'
and Videos.video_id = Comments.video_id;

select * from Playlist 
where cast(user_id as char) = 'input';

select * from History 
where cast(user_id as char) = 'input';

select * from Favor_list 
where cast(user_id as char) = 'input';