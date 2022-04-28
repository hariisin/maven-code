

CI/CD Complete pipeline
<html>
<head>
  <title> Techmeeting -Devops Demo</title>
</head>
<body>
  <h3>Choose a Country</h3>
  <form method="get">
    <input type="checkbox" name="country" value="France">France
    <input type="checkbox" name="country" value="India">India
    <input type="checkbox" name="country" value="Portugal">Portugal
    <input type="submit" value="Query">
  </form>
 
  <%
  String[] countries = request.getParameterValues("country");
  if (countries != null) {
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
