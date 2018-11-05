CREATE TABLE [dbo].[Student] (
    [Name]         NVARCHAR (50) NOT NULL,
    [Gyear]        INT           NOT NULL,
    [Institute]    NVARCHAR (50) NOT NULL,
    [Branch]       NVARCHAR (50) NOT NULL,
    [Email]        VARCHAR (50)  NOT NULL,
    [Password]     VARCHAR (50)  NOT NULL,
    [Organisation] NVARCHAR (50) NOT NULL,
    [Designation]  NVARCHAR (50) NOT NULL,
    [Mobile]       INT NOT NULL,
    CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED ([Email] ASC)
);

