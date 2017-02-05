<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddReview.aspx.cs" Inherits="Melp.AddReview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Melp - Reviews</title>
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
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">One more separated link</a></li>
                        </ul>
                    </li>
                </ul>
                

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div>
    <form runat="server" method="post">
        <h2>Put Movie Title Here</h2>

        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Occupation</th>
                    <th>Movie</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <div class="form-group">
                        <td>
                            <input type="text" class="form-control" name="name" placeholder="Name"/></td>
                        <td>
                            <input type="text" class="form-control" name="age" placeholder="Age" /></td>
                        <td>
                            <input type="text" class="form-control" name="gender" placeholder="Gender" /></td>
                        <td>
                            <input type="text" class="form-control" name="occupation" placeholder="Occupation" /></td>
                        <td>
                            <input type="text" class="form-control" name="movie" placeholder="Movie" /></td>
                        <td>
                            <input type="text" class="form-control" name="rating" placeholder="Rating" /></td>
                </tr>
                </div>
            </tbody>
        </table>
        <input type="submit" class="btn btn-default" value="Add" />
    </form>
    </div>
    </form>
    <table class="table">
            <thead>
                <tr>
                    <th>Movie</th>
                    <th>Rating</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Occupation</th>                    
                </tr>
            </thead>
           <tbody>
                <% foreach (var review in Reviews)
                    { %>
                <tr>
                    <td><%= review.Id %></td>
                    <td><%= review.Rating %></td>
                    <td><%= review.Name %></td>
                    <td><%= review.Age %></td>
                    <td><%= review.Gender %></td>
                    <td><%= review.Occupation %></td>
                    
                </tr>
                <%} %>
            </tbody>
            </table>
</body>
</html>
