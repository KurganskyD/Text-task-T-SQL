CREATE TABLE [dbo].[DRINKS] (
	[name] [varchar] (50) NOT NULL ,
	[number] [smallint] NOT NULL ,
	[price] [smallint] NOT NULL ,
	INDEX [IX_DRINK_name] (name)
)
GO
CREATE TABLE [dbo].[LIST_OF_COINS] (
	[denomination] [smallint] NOT NULL ,
	CONSTRAINT PK_LIST_OF_COINS_denomination PRIMARY KEY(denomination)
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[MASHINE_COINS](
	[denomination] [smallint] NOT NULL ,
	[number] [smallint] NOT NULL ,
	FOREIGN KEY (denomination) REFERENCES LIST_OF_COINS(denomination)
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[COUSTOMER_COINS] (
	[denomination] [smallint] NOT NULL ,
	[number] [smallint] NOT NULL ,
	FOREIGN KEY (denomination) REFERENCES LIST_OF_COINS(denomination)
) ON [PRIMARY]
GO
-------------------------------------------------------------------------------------
ALTER TABLE [dbo].[LIST_OF_COINS]
ADD CONSTRAINT PK_LIST_OF_COINS_denomination PRIMARY KEY(denomination)
GO

ALTER TABLE [dbo].[MASHINE_COINS]
ADD FOREIGN KEY (denomination) REFERENCES LIST_OF_COINS(denomination)
GO

ALTER TABLE [dbo].[COUSTOMER_COINS]
ADD FOREIGN KEY (denomination) REFERENCES LIST_OF_COINS(denomination)
GO
---------------------------------------------------------------------------------------
insert into LIST_OF_COINS values('1')
insert into LIST_OF_COINS values('2')
insert into LIST_OF_COINS values('5')
insert into LIST_OF_COINS values('10')

insert into MASHINE_COINS values('1', '10')
insert into MASHINE_COINS values('2', '10')
insert into MASHINE_COINS values('5', '10')
insert into MASHINE_COINS values('10', '10')

insert into Product values('Чай','0','25')
insert into Product values('Капучино','0','39')
insert into Product values('Какао','0','23')
insert into Product values('Шоколад','0','31')