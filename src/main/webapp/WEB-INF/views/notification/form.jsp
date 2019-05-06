<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- taglib de forms do spring -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ctx}/webjars/bootstrap/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form:form servletRelativeAction="/notification/form/send"
			method="post">
			<div class="form-group">
				<label>Identificador</label> <input type="text" name="id"
					class="form-control" />
			</div>
			<div class="form-group">
				<label>T�tulo</label> <input type="text" name="title"
					class="form-control" />
			</div>
			<div class="form-group">
				<label>Conte�do</label> <input type="text" name="body"
					class="form-control" />
			</div>
			<div class="form-group">
				<label>Data de in�cio</label> <input type="datetime-local"
					name="initialDate" class="form-control" />
			</div>
			<div class="form-group">
				<label>Data de t�rmino</label> <input type="datetime-local"
					name="endDate" class="form-control" />
			</div>
			<div class="form-group">
				<label>Estabelecimentos</label> <input type="text" name="mid"
					class="form-control"
					placeholder="Informe os ECs separados por v�rgula" />
			</div>
			<div class="form-group">
				<label>Institui��es</label> <input type="text" name="inst"
					class="form-control"
					placeholder="Informe as institui��es separadas por v�rgula" />
			</div>

			<button type="submit">Enviar Notifica��o</button>
		</form:form>
	</div>
	<script src="${ctx}/webjars/jquery/3.0.0/jquery.min.js"></script>
	<script src="${ctx}/webjars/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="${ctx}/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>