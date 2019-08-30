<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- taglib de forms do spring -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ctx}/webjars/bootstrap/css/bootstrap.min.css">
<title>Send push</title>
</head>
<body>
	<div class="container">
		<form:form servletRelativeAction="/notification/form/send/push"
			method="post" modelAttribute="push">
			<div class="form-group">
				<label>Título</label> <input type="text" name="title"
					class="form-control" />
			</div>
			<div class="form-group">
				<label>Conteúdo</label> <input type="text" name="body"
					class="form-control" />
			</div>
			<div class="form-group">
				<label>Estabelecimentos</label> <input type="text" name="establishments"
					class="form-control"
					placeholder="Informe os ECs separados por vírgula" />
			</div>

			<button type="submit">Enviar Push</button>
		</form:form>
	</div>
	<script src="${ctx}/webjars/jquery/3.0.0/jquery.min.js"></script>
	<script src="${ctx}/webjars/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="${ctx}/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>