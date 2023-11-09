CREATE TABLE user_roles (
  `user_role_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `user_role_name` varchar(30) NOT NULL,
  `user_role_desc` varchar(200) NOT NULL
);

INSERT INTO `user_roles` (`user_role_id`, `user_role_name`, `user_role_desc`) VALUES
(1, 'Standard User', 'Normal user with no special permissions'),
(2, 'Admin', 'Extra permissions');

CREATE TABLE users (
  `user_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `user_first_name` varchar(30) NOT NULL,
  `user_last_name` varchar(30) NOT NULL,
  `user_email` varchar(100) NOT NULL UNIQUE,
  `user_password` char(255) NOT NULL,
  `user_salt` char(32) NOT NULL,
  `user_role` INT NOT NULL DEFAULT '1',
  `user_active` boolean NOT NULL DEFAULT true,
  FOREIGN KEY (`user_role`) REFERENCES `user_roles`(`user_role_id`)
);

INSERT INTO `users` (`user_first_name`, `user_last_name`, `user_email`, `user_password`, `user_salt`, `user_role`, `user_active`) VALUES 
('John', 'Doe','john@doe.com', 'opensesame', 'xxx', '1', true),
('Jane', 'Anderson','jane@doe.com', 'letmein', 'xxx', '2', true),
('Bob', 'Smith','bob@smith.com', 'test', 'xxx', '2', false);

CREATE TABLE artists (
  `artist_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `artist_stage_name` varchar(30) NOT NULL,
  `artist_first_name` varchar(30) NOT NULL,
  `artist_last_name` varchar(30) NOT NULL,
  `artist_genre` varchar(100) NOT NULL UNIQUE
);

INSERT INTO `artists` (`artist_id`, `artist_stage_name`, `artist_first_name`, `artist_last_name`, `artist_genre`) VALUES 
(1, 'Big Scarr', 'Alexander', 'Woods', 'Trap Rap'),
(2, 'A$AP ROCKY', 'Rakim', 'Mayers', 'Rap'),
(3, 'Ye', 'Kanye', 'West', 'Rap Soul');

CREATE TABLE albums (
  `album_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `artist_id` int,
  `album_name` varchar(30) NOT NULL,
   FOREIGN KEY (`artist_id`) REFERENCES `artists`(`artist_id`)
);

INSERT INTO `albums` (`album_id`, `artist_id`, `album_name`) VALUES 
(1, 1, 'Grim Reaper'),
(2, 2, 'TESTING'),
(3, 3, "808's and heartbreak's");

CREATE TABLE tracks (
  `track_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `album_id` int,
  `track_name` varchar(30) NOT NULL,
  FOREIGN KEY (`album_id`) REFERENCES `albums`(`album_id`)
);

INSERT INTO `tracks` (`track_id`, `album_id`, `track_name`) VALUES 
(1, 1, 'Studio Session'),
(2, 2, 'OG Beeper'),
(3, 3, 'Heartless');
