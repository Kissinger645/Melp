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
                <a class="navbar-brand" href="Default.aspx">MELP</a>
            </div>
            
            <ul class="nav navbar-nav navbar-left">
        <li><a href="ReviewsAll.aspx">Reviews</a></li>
          </ul>  
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="container">
    <form runat="server" method="post">
        <h2>Add Review</h2>

        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Occupation</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
                <tr>                    
                        <td>
                            <input type="text" class="form-control" name="name" placeholder="Name"/></td>
                        <td>
                            <input type="text" class="form-control" name="age" placeholder="Age" /></td>
                        <td>
                            <input type="text" class="form-control" name="gender" placeholder="Gender" /></td>
                        <td>
                            <input type="text" class="form-control" name="occupation" placeholder="Occupation" /></td>
                        
                        <td>
                            <input type="text" class="form-control" name="rating" placeholder="Rating" /></td>
                </tr>
                
            </tbody>
        </table>
        <input type="submit" class="btn btn-default" value="Add" />
    </form>
        </div>
</body>
</html>
