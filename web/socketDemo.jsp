<%--
  Created by IntelliJ IDEA.
  User: dream
  Date: 2016/8/14
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>socketio demo</title>
</head>
<body>
<div id="loginbox">
  <div style="width:260px;margin:200px auto;">
    请先输入你在聊天室的昵称
    <br/>
    <br/>
    <input type="text" style="width:180px;" placeholder="请输入用户名" id="username" name="username" />
    <input type="button" style="width:50px;" value="提交" onclick="CHAT.usernameSubmit();"/>
  </div>
</div>
<div id="chatbox" style="display:none;">
  <div style="background:#3d3d3d;height: 28px; width: 100%;font-size:12px;">
    <div style="line-height: 28px;color:#fff;">
      <span style="text-align:left;margin-left:10px;">Websocket多人聊天室</span>
                    <span style="float:right; margin-right:10px;"><span id="showusername"></span> |
					<a href="javascript:;" onclick="CHAT.logout()" style="color:#fff;">退出</a></span>
    </div>
  </div>
  <div id="doc">
    <div id="chat">
      <div id="message" class="message">
        <div id="onlinecount" style="background:#EFEFF4; font-size:12px; margin-top:10px; margin-left:10px; color:#666;">
        </div>
      </div>
      <div class="input-box">
        <div class="input">
          <input type="text" maxlength="140" placeholder="请输入聊天内容，按Ctrl提交" id="content" name="content">
        </div>
        <div class="action">
          <button type="button" id="mjr_send" onclick="CHAT.submit();">提交</button>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/plug/jquery/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/plug/socket.io/socket.io.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/client.js"></script>
<script type="text/javascript">
  $(function(){
  })
</script>
</html>
