<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Erro</title>
    </head>
    <body>
        <h1><%=request.getParameter("mensagem")%></h1>
        <a href="index.jsp">Voltar</a>
        <!-- Este comentário é necessário porque o Internet Explorer apresenta uma restrição de tamanho mínimo
          para as páginas retornadas para o navegador.
          Sem este comentário, o Internet Explorer apresenta uma página de erro própria, impedindo que a página
          de erro da aplicação seja exibida. Normalmente as páginas retornadas apresentam tamanho superior ao
          esperado pelo Internet Explorer. Contudo, como este exemplo é bastante simples, torna-se necessário acrescentar
          este comentário
        -->
    </body>
</html>