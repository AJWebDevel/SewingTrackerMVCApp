USE [SewingTracker]
GO

set identity_insert [Wearer] on
insert into [Wearer] ([Id], [Name], [Height], [Weight], [Inseam], [Bust], [WristToShoulder], [Hips], [Waist], [ArmsAround], [LegsAround]) 
VALUES (1, 'Abi', '5.4', 180, 32, 36, 24, 48, 34, 8, 8 );
set identity_insert [Wearer] off

set identity_insert [Project] on
insert into [Project] ([Id], [Name], [Note], [DoneBy], [TotalCost], [WearerId], [Complete] ) 
VALUES (1, 'Fiona and Gumball', 'How long to make tails?', '08/12/23', 1, 0 );
set identity_insert [Project] off

set identity_insert [MaterialsList] on
insert into [MaterialsList] ([Id], [ProjectId]) 
VALUES (1, 1 );
set identity_insert [MaterialsList] off

set identity_insert [MaterialItem] on
insert into [MaterialItem] ([Id], [ListId], [Name], [AmountNeeded], [Cost]) 
VALUES (1, 1, "Gold Fabric", 2, 12.50);
set identity_insert [MaterialItem] off