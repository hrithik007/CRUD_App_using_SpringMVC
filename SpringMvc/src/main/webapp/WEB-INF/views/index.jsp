<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   <!-- Font Awesome 5 -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

   </head>

<body>
<div class="container">
    <h2 class="my-4">Product List : </h2>
    <c:choose>
        <c:when test="${not empty products}">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>DESCRIPTION</th>
                        <th>PRICE</th>
                        <th>ACTION</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${products}" var="p">
                        <tr>
                            <td>${p.id} </td>
                            <td>${p.name}</td>
                            <td>${p.description}</td>
                            <td>${p.price}</td>
                            <td><a href="${pageContext.request.contextPath}/delete/${p.id}"><i class="fa fa-trash text-danger" aria-hidden="true"></i></a></td>
                            <td><a href="${pageContext.request.contextPath}/update/${p.id}"><i class="fas fa-edit"></i></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:when>
        <c:otherwise>
            <p>No Product Available</p>
        </c:otherwise>
    </c:choose>
    <a href="${pageContext.request.contextPath}/addProduct" class="btn btn-primary mt-4">Add Product</a>
</div>
</body>
</html>
