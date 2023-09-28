CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `user_role_name` varchar(30) NOT NULL,
  `user_role_desc` varchar(200) NOT NULL
);

INSERT INTO `user_roles` (`user_role_id`, `user_role_name`, `user_role_desc`) VALUES
(1, 'Standard User', 'Normal user with no special permissions'),
(2, 'Admin', 'Extra permissions');

CREATE TABLE users (
  user_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_first_name varchar(30) NOT NULL,
  user_last_name varchar(30) NOT NULL,
  user_email varchar(100) NOT NULL UNIQUE,
  user_password char(255) NOT NULL,
  user_salt char(32) NOT NULL,
  user_role INT NOT NULL DEFAULT '1',
  user_active boolean NOT NULL DEFAULT true,
  FOREIGN KEY (user_role) REFERENCES user_roles(user_role_id)
);

INSERT INTO users (user_first_name,user_last_name, user_email, user_password, user_salt, user_role, user_active) VALUES 
('John', 'Doe','john@doe.com', 'opensesame', 'xxx', '1', true),
('Jane', 'Anderson','jane@doe.com', 'letmein', 'xxx', '2', true),
('Bob', 'Smith','bob@smith.com', 'test', 'xxx', '2', false);