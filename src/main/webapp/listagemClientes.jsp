<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.JavaBeans" %>
    <%@page import="java.util.ArrayList" %>
    <%
    	ArrayList<JavaBeans> clientes = (ArrayList<JavaBeans>) request.getAttribute("clientes");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Clientes</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" type="text/css" href="estilos/listagemClientes.css">
</head>
<body>
<div class="container">
    	<div class="title">
    		<h3>Clientes</h3>
    	</div>
    	<div class="row">
            <div class="col-md-12">
                <p>Gerencie seus clientes.</p>
            </div>
            <div class="col-lg-10 col-md-10 ml-auto mr-auto">
                <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>
                            	<a href="/CadastroClientes/cadastroCliente.jsp" type="button" rel="tooltip" class="btn btn-success btn-just-icon" data-original-title="" title="">
                                    <i class="material-icons">add</i>
                                </a>
                            </th>
                            <th>Nome</th>
                            <th>E-mail</th>
                            <th>Telefone</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <%if(clientes != null){ %>
	                    <%for(JavaBeans cliente : clientes ){ %>
	                        <tr>
	                            <td class="text-center"></td>
	                            <td><%=cliente.getNome()%></td>
	                            <td><%=cliente.getEmail()%></td>
	                            <td><%=cliente.getTelefone()%></td>	
	                            <td class="td-actions text-right">
	                                <a href="#" type="button" rel="tooltip" class="btn btn-info btn-just-icon" data-original-title="" title="">
	                                    <i class="material-icons">person</i>
	                                </a>
	                                <a href="#" type="button" rel="tooltip" class="btn btn-success btn-just-icon" data-original-title="" title="">
	                                    <i class="material-icons">edit</i>
	                                </a>
	                                <a href="#" type="button" rel="tooltip" class="btn btn-danger btn-just-icon" data-original-title="" title="">
	                                    <i class="material-icons">close</i>
	                                </a>
	                            </td>
	                        </tr>
	                        <%} %>
                        <%} %>
                    </tbody>
                </table>
                </div>
    
            </div>
        </div>
    </div>
	
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>