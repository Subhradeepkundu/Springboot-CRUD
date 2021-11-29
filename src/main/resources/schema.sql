create table users(
username varchar-ignorecase(50) not null primary key,
password varchar-ignorecase(50) not null,
enabled boolean not null
);

create table authorities(
username varchar-ignorecase(50) not null,
authority varchar-ignorecase(50) not null,
constraint fk authorities_users foreign key(username) references users(username)
);

create unique index ix_auth_username on authorities (username,authority);