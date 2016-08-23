<%--
  Created by IntelliJ IDEA.
  User: dream
  Date: 2016/8/17
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html ng-app="app">
<head>
    <title>angularjs directive命令的使用</title>
</head>
<body ng-controller="myctrl">
  <hello></hello>
  <demo>
    <span>原始内容</span>
    <span>还是会在这里</span>
  </demo>
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/plug/angular/angular.min.js"></script>
<script>
  var app = angular.module('app',[]);
  app.controller('myctrl',function($scope){
//    alert("test");
  })
  app.directive('hello', function () {
    return {
      restrict : 'E' ,
      template : '<div>hi angularjs </div>',
      replace : true
    }
  })
  app.directive('demo',function(){
    return {
      restrict : 'E',
      template : '<div>Hi there <span ng-transclude></span></div>',
      transclude : true
    }
  })
</script>
</html>
