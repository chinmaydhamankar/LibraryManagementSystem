<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style>

body {
    padding-top: 180px;
}
.dropdown.dropdown-lg .dropdown-menu {
    margin-top: -1px;
    padding: 6px 20px;
}
.input-group-btn .btn-group {
    display: flex !important;
}
.btn-group .btn {
    border-radius: 0;
    margin-left: -1px;
}
.btn-group .btn:last-child {
    border-top-right-radius: 4px;
    border-bottom-right-radius: 4px;
}
.btn-group .form-horizontal .btn[type="submit"] {
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.form-horizontal .form-group {
    margin-left: 0;
    margin-right: 0;
}
.form-group .form-control:last-child {
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
}

@media screen and (min-width: 768px) {
    #adv-search {
        width: 500px;
        margin: 0 auto;
    }
    .dropdown.dropdown-lg {
        position: static !important;
    }
    .dropdown.dropdown-lg .dropdown-menu {
        min-width: 500px;
    }
}

li
{
background-image: url(arrow.gif);
background-repeat: no-repeat;
background-position: 100% .4em;
padding-right: .6em;
margin: 1em 0;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page | Librarian</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<style>
#custom-search-input{
    padding: 3px;
    border: solid 1px #E4E4E4;
    border-radius: 6px;
    background-color: #fff;
}

#custom-search-input input{
    border: 0;
    box-shadow: none;
}

#custom-search-input button{
    margin: 2px 0 0 0;
    background: none;
    box-shadow: none;
    border: 0;
    color: #666666;
    padding: 0 8px 0 10px;
    border-left: solid 1px #ccc;
}

#custom-search-input button:hover{
    border: 0;
    box-shadow: none;
    border-left: solid 1px #ccc;
}

#custom-search-input .glyphicon-search{
    font-size: 23px;
}

</style>

<jsp:include page="NavBarUser.jsp"></jsp:include>
</head>
<body>


            <div class="container">
           <!-- <form action="Dropdown.jsp"> -->
           <form action="/book/search" method = "GET">
			  <select style="left:170px;" name="searchType" class="input-group">
			    <option value="author">Author</option>
			    <option value="title">Title</option>
			    <option value="publisher">Publisher</option>
			    <option value="year_of_publication">Year Of Publication</option>
			    <option value="copies_available">Copies Available</option>
			    <option value="number_of_copies">Number Of Copies</option>
			    <option value="current_status">Current Status</option>
			    <option value="keywords">Keywords</option>
			    <option value="created_by">Created By</option>
			    <option value="updated_by">Updated By</option>
			  </select>
  
	<div class="row">
		<div class="col-md-12">
            <div class="input-group" id="adv-search">
                <input type="text" class="form-control" placeholder="Search for Books" name = "searchString"/>
                <div class="input-group-btn">
                    <div class="btn-group" role="group"></div>
                    	<!-- <form action = "/book/search" method = "GET"> -->
                        	<!-- <select style="left:170px;" name="item" class="input-group">
							    <option value="author">Author</option>
							    <option value="title">Title</option>
							    <option value="publisher">Publisher</option>
							    <option value="year_of_publication">Year Of Publication</option>
							    <option value="copies_available">Copies Available</option>
							    <option value="number_of_copies">Number Of Copies</option>
							    <option value="created_by">Created By</option>
							    <option value="updated_by">Updated By</option>
							  </select> -->
                        	<input type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></input>
                    	<!-- </form> -->
                    </div>
                </div>
            </div>
          </div>
        </div>
	</div>
</div>    
    </form>
   <h5 class="container input-group"> ${message} </h6>
</body>
</html>