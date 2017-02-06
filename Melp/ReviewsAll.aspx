<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReviewsAll.aspx.cs" Inherits="Melp.ReviewsAll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <title>MELP - Reviews</title>
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
    <table class="table">
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
                <% foreach (var review in Reviews)
                    { %>
                <tr>
                    <td><%= review.Name %></td>
                    <td><%= review.Age %></td>
                    <td><%= review.Gender %></td>
                    <td><%= review.Occupation %></td>  
                    <td><%= review.Title %></td>
                    <td><%= review.Rating %></td>
                                      
                </tr>
                <%} %>
            </tbody>
            </table>
        </div>
</body>
</html>
