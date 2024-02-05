<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Manager Details</title>

<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>

<%@page import="com.demo.Dao2.mDao, java.util.* ,com.demo1.Manager " %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
  
    <h1>Manager Details</h1>
    
    <a href="admin_home.jsp" class="btn btn-primary">Home</a>
    
      <%
                       List<Manager> l1=mDao.getAllRecords();
      
                   request.setAttribute("list", l1);
       
      %>
      

 <div class="container">
          <table class="table table-dark  table-hover">
          
                       <tr>
                             <th>ID</th>
                             <th>Name</th>
                             <th>Email</th>
                             <th>Phone Number</th>
                             <th>Mobile</th>
                             <th>Street</th>
                             <th>UserName</th>
                             <th>PassWord</th>
                       </tr>
                       
                        <c:forEach items="${list}" var="e">
                        
                               <tr>
                                   <td>${e.getId()}</td>
                                     <td>${e.getName()}</td>
                                       <td>${e.getemail()}</td>
                                       
                                         <td>${e.getpno()}</td>
                                           <td>${e.getmno()}</td>
                                             <td>${e.getstreet()}</td>
                                                                                          <td>${e.city()}</td>
                                                                                          <td>${e.username()}</td>
                                                                                          <td>${e.password()}</td>
                                             
                                               <td>
                                                     
                        
                        </tr>
                        
                        </c:forEach>
                       

			</table>
         
         </div>
</body>
</html>