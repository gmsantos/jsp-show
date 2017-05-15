<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="erro.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
   String nome = request.getParameter("nome");
   int idade = new Integer(request.getParameter("idade"));
   String email = request.getParameter("email");
   String endereco = request.getParameter("endereco");
   String telefone = request.getParameter("telefone");
   //O campo idade já será tratado pela diretiva page, que especifica erro.jsp como a página de erro
   if(nome.equals("") || email.equals("") || endereco.equals("") || telefone.equals(""))
     response.sendRedirect("erro.jsp");
   else
   {
     //Realizar o cadastro aqui. Utilizar JavaBeans
   }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Realizado com sucesso!</title>
    </head>
    <body>
        <h1>Dados do usuário cadastrados com sucesso!</h1>
        <a href="index.jsp">Voltar</a>
    </body>
</html>
