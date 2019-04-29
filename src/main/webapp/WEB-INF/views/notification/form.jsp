<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- taglib de forms do spring -->
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form servletRelativeAction="/notification/form/send"
		method="post">
		<div class="form-group">
			<label>Id</label> <input type="text" name="id" class="form-control" />
		</div>
		<div class="form-group">
			<label>Title</label> <input type="text" name="title"
				class="form-control" />
		</div>
		<div class="form-group">
			<label>Body</label> <input type="text" name="body"
				class="form-control" />
		</div>
		<div class="form-group">
			<label>Start Date</label> <input type="datetime-local" name="initialDate"
				class="form-control" />
		</div>
		<div class="form-group">
			<label>End Date</label> <input type="datetime-local" name="endDate"
				class="form-control" />
		</div>
		<div class="form-group">
			<label>Mid</label> <input type="text" name="mid" class="form-control"
				placeholder="Informe os ECs separados por vírgula" />
		</div>
		<div class="form-group">
			<label>Inst</label> <input type="text" name="inst"
				class="form-control"
				placeholder="Informe as instituições separadas por vírgula" />
		</div>

		<button type="submit">Enviar Notificação</button>
	</form:form>
</body>
</html>