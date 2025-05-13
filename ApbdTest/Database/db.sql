/****** Object:  Table [dbo].[Project]    Script Date: 4/24/2020 9:40:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
    [IdProject] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](100) NOT NULL,
    [Deadline] [date] NOT NULL,
    CONSTRAINT [Project_pk] PRIMARY KEY CLUSTERED
(
[IdProject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Task]    Script Date: 4/24/2020 9:40:28 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Task](
    [IdTask] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](100) NOT NULL,
    [Description] [nvarchar](100) NOT NULL,
    [Deadline] [date] NOT NULL,
    [IdProject] [int] NOT NULL,
    [IdTaskType] [int] NOT NULL,
    [IdAssignedTo] [int] NOT NULL,
    [IdCreator] [int] NOT NULL,
    CONSTRAINT [Task_pk] PRIMARY KEY CLUSTERED
(
[IdTask] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[TaskType]    Script Date: 4/24/2020 9:40:28 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[TaskType](
    [IdTaskType] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](100) NOT NULL,
    CONSTRAINT [TaskType_pk] PRIMARY KEY CLUSTERED
(
[IdTaskType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[TeamMember]    Script Date: 4/24/2020 9:40:28 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[TeamMember](
    [IdTeamMember] [int] IDENTITY(1,1) NOT NULL,
    [FirstName] [nvarchar](100) NOT NULL,
    [LastName] [nvarchar](100) NOT NULL,
    [Email] [nvarchar](100) NOT NULL,
    CONSTRAINT [TeamMember_pk] PRIMARY KEY CLUSTERED
(
[IdTeamMember] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    SET IDENTITY_INSERT [dbo].[Project] ON

    INSERT [dbo].[Project] ([IdProject], [Name], [Deadline]) VALUES (1, N'Aplikacja webowa Gakko', CAST(N'2021-02-03' AS Date))
    INSERT [dbo].[Project] ([IdProject], [Name], [Deadline]) VALUES (2, N'Aplikacja mobilna KES', CAST(N'2018-02-04' AS Date))
    INSERT [dbo].[Project] ([IdProject], [Name], [Deadline]) VALUES (3, N'Aplikacja webowa ZeroGame', CAST(N'2020-04-05' AS Date))
    SET IDENTITY_INSERT [dbo].[Project] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Task] ON

    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (1, N'Przygotowanie repozytorium', N'Umieszczenie pliku .gitignore', CAST(N'2020-06-12' AS Date), 1, 1, 1, 2)
    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (2, N'Przygotowanie pierwszej strony', N'Pierwsza strona powinna zawierać okno wyszukiwania', CAST(N'2020-06-14' AS Date), 2, 2, 1, 3)
    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (3, N'Implement facebook logging', N'Use FB API', CAST(N'2020-05-02' AS Date), 1, 1, 2, 1)
    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (4, N'Implement details page', N'Details in doc', CAST(N'2020-05-04' AS Date), 1, 2, 1, 1)
    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (5, N'Implement contact apge', N'Details in the doc', CAST(N'2020-07-02' AS Date), 2, 2, 1, 2)
    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (8, N'User validation mechanic', N'Details in the doc', CAST(N'2020-05-04' AS Date), 3, 1, 2, 1)
    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (10, N'Add update user endpoint', N'Create API endpoint', CAST(N'2020-05-10' AS Date), 3, 2, 1, 1)
    SET IDENTITY_INSERT [dbo].[Task] OFF
    GO
    SET IDENTITY_INSERT [dbo].[TaskType] ON

    INSERT [dbo].[TaskType] ([IdTaskType], [Name]) VALUES (1, N'Backend')
    INSERT [dbo].[TaskType] ([IdTaskType], [Name]) VALUES (2, N'Frontend')
    SET IDENTITY_INSERT [dbo].[TaskType] OFF
    GO
    SET IDENTITY_INSERT [dbo].[TeamMember] ON

    INSERT [dbo].[TeamMember] ([IdTeamMember], [FirstName], [LastName], [Email]) VALUES (1, N'Jan', N'Kowalsko', N'kowalski@wp.pl')
    INSERT [dbo].[TeamMember] ([IdTeamMember], [FirstName], [LastName], [Email]) VALUES (2, N'Andrzej', N'Malewski', N'malewski@gmail.com')
    INSERT [dbo].[TeamMember] ([IdTeamMember], [FirstName], [LastName], [Email]) VALUES (3, N'Krzysztof', N'Kowalewski', N'kowalewski@wp.pl')
    INSERT [dbo].[TeamMember] ([IdTeamMember], [FirstName], [LastName], [Email]) VALUES (4, N'Anna', N'Korzeniewska', N'korzeniewska@wp.pl')
    SET IDENTITY_INSERT [dbo].[TeamMember] OFF
    GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [Task_Project] FOREIGN KEY([IdProject])
    REFERENCES [dbo].[Project] ([IdProject])
    GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [Task_Project]
    GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [Task_TaskType] FOREIGN KEY([IdTaskType])
    REFERENCES [dbo].[TaskType] ([IdTaskType])
    GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [Task_TaskType]
    GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [Task_TeamMember1] FOREIGN KEY([IdCreator])
    REFERENCES [dbo].[TeamMember] ([IdTeamMember])
    GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [Task_TeamMember1]
    GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [Task_TeamMember2] FOREIGN KEY([IdAssignedTo])
    REFERENCES [dbo].[TeamMember] ([IdTeamMember])
    GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [Task_TeamMember2]
    GO
/****** Object:  Table [dbo].[Project]    Script Date: 4/24/2020 9:40:28 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Project](
    [IdProject] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](100) NOT NULL,
    [Deadline] [date] NOT NULL,
    CONSTRAINT [Project_pk] PRIMARY KEY CLUSTERED
(
[IdProject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[Task]    Script Date: 4/24/2020 9:40:28 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[Task](
    [IdTask] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](100) NOT NULL,
    [Description] [nvarchar](100) NOT NULL,
    [Deadline] [date] NOT NULL,
    [IdProject] [int] NOT NULL,
    [IdTaskType] [int] NOT NULL,
    [IdAssignedTo] [int] NOT NULL,
    [IdCreator] [int] NOT NULL,
    CONSTRAINT [Task_pk] PRIMARY KEY CLUSTERED
(
[IdTask] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[TaskType]    Script Date: 4/24/2020 9:40:28 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[TaskType](
    [IdTaskType] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](100) NOT NULL,
    CONSTRAINT [TaskType_pk] PRIMARY KEY CLUSTERED
(
[IdTaskType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
/****** Object:  Table [dbo].[TeamMember]    Script Date: 4/24/2020 9:40:28 AM ******/
    SET ANSI_NULLS ON
    GO
    SET QUOTED_IDENTIFIER ON
    GO
CREATE TABLE [dbo].[TeamMember](
    [IdTeamMember] [int] IDENTITY(1,1) NOT NULL,
    [FirstName] [nvarchar](100) NOT NULL,
    [LastName] [nvarchar](100) NOT NULL,
    [Email] [nvarchar](100) NOT NULL,
    CONSTRAINT [TeamMember_pk] PRIMARY KEY CLUSTERED
(
[IdTeamMember] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    GO
    SET IDENTITY_INSERT [dbo].[Project] ON

    INSERT [dbo].[Project] ([IdProject], [Name], [Deadline]) VALUES (1, N'Aplikacja webowa Gakko', CAST(N'2021-02-03' AS Date))
    INSERT [dbo].[Project] ([IdProject], [Name], [Deadline]) VALUES (2, N'Aplikacja mobilna KES', CAST(N'2018-02-04' AS Date))
    INSERT [dbo].[Project] ([IdProject], [Name], [Deadline]) VALUES (3, N'Aplikacja webowa ZeroGame', CAST(N'2020-04-05' AS Date))
    SET IDENTITY_INSERT [dbo].[Project] OFF
    GO
    SET IDENTITY_INSERT [dbo].[Task] ON

    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (1, N'Przygotowanie repozytorium', N'Umieszczenie pliku .gitignore', CAST(N'2020-06-12' AS Date), 1, 1, 1, 2)
    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (2, N'Przygotowanie pierwszej strony', N'Pierwsza strona powinna zawierać okno wyszukiwania', CAST(N'2020-06-14' AS Date), 2, 2, 1, 3)
    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (3, N'Implement facebook logging', N'Use FB API', CAST(N'2020-05-02' AS Date), 1, 1, 2, 1)
    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (4, N'Implement details page', N'Details in doc', CAST(N'2020-05-04' AS Date), 1, 2, 1, 1)
    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (5, N'Implement contact apge', N'Details in the doc', CAST(N'2020-07-02' AS Date), 2, 2, 1, 2)
    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (8, N'User validation mechanic', N'Details in the doc', CAST(N'2020-05-04' AS Date), 3, 1, 2, 1)
    INSERT [dbo].[Task] ([IdTask], [Name], [Description], [Deadline], [IdProject], [IdTaskType], [IdAssignedTo], [IdCreator]) VALUES (10, N'Add update user endpoint', N'Create API endpoint', CAST(N'2020-05-10' AS Date), 3, 2, 1, 1)
    SET IDENTITY_INSERT [dbo].[Task] OFF
    GO
    SET IDENTITY_INSERT [dbo].[TaskType] ON

    INSERT [dbo].[TaskType] ([IdTaskType], [Name]) VALUES (1, N'Backend')
    INSERT [dbo].[TaskType] ([IdTaskType], [Name]) VALUES (2, N'Frontend')
    SET IDENTITY_INSERT [dbo].[TaskType] OFF
    GO
    SET IDENTITY_INSERT [dbo].[TeamMember] ON

    INSERT [dbo].[TeamMember] ([IdTeamMember], [FirstName], [LastName], [Email]) VALUES (1, N'Jan', N'Kowalsko', N'kowalski@wp.pl')
    INSERT [dbo].[TeamMember] ([IdTeamMember], [FirstName], [LastName], [Email]) VALUES (2, N'Andrzej', N'Malewski', N'malewski@gmail.com')
    INSERT [dbo].[TeamMember] ([IdTeamMember], [FirstName], [LastName], [Email]) VALUES (3, N'Krzysztof', N'Kowalewski', N'kowalewski@wp.pl')
    INSERT [dbo].[TeamMember] ([IdTeamMember], [FirstName], [LastName], [Email]) VALUES (4, N'Anna', N'Korzeniewska', N'korzeniewska@wp.pl')
    SET IDENTITY_INSERT [dbo].[TeamMember] OFF
    GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [Task_Project] FOREIGN KEY([IdProject])
    REFERENCES [dbo].[Project] ([IdProject])
    GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [Task_Project]
    GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [Task_TaskType] FOREIGN KEY([IdTaskType])
    REFERENCES [dbo].[TaskType] ([IdTaskType])
    GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [Task_TaskType]
    GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [Task_TeamMember1] FOREIGN KEY([IdCreator])
    REFERENCES [dbo].[TeamMember] ([IdTeamMember])
    GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [Task_TeamMember1]
    GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [Task_TeamMember2] FOREIGN KEY([IdAssignedTo])
    REFERENCES [dbo].[TeamMember] ([IdTeamMember])
    GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [Task_TeamMember2]
    GO
