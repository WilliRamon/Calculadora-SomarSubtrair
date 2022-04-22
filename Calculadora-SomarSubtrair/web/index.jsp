<%-- 
    Document   : index
    Created on : 22 de abr. de 2022, 03:41:14
    Author     : acdcr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
float resultado = 0;
float n1 = 0;
float n2 = 0;

if(request.getMethod() == "POST"){
    n1 = Float.parseFloat(request.getParameter("n1"));
    n2 = Float.parseFloat(request.getParameter("n2"));
    
    if(request.getParameter("somar") != null){
        resultado = n1 + n2;
    } else if(request.getParameter("subtrair") != null){
        resultado = n1 - n2;
    }
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calculadora</h1>
        <form method="post">
            Primeiro Numero: <br/>
            <input type="number" required name="n1" value="<%= n1 %>" /> <br/>
            Segundo Numero:<br/>
            <input type="number" required name="n2" value="<%= n2 %>" /> <br/> <br/>
            
            <input type="submit" value="Somar" name="somar" />
            <input type="submit" value="Subtrair" name="subtrair" />
            <br/> <br/>
            
            Resultado: <%=resultado%>
         
        </form>
    </body>
</html>
