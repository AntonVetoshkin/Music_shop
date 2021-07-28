create table if not exists Genre(
	GenreID serial primary key,
	Genre_name varchar(40)
);

create table if not exists Artists(
	ArtistID serial primary key,
	Artist_name varchar(40) not null
);

create table if not exists Albums(
	AlbumID serial primary key,
	Album_name varchar(80),
	Year integer 
);

create table if not exists Tracks(
	TrackID serial primary key,
	Track_name varchar(80),
	AlbumID integer not null references AlbumID(Albums),
	Time integer 
);

create table if not exists Collections(
	CollectionID serial primary key,
	Collection_name varchar(60),
	Year integer
);

create table if not exists Artist_in_Genre(
    ID serial primary key,
    ArtistID integer references ArtistID(Artist),
    GenreID integer references GenreID(Genre)
);

create table if not exists Artist_in_Album(
    ID serial primary key,
    ArtistID integer references ArtistID(Artist),
    AlbumID integer references AlbumID(Albums)
);
    
create table if not exists Tracks_in_Collection(
    TrackID integer references TrackID(Tracks),
    CollectionID integer references CollectionID(Collection)
);