<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>主界面</title>
  </head>
  <body>
  <form action="<%=request.getContextPath()%>/management/login" method="post">

      username:<input type="text" name="username"><br>
      password:<input type="password" name="password"><br>
      <button type="submit" >submit</button>
      <button type="reset" >reset</button><br>
      <button type="button" onclick="jsDemo()"></button><br>

      <input name="datetime">


  </form>
  </body>
</html>
<script src="<%=request.getContextPath()%>/js/login.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery/jquery-1.11.0.min.js"></script>
