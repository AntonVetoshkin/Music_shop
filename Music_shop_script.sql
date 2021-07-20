create table if not exists Genre(
	GenreID serial primary key,
	Genre_name varchar(40)
);

create table if not exists Artist(
	ArtistID serial primary key,
	Artist_Name varchar(40) not null
);

create table if not exists Tracks(
	TrackID serial primary key,
	Track_name varchar(80),
	AlbumID serial,
	Time integer 
);

create table if not exists Albums(
	AlbumID serial primary key references AlbumID(Tracks),
	Album_name varchar(80),
	Year integer 
);

create table if not exists Collection(
	CollectionID serial primary key,
	Collection_name varchar(60),
	Year integer
);

create table if not exists Artist_in_Genre(
    ID serial primary key,
    ArtistID serial references ArtistID(Artist),
    GenreID serial references GenreID(Genre)
);

create table if not exists Artist_in_Album(
    ID serial primary key,
    ArtistID serial references ArtistID(Artist),
    AlbumID serial references AlbumID(Albums)
);
    
create table if not exists Tracks_in_Collection(
    TrackID serial references TrackID(Tracks),
    CollectionID serial references CollectionID(Collection)
);