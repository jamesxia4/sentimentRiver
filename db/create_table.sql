create database sentiment_973_test;
use sentiment_973_test;

create table if not exists sentiment_comment(
	id  bigint(11) not null primary key auto_increment
	,topic varchar(255) not null
	,ct_time datetime not null
	,comment_item varchar(3000) not null
)ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

create table if not exists sentiment_result(
	id  bigint(11) not null primary key
	,sentiment int(4) default 0 
)ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

create table if not exists sentiment_river(
	id  bigint(11) not null primary key auto_increment
	,topic varchar(255) not null
	,ct_time datetime not null
	,river_item varchar(3000) not null
)ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
