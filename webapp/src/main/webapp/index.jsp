Hello, World! Test2
<html>
<head>
  <title>Echoing HTML Request Parameters</title>
</head>
<body>
  <h3>Choose a Country</h3>
  <form method="get">
    <input type="checkbox" name="country" value="France">Tan
    <input type="checkbox" name="country" value="India">Ali
    <input type="checkbox" name="country" value="Portugal">Kumar
    <input type="submit" value="Query">
  </form>
 
  <%
  String[] countries = request.getParameterValues("country");
  if (country != null) {
  %>
    <h3>You have selected country:</h3>
    <ul>
  <%
      for (int i = 0; i < countries.length; ++i) {
  %>
        <li><%= countries[i] %></li>
  <%
      }
  %>
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
  <%
  }
  %>
</body>
</html>
