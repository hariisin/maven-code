

Hello, World! Test2
<html>
<head>
  <title>Echoing HTML Request Parameters</title>
   <style>
     .container {
    color:green;
    font-family: Consolas, Baskerville, 'Segoe UI', sans-serif;
     }
     
     .city {
  background-color: tomato;
  color: white;
  border: 2px solid black;
  margin: 20px;
  padding: 20px;
}
    </style>
</head>
<body>
  <h3>Choose a Country</h3>
  <form method="get">
    <div id="city">
    <input type="checkbox" name="country" value="France">France
    <input type="checkbox" name="country" value="India">India
    <input type="checkbox" name="country" value="Portugal">Portugal
    <input type="submit" value="Query">
    </div>
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
