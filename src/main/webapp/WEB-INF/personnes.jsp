<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="prenoms" type="java.util.ArrayList<java.lang.String>" scope="request"/>
<jsp:useBean id="noms" type="java.util.ArrayList<java.lang.String>" scope="request"/>
<jsp:useBean id="ages" type="java.util.ArrayList<java.lang.Integer>" scope="request"/>
<html>
<head>
    <title>Personnes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body class="container">

<h1>Liste des personnes</h1>
<table class="table table-dark mt-4">


    <tbody>

    <% for (int i = 0; i < prenoms.size(); i++) { %>
    <tr>
        <td><%= prenoms.get(i) %>
        </td>
        <td><%= noms.get(i) %>
        </td>
        <td><%= ages.get(i) %>
        </td>
    </tr>
    <% } %>

    </tbody>


</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
