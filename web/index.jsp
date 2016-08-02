<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>主界面</title>
  </head>
  <body>
  <form action="<%=request.getContextPath()%>/management/login" method="post">

      username:<input type="text" name="username"><br>
      password:<input type="password" name="password">
      <button type="submit" >submit</button>
  </form>
  </body>
</html>
<script>


</script>