USE [master]

If db_id('SewingTracker') IS NULL   
    CREATE DATABASE [SewingTracker]
GO

USE [SewingTracker]
GO

DROP TABLE IF EXISTS [Wearer];
DROP TABLE IF EXISTS [Project];
DROP TABLE IF EXISTS [MaterialsList];
DROP TABLE IF EXISTS [MaterialItem];
GO

CREATE TABLE [Wearer] (
    [Id] int PRIMARY KEY NOT NULL IDENTITY(1,1),
    [Name] nvarchar(50),
    [Height] nvarchar(10),
    [Weight] int,
    [Inseam] int,
    [Bust] int, 
    [WristToShoulder] int,
    [Hips] int,
    [Waist] int,
    [ArmsAround] int,
    [LegsAround] int
)
GO

CREATE TABLE [Project] (
    [Id] int PRIMARY KEY NOT NULL IDENTITY(1,1),
    [Name] nvarchar(50)
    [Note] nvarchar(500),
    [DoneBy] datetime,
    [TotalCost] int,
    [WearerId] int,
    [Complete] bit
)
GO

CREATE TABLE [MaterialsList] (
    [Id] int PRIMARY KEY NOT NULL IDENTITY(1,1),
    [ProjectId] int
)
GO

CREATE TABLE [MaterialItem] (
    [Id] int PRIMARY KEY NOT NULL IDENTITY(1,1),
    [ListId] int,
    [Name] nvarchar(50),
    [AmountNeeded] int,
    [Cost] int
)
GO

ALTER TABLE [Project] ADD FOREIGN KEY ([WearerId]) REFERENCES [Wearer] ([Id])
GO
ALTER TABLE [MaterialsList] ADD FOREIGN KEY ([ProjectId]) REFERENCES [Project] ([Id])
GO
ALTER TABLE [MaterialItem] ADD FOREIGN KEY ([ListId]) REFERENCES [MaterialsList] ([Id])
GO