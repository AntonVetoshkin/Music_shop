create table if not exists Genre(
	GenreID serial primary key,
	Genre_name varchar(40)
);

create table if not exists Artist(
	ArtistID serial primary key,
	Artist_Name varchar(40) not null,
	GenreID integer references Genre(GenreID)
);

create table if not exists Albums(
	ArtistID integer references Artist(ArtistID),
	AlbumID serial primary key,
	Album_name varchar(80),
	Year integer 
);

create table if not exists Tracks(
	AlbumID integer references Albums(AlbumID),
	TrackID serial primary key,
	Title varchar(80),
	Time text 
);

