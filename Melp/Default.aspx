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
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">MELP</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">Link</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search"/>
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <form id="form1" runat="server">

        <h3>Add A Movie</h3>
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
                        <input type="text" class="form-control" name="title" placeholder="Title" /></td>
                    <td>
                        <input type="text" class="form-control" name="genre" placeholder="Genre" /></td>
                    <td>
                        <input type="text" class="form-control" name="imdburl" placeholder="IMDB url" /></td>
                    <td>
                        <input type="text" class="form-control" name="release" placeholder="Release date" /></td>
                </tr>

            </tbody>
        </table>
        <input type="submit" class="btn btn-default" value="Add" />
    </form>
    <b />
    <b />
    <table class="table">
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
                <td><a href="AddReview.aspx"?id="<%=movie.Id%>"/>Review</td>
                <td><a href="EditMovie.aspx"?id="<%=movie.Id%>"/>Edit</td>
            </tr>
            <%} %>
        </tbody>
    </table>
</body>
</html>
