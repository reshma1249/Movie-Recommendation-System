DROP TABLE [dbo].[Users];

CREATE TABLE [dbo].[Users](
[ID] [int] IDENTITY(1,1) NOT NULL,
[UserName] [varchar](100) PRIMARY KEY,
[Password] [varchar](100) NOT NULL,
[FirstName] [varchar](100) NOT NULL,
[LastName] [varchar](100) NULL,
[EMail] [varchar](100) NOT NULL,
[Gender] [varchar](100) NOT NULL,
[Profile] [varchar](100) NOT NULL,
[DateOfBirth] DATETIME NOT NULL,
[Country] [varchar](100) NOT NULL,
[CreatedOn] DATETIME NOT NULL DEFAULT GETDATE()
);

INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('admin', 'admin', 'Admin', 'User', 'Admin@admin.com', 'Male', '05-05-1993', 'Admin', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user1', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user2', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user3', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user4', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user5', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user6', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user7', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user8', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user9', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user10', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user11', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user12', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user13', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user14', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user15', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user16', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user17', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user18', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user19', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user20', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user21', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user22', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user23', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user24', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user25', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user26', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user27', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user28', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user29', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user30', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user31', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user32', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user33', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user34', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user35', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user36', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user37', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user38', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user39', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user40', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user41', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user42', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user43', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user44', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user45', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user46', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user47', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user48', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user49', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user50', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user51', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user52', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user53', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user54', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user55', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user56', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user57', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user58', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user59', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user60', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user61', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user62', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user63', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user64', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user65', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');
INSERT INTO [dbo].[Users] ([UserName], [Password], [FirstName], [LastName], [EMail], [Gender], [DateOfBirth], [Profile], [Country]) VALUES ('user66', 'user', 'Demo', 'User', 'Demo@user.com', 'Male', '1996-01-01', 'User', 'India');

DROP TABLE [dbo].[Movies];

CREATE TABLE [dbo].[Movies](
[ID] [int] IDENTITY(1,1) NOT NULL,
[Name] [varchar](100),
[ReleaseDate] DATETIME NOT NULL,
[Genre] [varchar](100) NOT NULL,
[Description] [varchar](MAX) NULL,
[AvgRating] [decimal](18,2) DEFAULT 0,
[TotalRatings] [int] DEFAULT 0, 
[Country] [varchar](100) NOT NULL,
[Category] [varchar](100) NOT NULL,
[Tags] [varchar](100) NULL,
[CreatedOn] DATETIME NOT NULL DEFAULT GETDATE()
);



INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES
('Gone Girl', '2012-10-10', 'Drama, Mystery, Thriller, Action', 'With his wife''s disappearance having become the focus of an 
intense media circus, a man sees the spotlight turned on him when it''s suspected that he may not be innocent.', 'USA', 'Movie', NULL);


INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('American Horror Story', '2011-10-05', 'Drama, Fantasy, Horror', 'An anthology series that centers on different characters 
and locations, including a haunted house, an insane asylum, a witch coven and a freak show.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The Walking Dead', '2010-05-21', 'Drama, Horror, Thriller', 'Police officer Rick Grimes leads a group of survivors in a 
world overrun by zombies.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Fury', '2014-06-11', 'Action, Drama, War', 'April, 1945. As the Allies make their final push in the European Theatre, a 
battle-hardened army sergeant named Wardaddy commands a Sherman tank and her five-man crew on a deadly mission behind enemy lines. Out-numbered, 
out-gunned, and with a rookie soldier thrust into their platoon, Wardaddy and his men face overwhelming odds in their heroic attempts to strike 
at the heart of Nazi Germany.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Dracula Untold', '2014-08-06', 'Action,  Drama, Fantasy, War', 'Facing threats to his kingdom and his family, Vlad Tepes 
makes a deal with dangerous supernatural forces - whilst trying to avoid succumbing to the darkness himself.', 'USA',  'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Annabelle', '2014-03-14', 'Horror', 'A couple begin to experience terrifying supernatural occurrences involving a vintage 
doll shortly after their home is invaded by satanic cultists.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES  
('The Maze Runner', '2014-02-21', 'Action, Mystery, Sci-fi', 'Thomas is deposited in a community of boys after his memory is 
erased, soon learning they''re all trapped in a maze that will require him to join forces with fellow "runners" for a shot at escape.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The Judge', '2014-07-11', 'Drama', 'Big city lawyer Hank Palmer returns to his childhood home where his father, the town''s 
judge, is suspected of murder. Hank sets out to discover the truth and, along the way, reconnects with his estranged family.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The Equalizer', '2012-05-23', 'Action, Thriller, Crime, Adventure', 'A man believes he has put his mysterious past behind 
him and has dedicated himself to beginning a new, quiet life. But when he meets a young girl under the control of ultra-violent Russian 
gangsters, he can''t stand idly by - he has to help her.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The Hunger Games: Mockingjay - Part 1', '2014-09-05', 'Adventure, Sci - fi', 'Katniss Everdeen is in District 13 after she 
shatters the games forever. Under the leadership of President Coin and the advice of her trusted friends, Katniss spreads her wings as she 
fights to save Peeta and a nation moved by her courage.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The Best of me', '2014-04-18', 'Drama, Romance', 'A pair of former high school sweethearts reunite after many years when 
they return to visit their small hometown.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('X-Men: Days of Future Past', '2014-03-21', 'Action, Adventure, Thriller, Sci-fi', '', 'USA', 'Movie', NULL);


INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Kochadaiiyaan (2014)', '2014-05-23', 'Animation, Action, Adventure', 'The Story of a powerful king Kochadaiiyaan, and so 
does his Kingdom. But on a fateful day, one of his close friends plots against him and acquires his kingdom, while he was driven away. 
Kochadaiiyaan gets a baby boy Rana, who grows up to become a great warrior, and fights and redeems the kingdom that rightfully belongs to him.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
( 'Alexander and the Terrible, Horrible, No Good, Very Bad Day', '2014-10-03', 'Comedy, Family', 'Alexander''s day begins with 
gum stuck in his hair, followed by more calamities. Though he finds little sympathy from his family and begins to wonder if bad things only 
happen to him, his mom, dad, brother, and sister all find themselves living through their own terrible, horrible, no good, very bad day.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Gurdian of the galaxy', '2012-10-17', 'Action, Adventure, Sci-fi', 'A group of space criminals must work together to stop 
the fanatical villain Ronan the Accuser from destroying the galaxy.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Birdman or (Unexpected virtue of ignorance)', '2014-09-12', 'Comedy, Drama', 'A washed-up actor who once played an iconic 
superhero must overcome his ego and family trouble as he mounts a Broadway play in a bid to reclaim his past glory.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Teenage Mutant Ninja Turtles', '2014-08-15', 'Action, Adventure, Comedy, Fantasy', 'When a kingpin threatens New York City, 
a news reporter find a quad of mutants which makes an alliance to unravel Shredder''s plan as the Teenage Mutant Ninja Turtles.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Transformers: Age of Extinction', '2014-01-03', 'Action, Adventure', 'Autobots must escape sight from a bounty hunter who 
takes control of the human serendipity: Unexpectedly, Optimus Prime and his remaining gang turn to a mechanic and his daughter for help.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The Book of Life', '2014-10-17', 'Animation, Adventure, Family, Fantasy', 'Manolo, a young man who is torn between 
fulfilling the expectations of his family and following his heart, embarks on an adventure that spans three fantastic worlds where he must face 
his greatest fears.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Deliver us from evil', '2014-07-18', 'Adventure, Horror', 'New York police officer Ralph Sarchie investigates a series of 
crimes. He joins forces with an unconventional priest, schooled in the rites of exorcism, to combat the possessions that are terrorizing their 
city.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('22 Jump Street', '2012-01-17', 'Action, Comedy, Crime', 'After making their way through high school (twice), big changes 
are in store for officers Schmidt and Jenko when they go deep undercover at a local college.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Lucky', '2014-05-16', 'Action, Sci-fi, Thriller', 'A woman, accidentally caught in a dark deal, turns the tables on her 
captors and transforms into a merciless warrior evolved beyond human logic.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Horns', '2013-10-18', 'Drama, Fantasy, Horror, thriller', 'In the aftermath of his girlfriend''s mysterious death, a young 
man awakens to strange horns sprouting from his temples.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('John wick', '2014-09-19', 'Action, Thriller', 'An ex-hitman comes out of retirement to track down the gangsters that took 
everything from him.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Divernight', '2014-05-16', 'Action, Adventure ', 'In a world divided by factions based on virtues, Tris learns she''s 
Divergent and won''t fit in. When she discovers a plot to destroy Divergents, Tris and the mysterious Four must find out what makes Divergents 
dangerous before it''s too late.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The fault in our stars', '2014-08-22', 'Drama, Romance', 'Two teens, both who have different cancer conditions, fall in 
love after meeting at a cancer support group.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Stretch', '2014-05-23', 'Action, Comedy, Thriller', 'A hard-luck limo driver struggling to go straight and pay off a debt 
to his bookie takes on a job with a crazed passenger whose sought-after ledger implicates some seriously dangerous criminals', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Left Behind', '2014-08-29', 'Drama, Action, Thriller', 'A small group of survivors are left behind after millions of people 
suddenly vanish and the world is plunged into chaos and destruction.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The Giver ', '2014-06-06', 'Action, Thriller', 'In a seemingly perfect community, without war, pain, suffering, differences 
or choice, a young boy is chosen to learn from an elderly man about the true pain and pleasure of the "real" world.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('A Walk Among tomb stone', '2014-05-23', 'Crime, Drama, Mystery', 'Private investigator Matthew Scudder is hired by a drug 
kingpin to find out who kidnapped and murdered his wife.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Nightcrawler', '2014-04-25', 'Crime, Drama, Thriller', 'A young man stumbles upon the underground world of L.A. freelance 
crime journalism.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The Conjuring', '2013-09-13', 'Horror', 'Paranormal investigators Ed and Lorraine Warren work to help a family terrorized 
by a dark presence in their farmhouse.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Men , Women & Children', '2014-03-28', 'Comedy, Drama ', 'A group of high school teenagers and their parents attempt to 
navigate the many ways the Internet has changed their relationships, their communication, their self-image, and their love lives.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('This is where I leave you', '2014-10-10', 'Action, Thriller', 'When their father passes away, four grown siblings are 
forced to return to their childhood home and live under the same roof together for a week, along with their over-sharing mother and an 
assortment of spouses, exes and might-have-beens.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The Wolf of wall street', '2014-06-13', 'Biography, Comedy, Crime, Drama ', 'Based on the true story of Jordan Belfort, 
from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The Boxtrolls', '2014-09-26', 'Animation', 'A young orphaned boy raised by underground cave-dwelling trash collectors tries 
to save his friends from an evil exterminator. Based on the children''s novel ''Here Be Monsters'' by Alan Snow.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Maleficent', '2014-08-15', 'Action', 'A vengeful fairy is driven to curse an infant princess, only to discover that the 
child may be the one person who can restore peace to their troubled land.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('A Million Ways to Die in the West', '2014-07-11', 'Comedy', 'As a cowardly farmer begins to fall for the mysterious new 
woman in town, he must put his new-found courage to the test when her husband, a notorious gun-slinger, announces his arrival.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Exodus: Gods and Kings ', '2014-10-10', 'Drama', 'The defiant leader Moses rises up against the Egyptian Pharaoh Ramses, 
setting 600,000 slaves on a monumental journey of escape from Egypt and its terrifying cycle of deadly plagues.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('St. Vincent', '2014-10-03', 'Comedy', 'A young boy whose parents just divorced finds an unlikely friend and mentor in the 
misanthropic, bawdy, hedonistic, war veteran who lives next door.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Captain America: The Winter Soldier', '2014-01-31', 'Action, Adventure', 'Steve Rogers, now finding difficult to fit in to 
the era of today then leads an assault against a friend turned rival from World War II, a Soviet emissary known as "The Winter Soldier" and his 
lead of a precarious uprising.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('A Merry Friggin'' Christmas', '2012-10-31', 'Comedy', 'Boyd Mitchler and his family must spend Christmas with his estranged 
family of misfits. Upon realizing that he left all his son''s gifts at home, he hits the road with his dad in an attempt to make the 8-hour 
round trip before sunrise.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Camp X-Ray', '2014-08-07', 'Drama', 'A soldier assigned to Guantanamo Bay befriends a man who has been imprisoned there for 
eight years.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Begin Again', '2014-07-25', 'Drama, Action, Thriller', 'A chance encounter between a disgraced music-business executive and 
a young singer-songwriter new to Manhattan turns into a promising collaboration between the two talents.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Frozen', '2014-07-25', 'Animation', 'When a princess with the power to turn things into ice curses her home in infinite 
winter, her sister, Anna teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The Hunger Games', '2012-03-12', 'Sci-fi', 'Katniss Everdeen voluntarily takes her younger sister''s place in the Hunger 
Games, a televised fight to the death in which two teenagers from each of the twelve Districts of Panem are chosen at random to compete.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Extraterrestrial', '2014-10-03', 'Horror, Sci-fi', 'A group of friends on a weekend trip to a cabin in the woods find 
themselves terrorized by alien visitors.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Sin City: A Dame to Kill For ', '2014-10-24', 'Crime, Thriller', 'Some of Sin City''s most hard-boiled citizens cross paths 
with a few of its more reviled inhabitants.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Godzilla', '2014-07-25', 'Action, Sci-fi, Thriller', 'The world''s most famous monster is pitted against malevolent 
creatures who, bolstered by humanity''s scientific arrogance, threaten our very existence.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Scorpion', '2014-10-03', 'Action, Drama', 'An eccentric genius forms an international network of super-geniuses to act as 
the last line of defense against the complicated threats of the modern world.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Andaz Apna Apna', '1994-10-14', 'Comedy, Family, Romance, Thriller ', 'Two conmen competing for the hand of a heiress get 
drawn into love - and into trying to save her from an evil criminal.', 'India', 'Movie', 'Bollywood');

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Haider', '2014-10-02', 'Crime, Drama, Romance, Thriller', 'A young man returns to Kashmir after his father''s disappearance 
to confront uncle - the man who had a role in his father''s fate.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Sholay', '1975-12-03', 'Action, Adventure, Comedy, Drama, Musica', 'After his family is murdered by a notorious and 
ruthless bandit, a former police officer enlists the services of two outlaws to capture him.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Gang of Washepur', '2012-12-02', 'Action, Crime, Drama, Thriller', 'A clash between Sultan (a Qureishi dacoit chief) and 
Shahid Khan (a Pathan who impersonates him) leads to the expulsion of Khan from Wasseypur, and ignites a deadly blood feud spanning three 
generations.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Queen', '2014-03-07', 'Adventure, Comedy, Drama', 'A Delhi girl from a traditional family sets out on a solo honeymoon 
after her marriage gets cancelled.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Like Stars on Earth', '2007-12-21', 'Drama, Family', 'An eight year old boy is thought to be lazy and a troublemaker, until 
the new art teacher has the patience and compassion to discover the real problem behind his struggles in school.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('A Wednesday', '2008-12-14', 'Drama, Thriller', 'A retiring police officer reminiscences about the most astounding day of 
his career, a case that was never filed but continues to haunt him in his memories - the case of a man and a Wednesday.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Dil Chahta Hai', '2001-04-03', 'Comedy, Drama', 'Three individual''s relationships and the effect that these relationships 
have on them.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Munabhai M.B.B.S', '2003-08-05', 'Comedy, Crime', 'A gangster sets out to fulfill his father''s dream of becoming a 
doctor.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Hera Pheri', '2000-07-05', 'Comedy, Crime, Thriller', 'Three unemployed men find the answer to all their money problems 
when they recieve a call from a kidnapper. However, things do not go as planned...', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('3 Idiots', '2009-12-25', 'Comedy, Drama', 'Two friends are searching for their long lost companion. They revisit their 
college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them 
"idiots".', 'India', 'Movie', 'Bollywood');

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Color it yellow', '2006-01-26', 'Drama', 'A young woman from England comes to India to make a documentary about her 
grandfather''s diary which was written in the 1920s about the Indian Independence with five young men.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Bhag Milkha Bhag', '2013-07-12', 'Biography, Drama, History, Sports', 'The truth behind the ascension of Milkha "The Flying 
Sikh" Singh who was scarred because of the India-Pakistan partition.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Swadesh', '2004-12-17', 'Drama', 'A successful Indian scientist returns to an Indian village to take his nanny to America 
with him and in the process rediscovers his roots.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Chak de India', '2007-08-10', 'Sport, Family, Drama', 'The story of a hockey player who returns to the game as a coach of a 
women''s hockey team.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Dilwale Dulhania le Jayenge', '2014-07-25', 'Comedy, Drama, Musical, Romance', 'A young man and woman - both of Indian 
descent but born and raised in Britain - fall in love during a trip to Switzerland. However, the girl''s traditional father takes her back to 
India to fulfill a betrothal promise.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Udaan', '2014-07-25', 'Drama', 'Expelled from his school, a 16-year old boy returns home to his abusive and oppressive 
father.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Barfi!', '2014-07-25', 'Adventure, Comedy, Drama, Romance', 'Three young people learn that love can neither be defined nor 
contained by society''s norms of normal and abnormal.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Paan Singh Tomar', '2014-07-25', 'Action, Biography, Crime, Sport, Thrille', 'The story of Paan Singh Tomar, an Indian 
athlete and seven-time national steeplechase champion who becomes one of the most feared dacoits in Chambal Valley after his retirement.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Lagaan : Onece upon a time in India', '2014-07-25', 'Adventure, Drama, Musical, Romance, Spor', 'The people of a small 
village in Victorian India stake their future on a game of cricket against their ruthless British rulers...', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Happy New Year', '2014-10-24', ' Action, Comedy, Crime ', 'A team of losers win the love of millions in their quest to pull 
off the biggest diamond heist ever by team India.\r\n', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Don 2', '2011-12-23', ' Action, Crime, Drama  ', 'An international gangster turns himself in, then dramatically escapes - 
only to face treachery and betrayal.\r\n', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Rab Ne Bana Di Jodi', '2008-12-12', 'Comedy, Drama, Musical', 'A middle-aged man who lost his love for life rediscovers it 
by assuming a new identity in order to rekindle the romantic spark in his marriage.\r\n', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Kabhi Khushi Kabhie Gham...', '2001-12-14', 'Drama, Musical, Romance', 'Yashvardhan Raichand lives a very wealthy lifestyle 
along with his wife, Nandini, and two sons, Rahul and Rohan. While Rahul has been adopted, Yashvardhan and Nandini treat him as their own. When 
their sons mature, they start to look for suitable brides for Rahul, and decide to get him married to a young woman named Naina. When Rahul is 
told about this, he tells them that he loves another woman by the name of Anjali Sharma. Yashvardhan decides to meet with the Sharma family, and
finds out that they are middle-classed, unsophisticated, and will not be able to it into his family circle, as a result he refuses to permit 
Rahul to marry Anjali. A defiant Rahul decides to leave, gets married to Anjali, without his foster parents blessings, and re-locates to London, 
England, where Anjali''s unmarried sister, Pooja, also lives. Rohan, who was studying in a hostel, returns home to find that Rahul is no longer 
living with them, and he also discovers that while outwardly his dad is not interested in seeing Rahul get back, Nandini wants the family back 
all together for all happy and sad moments. Rohan also misses Rahul a lot, and decides to travel to London in order to try and get Rahul to 
return home. Yashvardhan, is unable to prevent this, and as a result Rohan does travel to London, meets with Rahul, Anjali, and Pooja. The 
question remains will the hurt and sorrow that Rahul experienced with his foster parents be erased and enable the family to be reunited, or will 
Rahul forget about the past, and continue to live his life without getting back to his roots and the family who brought him up, leaving Rohan to 
return alone?', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The Avengers', '2012-05-04', 'Action, Adventure, Sci-Fi  ', 'Earth''s mightiest heroes must come together and learn to 
fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity.\r\n', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Avengers: Age of Ultron', '2015-05-01', ' Action, Adventure, Sci-Fi ', 'When Tony Stark and Bruce Banner try to jump-start 
a dormant peacekeeping program, things go awry and it''s up to the Avengers to stop the villainous Ultron from enacting his terrible plans.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Thor ', '2011-05-06', ' Action, Adventure, Fantasy', 'The powerful but arrogant god Thor is cast out of Asgard to live 
amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Thor: The Dark World', '2013-11-08', 'Action, Adventure, Fantasy', 'When Dr Jane Foster gets cursed with a powerful object, 
Thor must protect it before an army and its ruthless leader try to get their hands on it to take over the remains of Earth.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Captain America: The First Avenger', '2011-07-22', ' Action, Adventure, Sci-Fi', 'Steve Rogers, a rejected military soldier 
transforms into Captain America after taking a dose of a "Super-Soldier serum". But being Captain America comes at a price as he attempts to 
take down a war monger and a terrorist organization.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Captain America: The Winter Soldier', '2014-04-04', ' Action, Adventure, Sci-Fi', 'As Steve Rogers struggles to embrace his 
role in the modern world, he teams up with another super soldier, the black widow, to battle a new threat from old history: an assassin known as 
the Winter Soldier.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Iron Man', '2008-05-02', ' Action, Adventure, Sci-Fi', 'After being held captive in an Afghan cave, an industrialist 
creates a unique weaponized suit of armor to fight against evil. This leads him to conflict within his own company.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Iron Man 3', '2013-05-03', ' Action, Adventure, Sci-Fi', 'When Tony Stark''s world is torn apart by a formidable terrorist 
called the Mandarin, he starts an odyssey of rebuilding and retribution.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Iron Man 2', '2010-05-07', ' Action, Adventure, Sci-Fi', 'With the world now aware of his identity as Iron Man, Tony Stark 
must contend with both his declining health and a vengeful mad man with ties to his father''s legacy.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('The Incredible Hulk', '2008-06-13', ' Action, Adventure, Sci-Fi', 'Bruce Banner, a scientist on the run from the 
U.S. Government must find a cure for the monster he emerges whenever he loses his temper. However, Banner then must fight a soldier whom 
unleashes himself as a threat stronger than he.', 'USA', 'Movie', 'NULL');

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Hulk', '2003-06-20', ' Action, Adventure, Sci-Fi', 'Bruce Banner, a genetics researcher with a tragic past, suffers 
an accident that causes him to transform into a raging green monster when he gets angry.', 'USA', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Sivaji', '2007-06-15', 'Action, Adventure, Drama', 'Held in a cell, Sivaji reflects how he came to be under police 
scrutiny and his subsequent arrest for a variety of economic offenses. He had returned to Chennai from the U.S. to live with his parents and 
maternal uncle, and had hoped to invest money in colleges and hospitals so that people who are not privileged can benefit - much to the chagrin 
of a sophisticated goon, Adisheshan, who threatens him, and asks him not to tread on his territory. Disregarding this and hoping to get his 
projects going, Sivaji runs into bureaucratic corruption and red-tape - so much so that he gives in and bribes an official Rs.4 Crores to 
complete his Rs.200 Crore project. An enraged Adisheshan has the local politician stop the work, but Sivaji bribes the latter Rs.50 Crores, 
after liquefying most of his assets. While he is busy wooing and attempting to marry Tamizhselvi/Vidyabharti Ramlingam, a new politician takes 
over, stops his project, and demands another Rs.50 Crores. ', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Ra.One', '2011-10-26', 'Action, Sci-Fi ', 'A video game developer''s world spirals out of control when his shape-
shifting indestructible virtual creation becomes all too real.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Kochadaiiyaan (2014)', '2014-05-23', 'Animation, Action, Adventure', 'The Story of a powerful king Kochadaiiyaan, and so 
does his Kingdom. But on a fateful day, one of his close friends plots against him and acquires his kingdom, while he was driven away. 
Kochadaiiyaan gets a baby boy Rana, who grows up to become a great warrior, and fights and redeems the kingdom that rightfully belongs to him.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Raja rani', '2013-09-26', 'Drama ', 'This is a love story based on a story describing that there is life even after a break up and there can be love even after a break up.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('3', '2012-03-30', 'Drama, Thriller ', 'A film based on a love couple moving over different stages in life and then get married. The husband dies due to a disease that the wife doesnt know about but later figures out the truth about his death. It is an emotional thriller.', 'India', 'Movie', NULL);

INSERT INTO [dbo].[Movies] ([Name], [ReleaseDate], [Genre], [Description], [Country], [Category], [Tags]) VALUES 
('Yeto vellipoyindi manasu', '2012-12-13', 'Drama ', 'A story based on a couple who have been friends in their childhood and then get to see each other after a few years and then they fall in love, but after a lot of struggle they finally get married.', 'India', 'Movie', NULL);

DROP TABLE [dbo].[MovieRatings];

CREATE TABLE [dbo].[MovieRatings](
[UserID] [int] NOT NULL,
[MovieID] [int] NOT NULL,
[Rating] [int] NOT NULL DEFAULT 0,
[CreatedOn] DATETIME NOT NULL DEFAULT GETDATE()
);


CREATE TABLE [dbo].[Comments](
[ID] [int] IDENTITY(1,1) NOT NULL,
[UserID] [int] NOT NULL,
[UserName] [varchar](100) NOT NULL,
[MovieID] [int] NOT NULL,
[Comment] [varchar](MAX) NULL,
[CreatedOn] DATETIME NOT NULL DEFAULT GETDATE()
);