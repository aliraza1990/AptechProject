USE [aptechDB]
GO
/****** Object:  Table [dbo].[studentadmission]    Script Date: 10/9/2019 12:59:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studentadmission](
	[id] [int] NOT NULL,
	[stu_image] [nvarchar](max) NULL,
	[stu_fathername] [nvarchar](30) NOT NULL,
	[stu_fathereducation] [nvarchar](100) NULL,
	[stu_fatheroccupation] [nvarchar](100) NULL,
	[stu_mothername] [nvarchar](30) NOT NULL,
	[stu_mothereducation] [nvarchar](100) NULL,
	[stu_motheroccupation] [nvarchar](100) NULL,
	[stu_cource] [int] NULL,
	[stu_batch] [bigint] NULL,
	[stu_name] [varchar](30) NOT NULL,
	[stu_address] [nvarchar](50) NOT NULL,
	[stu_tel] [nvarchar](20) NOT NULL,
	[stu_email] [nvarchar](20) NOT NULL,
	[stu_cnic] [nvarchar](50) NULL,
	[stu_expiry] [date] NULL,
	[stu_birth] [date] NOT NULL,
	[stu_placeofbirth] [nvarchar](50) NOT NULL,
	[stu_education] [nvarchar](100) NOT NULL,
	[stu_periodfromto] [int] NULL,
	[stu_schoolname] [nvarchar](50) NULL,
	[stu_board] [nvarchar](50) NULL,
	[stu_yearofpassing] [date] NULL,
	[stu_percentage] [bigint] NULL,
	[stu_question] [nvarchar](200) NULL,
	[stu_questiontwo] [nvarchar](200) NULL,
	[stu_game] [nvarchar](50) NULL,
	[stu_hobby] [nvarchar](50) NULL,
	[other] [nvarchar](200) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[studentadmission]  WITH CHECK ADD FOREIGN KEY([stu_batch])
REFERENCES [dbo].[batch] ([b_id])
GO
ALTER TABLE [dbo].[studentadmission]  WITH CHECK ADD FOREIGN KEY([stu_cource])
REFERENCES [dbo].[coursesOffered] ([co_id])
GO
