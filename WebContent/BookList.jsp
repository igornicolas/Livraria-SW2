<!-- 
Alunos: Lorrane Meneses dos Santos - CB3002519 - ADS 571
		Igor Nicolas Parada - CB3002454 - ADS 571
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Aplicação de armazenamento de Livros</title>
</head>
<body>
	<center>
		<h1>Gerenciamento de Livros</h1>
        <h2>
        <a href="creditos.jsp">Creditos</a>
       		&nbsp;&nbsp;&nbsp;
        	<a href="new">Adicionar novo livro</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">Listar todos os livros</a>
        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Lista dos livros</h2></caption>
            <tr>
                <th>ID</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Preco</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${book.id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td><c:out value="${book.price}" /></td>
                    <td>
                    	<a href="edit?id=<c:out value='${book.id}' />">Edit</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="delete?id=<c:out value='${book.id}' />">Delete</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
