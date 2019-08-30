<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ctx}/webjars/bootstrap/css/bootstrap.min.css">
<title>Home</title>
</head>
<body>
	<div class="container">
		<h2 class="hello-title">${message}</h2>

<%-- 		<form:form servletRelativeAction="/notification/form" method="get">

			<button type="submit">Nova Notificação</button>
		</form:form> --%>
		<form:form servletRelativeAction="/notification/form/push" method="get">

			<button type="submit">Novo PUSH</button>
		</form:form>
	</div>
	<script src="${ctx}/webjars/jquery/3.0.0/jquery.min.js"></script>
	<script src="${ctx}/webjars/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="${ctx}/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>