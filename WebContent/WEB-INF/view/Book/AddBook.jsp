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
div.centerpage {
    width: 1000px;
    height: 90px;
    

    position: absolute;
    top:0;
    bottom: 0;
    left: 0;
    right: 0;

    margin: auto;
}
div.absolute {
    position: absolute;
    top: 10px;
    width: 200px;
    height: 1000px;
    
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


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="style.css">
 <link rel="stylesheet" href="styles.css">
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>




<title>Book | Add</title>
</head>
<body>
<%@ include file="NavBarLib.jsp" %>
<div class="modal-body row vertical-divider" style="margin-top: -100px">
<div class="col-md-6 ">
	
	<form name="loginform" id="loginform" action="/lab2/book/addBook" method="post" class="wpl-track-me">
	<!-- <form name="loginform" id="loginform" action="/book/addBook" method="post" class="wpl-track-me"> --> 
		<h2 style="top:50px;">Add Book</h2>
		<!-- Author -->
		<p class="login-username">
		<label for="user_login">Author</label> 
		<br>
		<c:choose>
				<c:when test="${book != null}">
					<input type="text" name="author" id="author" class="input" placeholder="Book Author" value="${book.author}" size="20" />
				</c:when>
				<c:when test="${book == null }">
					<input type="text" name="author" id="author" class="input" placeholder="Book Author" value="" size="20" required/>
				</c:when>
			</c:choose>
					</p> 
			
		<!-- Title -->
		<p class="login-username">
		<label for="user_login">Title</label> 
		<br>
		<c:choose>
				<c:when test="${book != null}">
					<input type="text" name="title" id="title" class="input" placeholder="Book Title" value="${book.title}" size="20" />
				</c:when>
				<c:when test="${book == null }">
					<input type="text" name="title" id="title" class="input" placeholder="Book Title" value="" size="20" />
				</c:when>
			</c:choose>
		<br>
			
					
			<!-- <input type="text" name="title" id="title" class="input" placeholder="Book Title" value="" size="20" required />
 -->
 		</p> 
		
		<!-- Call Number -->
		<p class="login-username">
		<label for="user_login">Call-Number</label> 
		<br>
			<%-- <c:choose>
				<c:when test="${errorMessage != null}">
					<input type="text" name="call_number" id="call_number" class="input" placeholder="Call Number" value="${book.call_number}" size="20" />
				</c:when>
				<c:when test="${errorMessage == null }">
					<input type="text" name="call_number" id="call_number" class="input" placeholder="Call Number" value="" size="20" />
				</c:when>
			</c:choose> --%> 
			
			<input type="text" name="call_number" id="call_number" class="input" placeholder="Call Number" value="" size="20" required />
		</p> 
		
		<!-- Publisher -->
		<p class="login-username">
		
		<label for="user_login">Publisher</label> 
		<br>
			<c:choose>
				<c:when test="${book != null}">
					<input type="text" name="publisher" id="publisher" class="input" placeholder="Publisher Name" value="${book.publisher}" size="20" />
				</c:when>
				<c:when test="${book == null }">
					<input type="text" name="publisher" id="publisher" class="input" placeholder="Publisher Name" value="" size="20" /> 
				</c:when>
			</c:choose>
			
			<!-- <input type="text" name="publisher" id="publisher" class="input" placeholder="Publisher Name" value="" size="20" required />
 -->
 		</p> 
		
		<!-- Year Of Publication -->
		<p class="login-username">
		<label for="user_login">Year Of Publication</label> 
		<br>
		<c:choose>
				<c:when test="${book != null}">
					<input type="text" name="year_of_publication" id="year_of_publication" class="input" placeholder="Publication Year" value="${book.year_of_publication}" size="20" />
				</c:when>
				<c:when test="${book == null }">
					<input type="text" name="year_of_publication" id="year_of_publication" class="input" placeholder="Publication Year" value="" size="20" /> 
				</c:when>
			</c:choose>
					
		<!-- Location -->
		<p class="login-username">
		<label for="user_login">Location</label> 
		<br>
			<%-- <c:choose>
				<c:when test="${errorMessage != null}">
					<input type="text" name="location_in_library" id="location_in_library" class="input" placeholder="Location in Library" value="${book.location_in_library}" size="20" />
				</c:when>
				<c:when test="${errorMessage == null }">
					<input type="text" name="location_in_library" id="location_in_library" class="input" placeholder="Location in Library" value="" size="20" /> 
				</c:when>
			</c:choose> --%>
			
			<input type="text" name="location_in_library" id="location_in_library" class="input" placeholder="Location in Library" value="" size="20" required />
		</p>
		
		<!-- Number of Copies --> 
		<p class="login-username">
		<label for="user_login">Copies</label>
		<br> 
			<%-- <c:choose>
				<c:when test="${errorMessage != null}">
					<input type="text" name="number_of_copies" id="number_of_copies" class="input" placeholder="Number of Copies" value="${book.number_of_copies}" size="20" /> 
				</c:when>
				<c:when test="${errorMessage == null }">
					<input type="text" name="number_of_copies" id="number_of_copies" class="input" placeholder="Number of Copies" value="" size="20" />  
				</c:when>
			</c:choose> --%>
			
			<input type="number" name="number_of_copies" min="0" step="1" id="number_of_copies" class="input" placeholder="Number of Copies" value="" size="20" required/>
		</p> 
		
		<!-- Copies Available --> 
		<p class="login-username">
		<label for="user_login">Copies Available</label> 
		<br>
			<input type="number" name="copies_available" min="0" step="1" id="copies_available" class="input" placeholder="Copies Available" value="" size="20" required/>
		</p>
		
		<!-- Current Status --> 
		<p class="login-username">
		<label for="user_login">Current Status</label>
		<br> 
			<%-- <c:choose>
				<c:when test="${errorMessage != null}">
					<input type="text" name="current_status" id="current_status" class="input" placeholder="Book Status" value="${book.current_status}" size="20" />
				</c:when>
				<c:when test="${errorMessage == null }">
					<input type="text" name="current_status" id="current_status" class="input" placeholder="Book Status" value="" size="20" />
				</c:when>
			</c:choose> --%>
		
		<select name="current_status" id="current_status" class="input">
		  <option value="0" selected="selected">0</option>
		  <option value="1">1</option>
		</select>	
			<!-- <input type="text" name="current_status" id="current_status" class="input" placeholder="Book Status" value="" size="20" /> -->
		</p> 
		
		<!-- Keywords --> 
		<p class="login-username">
		<label for="user_login">Keywords</label>
		<br> 
			<c:choose>
				<c:when test="${book != null}">
					<input type="text" name="keywords" id="keywords" class="input" placeholder="Book Status" value="${book.keywords}" size="20" />
				</c:when>
				<c:when test="${book == null }">
					<input type="text" name="keywords" id="keywords" class="input" placeholder="Book Keywords" value="" size="20" />
				</c:when>
			</c:choose>
			
			<!-- <input type="text" name="keywords" id="keywords" class="input" placeholder="Book Keywords" value="" size="20" required/>
 -->
 		</p>
		
		<!-- Submit Button -->
		<p class="login-submit">
			<input type="submit" name="wp-submit" id="wp-submit" class="btn btn-success" value="Add Book" />
		</p> 	
	</form> 
	</div>
	<div class="col-md-6">
	<!-- <form name="isbnsearch" id="searchform" action="/lab2/book/addBookByISBN" method="get" class="wpl-track-me"> -->
	<form name="isbnsearch" id="searchform" action= "/lab2/book/addBookByISBN" method="get" class="wpl-track-me">
		<!-- ISBN Number -->
		<h3>Add Book by ISBN</h3>
		<p class="login-username">
		 <label for="isbn">ISBN</label> 
			<input type="text" name="isbn" id="isbn" class="input" placeholder="ISBN" value="" size="20" required/>
		</p>
		<!-- Message -->
		<c:if test="${errorMessage!=null}"><h4>${errorMessage}</h4></c:if>
		
		<!-- Submit Button -->
		<p class="login-submit">
			<input type="submit" name="wp-submit" id="wp-submit" class="btn btn-success" value="Search By ISBN"/>
		</p>
	</form>

	</div>
	</div>
	


</body>
</html>