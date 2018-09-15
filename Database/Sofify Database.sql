/*-------------Copyright by------------------
                 S M Taslim Uddin Raju
                 Email:taslimuddinraju7864@gmail.com				 
                 Khulna University of Engineering and Technology,khulna,Bangladesh
	             Department of CSE
	                     ------------------------------------------*/

/*------------------User Information for Registration------------------*/
CREATE TABLE [dbo].[UserInfm] (
    [Id]         INT             IDENTITY (1, 1) NOT NULL,
    [FirstName]  NCHAR (20)      NOT NULL,
    [LastName]   NCHAR (20)      NOT NULL,
    [UserName]   NCHAR (20)      NOT NULL,
    [Email]      NCHAR (40)      NOT NULL,
    [Division]   NCHAR (40)      NOT NULL,
    [MobileNo]   NCHAR (20)      NOT NULL,
    [BirthDay]   NCHAR (40)      NULL,
    [Password]   NCHAR (20)      NOT NULL,
    [User_image] VARBINARY (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


/*-----------------------PROCEDURE to insert UserInfm table Data------------------*/

Create procedure spUserInfm
@FN nchar(20),
@LN nchar(20),
@UN nchar(20),
@EM nchar(40),
@DV nchar(40),
@MN nchar(20),
@PA nchar(20),
@User_image varbinary(max)
as
Begin
    Insert into UserInfm
    values (@FN, @LN, @UN,@EM,@DV,@MN,@PA,@User_image )
End





/*--------------------------for Reset password -------------------*/
CREATE TABLE [dbo].[tblResetPasswordRequests] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [UserId]               INT              NULL,
    [ResetRequestDateTime] DATETIME         NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ForgotPassRequest_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[UserInfm] ([Id])
);



/*---Create a stored procedure to check if the username exists,
       and to insert a row into "tblResetPasswordRequests" table.----*/
	   
Create proc spResetPassword
@UserName nvarchar(20)
as
Begin
 Declare @UserId int
 Declare @Email nvarchar(100)
 
 Select @UserId = Id, @Email = Email 
 from UserInfm
 where UserName = @UserName
 END
 
	
/*----------------End of User Section -----------------------------*/


/*------------------Product Table ---------------------------------*/
    CREATE TABLE [dbo].[Products] (
    [Id]        INT             IDENTITY (1, 1) NOT NULL,
    [Catagory]  NCHAR (40)      NOT NULL,
    [Title]     NCHAR (100)     NOT NULL,
    [Price]     INT             NOT NULL,
    [ImageData] VARBINARY (MAX) NOT NULL,
    [UserName]  NCHAR (20)      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

/* ------create a procedure to insert Data ---------------------------------*/
Create procedure spProductss
@Catagory nchar(40),
@Title nchar(100),
@Price int,
@ImageData varbinary(max),
@UserName nchar(20),
@NewId int output
as
Begin
    Insert into Products
    values (@Catagory, @Title, @Price,@ImageData,@UserName)
    Select @NewId = SCOPE_IDENTITY()
End


/*--------------------Product Describtion Table ----------------*/
CREATE TABLE [dbo].[Product_details] (
    [P_id]         INT             IDENTITY (1, 1) NOT NULL,
    [ImageData2]   VARBINARY (MAX) NOT NULL,
    [ImageData3]   VARBINARY (MAX) NOT NULL,
    [Location]     NCHAR (50)      NOT NULL,
    [Condition]    NCHAR (50)      NOT NULL,
    [Description]  NCHAR (2000)    NOT NULL,
    [Brand]        NCHAR (100)     NOT NULL,
    [Model]        NCHAR (100)     NOT NULL,
    [Authenticity] NCHAR (50)      NOT NULL,
    PRIMARY KEY CLUSTERED ([P_id] ASC),
    FOREIGN KEY ([P_id]) REFERENCES [dbo].[Products] ([Id])
);

/*-----------------Procedure to Insert Product Describtion table Data ----------------*/

Create procedure spProduct_detail
  @ImageData2 varbinary(max),
  @ImageData3 varbinary(max),
  @Location nchar(50),
  @Condition nchar(50),
  @Description nchar(2000),
  @Brand nchar(100),
  @Model nchar(100),
  @Authenticity nchar(50)
as
Begin
    Insert into Product_details
    values (@ImageData2 , @ImageData3 ,@Location,@Condition,@Description,@Brand,@Model,@Authenticity)
   
End

/*----------------------Procedure To get Product Primary Details -------------------*/
Create procedure spProduct_detail
@ImageData2 varbinary(max),
@ImageData3 varbinary(max),
@Location nchar(50),
@Condition nchar(50),
@Description nchar(2000),
@Brand nchar(100),
@Model nchar(100),
@Authenticity nchar(50)
as
Begin
    Insert into Product_details
    values (@ImageData2 , @ImageData3 ,@Location,@Condition,@Description,@Brand,@Model,@Authenticity)
   
End

/*-----------------------PROCEDURE TO GET Product Full Details ----------------*/

Create proc spGetProductDeta
@ID int
as
Begin
 Select P.Id,P.Title, P.Catagory, P.Price,P.ImageData,PD.ImageData2,PD.ImageData3, PD.Location, PD.Condition,
  PD.Description,PD.Brand,PD.Model,PD.Authenticity,U.FirstName,U.LastName,U.Email,U.MobileNo
     from Products P
     join Product_details PD on P.Id = PD.P_id
     join UserInfm U on U.UserName = P.UserName
     where P.Id =  @ID
End


/*-------------------------------End of Product Section -------------------------*/



/*-----------------------------comment  Section(NESTED COMMENT) --------------------------------*/

/*----------Parent comment table ------------------------------------------*/
CREATE TABLE [dbo].[ParentCommentTable] (
    [CommentID]      INT           IDENTITY (1, 1) NOT NULL,
    [UserName]       NCHAR (20)    NOT NULL,
    [CommentMessage] VARCHAR (300) NULL,
    [CommentDate]    DATETIME      NULL,
    [Pa_id]          INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([CommentID] ASC)
);

/*------Procedure to insert Parent comment Data------------*/
create procedure spCommentInserte
@CommentMessage varchar(300),
@UserName nchar(20),
@Pa_id int
As
 Begin
  Insert into ParentCommentTable(UserName ,CommentMessage,CommentDate,Pa_id)
         values(@UserName, @CommentMessage, GETDATE(),@Pa_id)
 End

 /*---------------------Child COmment Table---------------------------------*/
 CREATE TABLE [dbo].[ChildCommentTable] (
    [CommentID]       INT           IDENTITY (1, 1) NOT NULL,
    [UserName]        NCHAR (20)    NOT NULL,
    [CommentMessage]  VARCHAR (300) NULL,
    [CommentDate]     DATETIME      NULL,
    [ParentCommentID] INT           NULL,
    [C_id]            INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([CommentID] ASC),
    FOREIGN KEY ([ParentCommentID]) REFERENCES [dbo].[ParentCommentTable] ([CommentID])
);
/*--------------------------Procedure To insert Child Comment Data------------------------*/
create procedure spCommentReplyInsertss(
@UserName nchar(20),
@CommentMessage varchar(300),
@C_id int,
@ParentCommentID int)
As
 Begin
  Insert into ChildCommentTable(UserName, CommentMessage, CommentDate, ParentCommentID,C_id)
         values(@UserName,@CommentMessage, GETDATE(),@ParentCommentID,@C_id)
 End

 /*-----------------Procedure To GET Parent Comment---------*/ 
 create procedure spGetParentCommentssss(
@Pa_id int =0 )
 As
 Begin
  Select Pa.CommentID,Pa.Pa_id,Pa.CommentMessage,Pa.CommentDate,Pa.UserName,U.FirstName,U.LastName,U.User_image
   from
    ParentCommentTable Pa
	Join Products P on Pa.Pa_id=P.Id 
    join UserInfm U on Pa.UserName=U.UserName
    where Pa.Pa_id=@Pa_id
 End

 /*-------------------------Procedure To Get Child Comment ----------------------*/
 create procedure spGetParentCommentByParentCommentIDs(
@ParentCommentID int)
As
 Begin
  Select C.C_id,C.CommentDate,C.CommentID,C.CommentMessage,C.ParentCommentID,
C.UserName,U.FirstName,U.LastName,U.User_image
   from ChildCommentTable C join UserInfm U on C.UserName=U.UserName
   join Products P on P.Id=C.C_id where C.ParentCommentID=@ParentCommentID
 End
/*------end OF NESTED Comment ------*/

/*-------------------------About Me section Comment --------*/
 /*------------------------About ME table ------------------*/
 CREATE TABLE [dbo].[AboutComment] (
    [id]             INT           IDENTITY (1, 1) NOT NULL,
    [UserName]       NCHAR (20)    NOT NULL,
    [CommentMessage] VARCHAR (400) NULL,
    [CommentDate]    DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);
/*------Create Procedure TO insert Data --------------*/

create procedure spAboutComment
@CommentMessage varchar(400),
@UserName nchar(20)
As
 Begin
  Insert into AboutComment(UserName ,CommentMessage,CommentDate)
         values(@UserName, @CommentMessage, GETDATE())
 End

 /*---------------------Procedure To Get Data from About table----------------------*/
 create procedure spGetAboutCommentssss
As
 Begin
  Select A.CommentMessage,A.CommentDate,A.UserName,U.FirstName,U.LastName,U.User_image
   from
    AboutComment A join UserInfm U on A.UserName=U.UserName
    where A.UserName=U.UserName
 End
/*----------------------------end of Comment Section-------------------------------*/


