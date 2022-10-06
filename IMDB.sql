CREATE DATABASE IMDB;

-- Creating table for genre
CREATE TABLE genre ( Id INT PRIMARY KEY AUTO_INCREMENT, Type VARCHAR(255));
 -- Inserting data/record to the genre table
 INSERT INTO  genre (Type) VALUES ("Action"),("Adventure"),("Fantasy"),("Thriller"),("Crime"),("Drama"),("Science_Fiction");
 
 -- To View Table
 SELECT * FROM genre;

-- Creating a Table for Media
CREATE TABLE media (Id INT PRIMARY KEY AUTO_INCREMENT, Type VARCHAR(255));
-- Insering record into table
INSERT INTO  media (Type) VALUES ("Video"),("Image"),("Radio"),("Publication"),("Graphics"),("Arts_&_Music");

-- Creating a table for user
CREATE TABLE user (Id INT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(255), Age INT);
-- Inserting record to the table
INSERT INTO user (Name, Age) VALUES ("xxx", 24),("yyy",43),("AAA",35);

-- Creating a Table for Artist
CREATE TABLE artist (Id INT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(255), Experience INT, Average_Salary VARCHAR(255));
-- Inserting record to the artist
INSERT INTO artist (Name, Experience, Average_Salary) VALUES ("Christopher Nolan", 25, "$4 M"),("Lokesh Kanagaraj", 5, "₹30 L"),("Mani Ratnam", 48,"₹80 L"),("Prashanth Neel",15, "₹ 50L"),("S.Shankar",30,"₹70 L"),("Matthew McConaughey", 25,"$3 M"),("Matt Damon",20,"$1 M"),("Kamal Hasan",40,"₹90 L"),("Vijay Sethupathi",25,"₹45 L"),("Vikram",35,"₹70 L"),("Prakash Raj",40,"₹60 L"),("Yash", 15, "₹60 L"),("Ramachandra Raju",8,"₹40 L"),("Achyuth Kumar",30,"₹60 L"),("Rajinikanth", 50,"₹90 L");

-- Create a table for skill
CREATE Table skill (Id INT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(255));
-- Inserting record into the skill
INSERT INTO skill (Name) VALUES ("Dancer"),("Director"),("Fighter"),("Singer"),("Politican"),("Minicry"),("Creativity");

SELECT * FROM skill;
SELECT * FROM artist;
-- create table for artist skill
CREATE TABLE artist_skill (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Artist_Id INT,
    Skill_Id INT,
    FOREIGN KEY (Artist_Id)
        REFERENCES artist (Id),
    FOREIGN KEY (Skill_Id)
        REFERENCES skill (Id)
);
INSERT INTO artist_skill (Artist_Id,Skill_Id) VALUES (15,3),(15,1),(15,7);

-- create table movie
CREATE TABLE movie (Id INT PRIMARY KEY AUTO_INCREMENT,Name VARCHAR(255), Movie_Released_Date VARCHAR(255)); 
-- Inserting record into the movie
INSERT INTO movie (Name, Movie_Released_Date) VALUES("Interstellar","November 7, 2014"),("Vikram","June 3, 2022"),("Ponniyin Selvan part-1", "September 30, 2022"),("KGF Chapter-1","December 20, 2018"),("KGF Chapter-2","April 13, 2022"),("Anniyan", "June 10, 2005"),("Enthiran","September 30, 2010"); 

SELECT * FROM movie;
-- creat a table to show movie 
CREATE TABLE movie_info (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Movie_Id INT,
    Director INT,
    Hero INT,
    Villain INT,
    FOREIGN KEY (Movie_Id)
        REFERENCES movie (Id),
    FOREIGN KEY (Director)
        REFERENCES artist (Id),
    FOREIGN KEY (Hero)
        REFERENCES artist (Id),
    FOREIGN KEY (Villain)
        REFERENCES artist (Id)
);

-- to view the related tables for movie detail
SELECT * FROM artist;
SELECT * FROM movie;

INSERT INTO movie_info (Movie_Id,Director,Hero,Villain) VALUES (1,1,6,7),(2,2,8,9),(3,3,10,11),(4,4,12,13),(5,4,12,14),(6,5,10,10),(
7,5,15,15);

-- create table for movie media
CREATE TABLE movie_media (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Movie_Id INT,
    Media_Id INT,
    Name VARCHAR(255),
    Size VARCHAR(255),
    FOREIGN KEY (Movie_Id)
        REFERENCES movie (Id),
    FOREIGN KEY (Media_Id)
        REFERENCES media (Id)
);

-- to view the related table for movie_media
SELECT * FROM movie;
SELECT * FROM media;
INSERT INTO movie_media(Movie_Id, Media_Id, Name, Size) VALUES (6,1,"Video6","300 Mb"),(6,2,"Image6","20 Mb"),(6,6,"Music6","35 Mb");

-- Create table for movie-genre
CREATE TABLE movie_genre (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Movie_Id INT,
    Genre_Id INT,
    FOREIGN KEY (Movie_Id)
        REFERENCES movie (Id),
    FOREIGN KEY (Genre_Id)
        REFERENCES genre (Id)
);

SELECT * FROM movie;
SELECT * FROM genre;

INSERT INTO movie_genre (Movie_Id, Genre_Id) VALUES (1,1),(1,7),(2,1),(2,4),(3,1),(3,6),(4,1),(4,5),(4,6),(5,1),(5,5),(5,6),(7,1),(7,7),(7,4),(6,1),(6,6),(6,4);

-- Create table for review
CREATE TABLE review (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Movie_Id INT,
    User_Id INT,
    Points FLOAT,
    FOREIGN KEY (Movie_Id)
        REFERENCES movie (Id),
    FOREIGN KEY (User_Id)
        REFERENCES user (Id)
);

SELECT * FROM movie;
SELECT * FROM user;

INSERT INTO review (Movie_Id,User_Id,Points) VALUES (1,1,9),(2,1,8.5),(4,1,8.2),(5,1,8.6),(7,1,8.1),(1,2,9.1),(2,2,8.4),(3,2,8.7),(4,2,7.9),(5,2,8.7),(6,2,8.2),(7,2,8.4),(1,3,9.4),(2,3,8.4),(3,3,8.8),(4,3,8.3),(5,3,8.6),(6,3,8.2),(7,3,9);

-- view all table
SELECT * FROM artist;
SELECT * FROM genre;
SELECT * FROM media;
SELECT * FROM movie;
SELECT * FROM skill;
SELECT * FROM user;
SELECT * FROM review;
SELECT * FROM movie_info;
SELECT * FROM movie_media;
SELECT * FROM movie_genre;
SELECT * FROM artist_skill;
