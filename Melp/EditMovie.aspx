<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditMovie.aspx.cs" Inherits="Melp.AddMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Melp - Add Movie</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">                
                <a class="navbar-brand" href="Default.aspx">MELP</a>
            </div>
            
            <ul class="nav navbar-nav navbar-left">
        <li><a href="ReviewsAll.aspx">Reviews</a></li>
          </ul>  
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="container">
        <form id="form1" runat="server">

            <h2>Edit Movie</h2>
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Genre</th>
                        <th>IMDB url</th>
                        <th>Release Date</th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <input type="text" class="form-control" name="title" value="<%=movieInstance.Title %>" /></td>
                        <td>
                            <input type="text" class="form-control" name="genre" value="<%=movieInstance.Genre %>" />

                        </td>
                        <td>
                            <input type="text" class="form-control" name="imdburl" value="<%=movieInstance.IMDBlink %>" />
                        </td>
                        <td>
                            <input type="text" class="form-control" name="release" value="<%=movieInstance.Release %>" />
                            </td>
                    </tr>

                </tbody>
            </table>
            <input type="submit" class="btn btn-default" value="Update" />
        </form>
    </div>
</body>
</html>
