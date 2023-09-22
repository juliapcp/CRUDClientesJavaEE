<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar cliente</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="estilos/cadastroCliente.css">
</head>
<body>
	<div class="registration-form">
		<form action="/CadastroClientes/cadastroCliente">
			<div class="form-icon">
				<span><i class="icon icon-user"></i></span>
			</div>
			<div class="form-group">
				<input type="text" class="form-control item" required id="nome"
					name="nome" placeholder="Nome completo">
			</div>
			<div class="form-group">
				<input type="email" class="form-control item" required id="email"
					name="email" placeholder="E-mail">
			</div>
			<div class="form-group">
				<input type="text" class="form-control item" required id="telefone"
					name="telefone" placeholder="Telefone">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-block create-account">Cadastrar
					cliente</button>
			</div>
		</form>
	</div>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
	<script src="assets/js/script.js"></script>
</body>
</html>