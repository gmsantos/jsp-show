<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="dataHoraSistema" class="br.ufscar.beans.DataHoraSistemaBean"/> 
<jsp:setProperty name="dataHoraSistema" property="formato" value="dd/MM/yyy - HH:mm:ss"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="margin:0">
        <font face="Verdana" style="font-size:22px;font-weight:bold;text-align:center">
            Desenvolvimento de Software Avançado para Web
        </font>
        <br /><br />
        <font face="Verdana" style="font-size:12px;font-weight:bold;text-align:center">Data e Hora do sistema: 
            <jsp:getProperty name="dataHoraSistema" property="dataHora"/>
        </font>
    </body>
</html>