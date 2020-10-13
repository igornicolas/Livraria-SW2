<!-- 
Alunos: Lorrane Meneses dos Santos - CB3002519 - ADS 571
		Igor Nicolas Parada - CB3002454 - ADS 571
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Aplicacao de armazenamento de livros</title>
</head>
<body>
	<center>
		<h1>Gerenciamento de livros</h1>
        <h2>
       		 <a href="creditos.jsp">Creditos</a>
       		&nbsp;&nbsp;&nbsp;
        	<a href="new">Adicionar novo livro</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">Listar todos os livros</a>
        	
        </h2>
	</center>
    <div align="center">
		<c:if test="${book != null}">
			<form action="update" method="post">
        </c:if>
        <c:if test="${book == null}">
			<form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
            	<h2>
            		<c:if test="${book != null}">
            			Editar Livro
            		</c:if>
            		<c:if test="${book == null}">
            			Adicionar Novo Livro
            		</c:if>
            	</h2>
            </caption>
        		<c:if test="${book != null}">
        			<input type="hidden" name="id" value="<c:out value='${book.id}' />" />
        		</c:if>            
            <tr>
                <th>Titulo: </th>
                <td>
                	<input type="text" name="title" size="45"
                			value="<c:out value='${book.title}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Autor: </th>
                <td>
                	<input type="text" name="author" size="45"
                			value="<c:out value='${book.author}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Preco: </th>
                <td>
                	<input type="text" name="price" size="5"
                			value="<c:out value='${book.price}' />"
                	/>
                </td>
            </tr>
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Salvar" />
            	</td>
            </tr>
        </table>
        </form>
    </div>	
</body>
</html>
