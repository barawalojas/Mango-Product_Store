<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Admin Page</title>
	<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
	
	<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
    
    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
</head>
<body>
	<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administrator page</h1>
	            <h1>${title}</h1>
				<h3>${message}</h3>

        </div>

			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<h2>
						Welcome : ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/perform_logout" />">Logout</a>
					</h2>
				</security:authorize>
			</c:if>
					
      <!--   <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Welcome: ${pageContext.request.userPrincipal.name} |
                <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
            </h2>

        </c:if>		 -->

        <h3>
            <a href="<c:url value="/Admin/ProductInventory" /> ">Product Inventory</a>
        </h3>

        <p>Click Here to Add, Modify and View the Products!</p>

        <br/><br/>

        <h3>
            <a href="#">Customer Management</a>
        </h3>

        <p>Click Here to view the customer information!</p>
	</div>
	</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>