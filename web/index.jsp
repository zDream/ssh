<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
<script src="jquery/jquery-1.11.0.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<html>
  <head>
    <title></title>
  </head>
  <body>
logistics
<input type="text" id="ddd">
  <button type="button" onclick="printf()">打印</button>
  <button type="button" onclick="demo()">例子</button>
  </body>
</html>
<script>
    function demo(){
        $("#ddd").value="ddddddd";
    }
  function printf(){
     window.print();
  }


  $(function(){

//    var remote = require('remote');
//
//    var browserWindow = remote.require('browser-window');
//    var fs = remote.require('fs');
//    var path = remote.require('path');
//
//    var win = new browserWindow({
//      width: 800,
//      height: 600,
//      show: false
//    })

    win.loadUrl('https://fraserxu.me')
    win.show()

    win.printToPDF({
      landscape: true
    }, function(err, data) {
      var dist = 'C:\\Users\\fraserxu\\Desktop\\test.pdf'
      fs.writeFile(dist, data, function(err) {
        if(err) alert('genearte pdf error', err)
      })
    })
  })
</script>