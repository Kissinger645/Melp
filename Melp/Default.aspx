<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Melp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Melp</title>
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
        

        <h3>Add New Movie</h3>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Genre</th>
                    <th>IMDB url</th>
                    <th>Release Date</th>
                    <th></th>

                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <input type="text" class="form-control" name="title" placeholder="Title" /></td>
                    <td>
                        <input type="text" class="form-control" name="genre" placeholder="Genre" /></td>
                    <td>
                        <input type="text" class="form-control" name="imdburl" placeholder="IMDB url" /></td>
                    <td>
                        <input type="text" class="form-control" name="release" placeholder="Release date" />
                        </td>
                    <td>
                        <input type="submit" class="btn btn-default" value="Add" />
                    </td>
                </tr>

            </tbody>
        </table>
        
    </form>
        </div>

    <div class =" container">
        <p/>
    </div>
    
    <div class ="container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Movie</th>
            </tr>
        </thead>
        <tbody>
            <% foreach (var movie in Movies)
                { %>
            <tr>
                <td><%= movie.Title %></td>
                <td><a href="AddReview.aspx?id=<%= movie.Id %>">Add Review</a></td>
                <td><a href="EditMovie.aspx?id=<%= movie.Id %>">Edit Movie</a></td>
            </tr>
            <%} %>
        </tbody>
    </table>
        </div>
</body>
</html>
