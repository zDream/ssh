<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>主界面</title>
  </head>
  <body>
  <form action="<%=request.getContextPath()%>/management/login" method="post">

      username:<input type="text" name="username"><br>
      password:<input type="password" name="password">
      datachoose:<input>
      <button type="submit" >submit</button>
      <button type="reset" >reset</button>
      <button type="button" onclick="jsDemo()"></button>
  </form>
  </body>
</html>
<script src="<%=request.getContextPath()%>/js/login.js"></script>
<script src="<%=request.getContextPath()%>/jquery/jquery-1.11.0.min.js"></script>
