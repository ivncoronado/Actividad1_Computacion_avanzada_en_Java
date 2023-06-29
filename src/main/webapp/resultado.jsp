<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="triangulo_1.Triangulo"%>
<!DOCTYPE html>
<html>
<head>
    <title>Resultado</title>
</head>
<body>
    <%
      
        double base = Double.parseDouble(request.getParameter("base"));
        double altura = Double.parseDouble(request.getParameter("altura"));
        
        Triangulo triangulo = new Triangulo(base, altura);

        double area = triangulo.calcularArea();
        double perimetro = triangulo.calcularPerimetro();
    %>

    <h2>Resultado:</h2>
    <p>El área del triángulo equilátero es: <%= area %></p>
    <p>El perímetro del triángulo equilátero es: <%= perimetro %></p>
