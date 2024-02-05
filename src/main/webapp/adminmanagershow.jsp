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
<%@include file="admin/adminhome.jsp" %>


<%@page import="com.demo.Dao2.mDao, java.util.* ,com.demo1.Manager " %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
  
    <h1>Manager Details</h1>
    
    <br>
                 <a href="admin_home.jsp" class="text-light btn btn-primary">Home</a>
    
    <%
                      List<Manager> l1=mDao.getAllRecords();
      
                   request.setAttribute("list", l1);
       
      %>
      
      <br></br>

 <div class="container">
          <table class="table table-dark  table-hover">
          
                       <tr>
                             <th>ID</th>
                             <th>Name</th>
                             <th>Email</th>
                             <th>Phone Number</th>
                             <th>Mobile</th>
                             <th>Street</th>
                             <th>City</th>
                             <th>UserName</th>
                             <th>PassWord</th>
                       </tr>
                       
                        <c:forEach items="${list}" var="e">
                        
                               <tr>
                                   <td>${e.getId()}</td>
                                     <td>${e.getName()}</td>
                                       <td>${e.getEmail()}</td>
                                       
                                         <td>${e.getPno()}</td>
                                           <td>${e.getMno()}</td>
                                             <td>${e.getStreet()}</td>
                                                <td>${e.getCity()}</td>
                                                  <td>${e.getUsername()}</td>
                                                   <td>${e.getPassword()}</td>
                                             
                                              
                                                     
                        
                        </tr>
                        
                        </c:forEach>
                       

			</table>
         
         </div>
         <br>
         
         
</body>
</html>