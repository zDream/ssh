<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/plug/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/plug/bootstrap/css/bootstrap.min.css">
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

      <div style="position: relative">
          <div style="position: absolute">
              <input type='text' class="form-control" id="datetimepicker" />
          </div>
      </div>

  </form>
  </body>
</html>

<script src="<%=request.getContextPath()%>/plug/jquery/jquery-1.11.0.min.js"></script>
<script src="<%=request.getContextPath()%>/plug/moment/moment.min.js"></script>

<script src="<%=request.getContextPath()%>/plug/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/plug/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>

<script type="text/javascript">
    $(function(){
        $("#datetimepicker").datetimepicker({
            format : 'YYYY',
            stepping : 1
        });

    })
</script>