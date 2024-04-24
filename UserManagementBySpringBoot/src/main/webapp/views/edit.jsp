<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<center>
<h1>Edit The Details</h1>
<form:form method="GET" action="edit">
<table>
        <tr>
            <td></td>
            <td><form:input path="id"/> </td>
        </tr>
        <tr>
            <td>Name</td>
            <td><form:input path="name"/> </td>
        </tr>
        <tr>
            <td>Password</td>
            <td><form:input path="password"/> </td>
        </tr>
        <tr>
            <td>Email</td>
            <td><form:input path="email"/> </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><form:input path="gender"/></td>
        </tr>
        <tr>
            <td>Country</td>
            <td><form:input path="country"/> </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="EditSave"> </td>
        </tr>
     </table>
</form:form>
<br></br><br></br>
<button><a href="/viewusers">View Users</a></button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button><a href="/">Home</a></button>
</center>