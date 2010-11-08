DROP DATABASE IF EXISTS NEWS_READER;

CREATE DATABASE NEWS_READER;

USE NEWS_READER;

CREATE TABLE FEED (
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	url VARCHAR(1023),
	lastModifiedTime BIGINT(20),
	lastCrawledTime BIGINT(20),
	format SMALLINT,
	categories TEXT
) ENGINE=MyISAM DEFAULT CHARSET=utf8 MAX_ROWS=100000;

CREATE TABLE NEWS_CATEGORY (
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(1023)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 MAX_ROWS=100000;

CREATE TABLE NEWS (
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	feed_id INT UNSIGNED NOT NULL,
	guidValue VARCHAR(1023),
	title VARCHAR(1023),
	author VARCHAR(255),
	modifiedTime BIGINT(20),
	updatedTime BIGINT(20),
	publishedTime BIGINT(20),
	content TEXT,
	categories TEXT,
	INDEX (feed_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 MAX_ROWS=1000000000;

CREATE TABLE EXPERIOS (
	news_id INT UNSIGNED NOT NULL PRIMARY KEY,
	value_array TEXT,
	update_time BIGINT(20)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 MAX_ROWS=1000000000;