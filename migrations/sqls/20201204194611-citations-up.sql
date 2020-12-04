CREATE TABLE IF NOT EXISTS users
(
    id MEDIUMINT UNSIGNED not null AUTO_INCREMENT, 
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    uuid char(36) not null, 
    name varchar(100) not null,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS posts
(
    id MEDIUMINT UNSIGNED not null AUTO_INCREMENT, 
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    uuid char(36) not null, 
    text varchar(100) not null, 
    user_id MEDIUMINT UNSIGNED not null,
    PRIMARY KEY (id)
);