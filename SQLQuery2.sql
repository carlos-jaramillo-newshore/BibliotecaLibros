USE [master]
GO
/****** Object:  Database [BibliotecaLibros]    Script Date: 12/02/2020 08:31:18 a. m. ******/
CREATE DATABASE [BibliotecaLibros]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BibliotecaLibros', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\BibliotecaLibros.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BibliotecaLibros_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\BibliotecaLibros_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BibliotecaLibros] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BibliotecaLibros].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BibliotecaLibros] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET ARITHABORT OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BibliotecaLibros] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BibliotecaLibros] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BibliotecaLibros] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BibliotecaLibros] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BibliotecaLibros] SET  MULTI_USER 
GO
ALTER DATABASE [BibliotecaLibros] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BibliotecaLibros] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BibliotecaLibros] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BibliotecaLibros] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BibliotecaLibros] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BibliotecaLibros] SET QUERY_STORE = OFF
GO
USE [BibliotecaLibros]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [BibliotecaLibros]
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 12/02/2020 08:31:18 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libro](
	[IdLibro] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](50) NOT NULL,
	[Autor] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[Imagen] [nvarchar](max) NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_Libro] PRIMARY KEY CLUSTERED 
(
	[IdLibro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Libro] ON 
GO
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Autor], [Descripcion], [Imagen], [Stock]) VALUES (1, N'El Principito', N'Antoine de Saint-Exupéry', N'La novela fue publicada en abril de 1943, tanto en inglés como en francés, por la editorial estadounidense Reynal & Hitchcock, mientras que la editorial francesa Éditions Gallimard no pudo imprimir la obra hasta 1946, tras la liberación de Francia. Incluido entre los mejores libros del siglo XX en Francia, El principito se ha convertido en el libro escrito en francés más leído y más traducido.', N'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Hakone_149_mus%C3%A9_du_petit_prince.JPG/450px-Hakone_149_mus%C3%A9_du_petit_prince.JPG', 10)
GO
INSERT [dbo].[Libro] ([IdLibro], [Titulo], [Autor], [Descripcion], [Imagen], [Stock]) VALUES (2, N'La Cabaña', N'Paul Young', N'Una excursión familiar se transforma en tragedia cuando Missy, la hija pequeña de Mack, desaparece. Ante la evidencia de la violación y del asesinato de la niña, Mack y su familia arrastran un dolor que no pueden superar. Su padre considera una injusticia que Dios haya permitido tanto sufrimiento y lo enjuicia. Transcurridos cuatro años, Mack recibe una extraña carta, al parecer procedente de Dios, donde lo invita a reunirse con él en La Cabaña (lugar donde se encontraron los últimos rastros de Missy), lo cual lo lleva sufrir una serie de cambios que lo volverán diferente con respecto a su percepción de Dios.', N'https://static3planetadelibroscom.cdnstatics.com/usuaris/libros/fotos/3/m_libros/2827_1_books_01831_lacabana.jpg', 5)
GO
SET IDENTITY_INSERT [dbo].[Libro] OFF
GO
/****** Object:  StoredProcedure [dbo].[AgregarLibro]    Script Date: 12/02/2020 08:31:19 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarLibro]
	-- Add the parameters for the stored procedure here
	@Titulo nvarchar(50),
	@Autor nvarchar(50),
	@Descripcion nvarchar(MAX),
	@Imagen nvarchar(MAX),
	@Stock int
AS
INSERT INTO Libro values(@Titulo, @Autor, @Descripcion, @Imagen, @Stock)
GO
/****** Object:  StoredProcedure [dbo].[ConsultarLibros]    Script Date: 12/02/2020 08:31:19 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ConsultarLibros]
AS
SELECT * FROM Libro
GO
USE [master]
GO
ALTER DATABASE [BibliotecaLibros] SET  READ_WRITE 
GO
