create database sentiment_973_test;
use sentiment_973_test;

create table if not exists sentiment_result(
	recordDate  char(8) not null
	,topic varchar(255) not null
	,pos int(2) not null
	,mid int(2) not null
	,neg int(2) not null
)Primary key(recordDate,topic) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
