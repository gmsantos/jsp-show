<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AA6-1-1 - Actions e JavaBeans</title>
    </head>
    <body style="margin-top:0;margin-left:0">
      <div style="text-align:center;background:rgb(142,174,235);position:absolute;height:10%;width:100%">
        <jsp:include page="cabecalho.jsp" />
      </div>
      <div style="position:absolute;top:10%;height:80%;width:100%">
        <h1>Cadastro de Usuários</h1>
        <form action="paginaRetorno.jsp" method="POST">
          <font face="Verdana" style="font-size:12px;font-weight:bold">Nome:</font>
          <input name="nome" type="text"><br />
          <font face="Verdana" style="font-size:12px;font-weight:bold">Idade:</font>
          <input name="idade" type="text"><br />
          <font face="Verdana" style="font-size:12px;font-weight:bold">E-mail:</font>
          <input name="email" type="text"><br />
          <font face="Verdana" style="font-size:12px;font-weight:bold">Endereco:</font>
          <input name="endereco" type="text"><br />
          <font face="Verdana" style="font-size:12px;font-weight:bold">Telefone:</font>
          <input name="telefone" type="text"><br /><br />
          <input name="botaoEnviar" type="submit" value="Enviar">
        </form>
      </div>
      <div style="text-align:center;background:rgb(142,174,235);position:absolute;height:10%;bottom:0px;width:100%">
          <jsp:include page="rodape.jsp" />
      </div>
    </body>
</html>