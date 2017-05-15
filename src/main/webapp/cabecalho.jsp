<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.Date" import="java.text.SimpleDateFormat"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
   SimpleDateFormat dataFormatada = new SimpleDateFormat("dd/MM/yyyy");
   String dataAtual = "Data: " + dataFormatada.format(new Date(System.currentTimeMillis()));
   dataFormatada.applyPattern("HH:mm:ss");
   dataAtual += " Hora: " + dataFormatada.format(new Date(System.currentTimeMillis()));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="margin:0">
        <font face="Verdana" style="font-size:22px;font-weight:bold;text-align:center">Desenvolvimento de Software Avançado para Web</font><br /><br />
        <font face="Verdana" style="font-size:12px;font-weight:bold;text-align:center"><%=dataAtual%></font>
    </body>
</html>