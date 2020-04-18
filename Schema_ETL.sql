CREATE TABLE anime_catalogue (
id_anime INT PRIMARY KEY,
title VARCHAR(200),
episodes INT
);
CREATE TABLE origin (
id_source INT PRIMARY KEY,
source VARCHAR(200)
);

CREATE TABLE genre (
id_genre INT PRIMARY KEY,
genre VARCHAR(200)
);
CREATE TABLE ratings(
	id_ratings INT PRIMARY KEY,
	id_anime INT,
	id_source INT,
	score FLOAT,
	FOREIGN KEY (id_anime) REFERENCES anime_catalogue (id_anime),
	FOREIGN KEY (id_source) REFERENCES origin(id_source)
)

CREATE TABLE links(
	id_url INT PRIMARY KEY,
	id_anime INT,
	id_source INT,
	url VARCHAR(200),
	FOREIGN KEY (id_anime) REFERENCES anime_catalogue (id_anime),
	FOREIGN KEY (id_source) REFERENCES origin(id_source)
)

CREATE TABLE anime_genre_source(
	id_anime INT,
	id_genre INT,
	id_source INT,
	FOREIGN KEY (id_anime) REFERENCES anime_catalogue (id_anime),
	FOREIGN KEY (id_genre) REFERENCES genre(id_genre),
	FOREIGN KEY (id_source) REFERENCES origin(id_source)
)

