<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- taglib de forms do spring -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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
				<label>Título</label> <input type="text" name="title"
					class="form-control" />
			</div>
			<div class="form-group">
				<label>Conteúdo</label> <input type="text" name="body"
					class="form-control" />
			</div>
			<div class="form-group">
				<label>Data de início</label> <input type="datetime-local"
					name="initialDate" class="form-control" />
			</div>
			<div class="form-group">
				<label>Data de término</label> <input type="datetime-local"
					name="endDate" class="form-control" />
			</div>
			<div class="form-group">
				<label>Estabelecimentos</label> <input type="text" name="mid"
					class="form-control"
					placeholder="Informe os ECs separados por vírgula" />
			</div>
			<div class="form-group">
				<label>Instituições</label> <input type="text" name="inst"
					class="form-control"
					placeholder="Informe as instituições separadas por vírgula" />
			</div>

			<button type="submit">Enviar Notificação</button>
		</form:form>
	</div>
	<script src="/webjars/jquery/3.0.0/jquery.min.js"></script>
	<script src="/webjars/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>