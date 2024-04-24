<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<center>
<h1>***All Users List***</h1>

<table border="1"
	   allign="center"
	   cellpadding="10"	>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Password</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Country</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <tr>
        <c:forEach var="user" items="${user}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.password}</td>
            <td>${user.gender}</td>
            <td>${user.email}</td>
            <td>${user.country}</td>
            <td><button><a href="/delete/${user.id}">Delete</a></button></td>
            <td><button><a href="/edit/${user.id}">Edit</a></button></td>
        </tr>
        </c:forEach>
        </tr>
     </table>
     <br></br>
     
     <button><a href="/">Home</a></button>        
</center>