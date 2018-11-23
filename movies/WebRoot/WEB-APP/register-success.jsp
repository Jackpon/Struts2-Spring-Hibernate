<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="WEB-APP/css/bootstrap.min.css">
    <link rel="stylesheet" href="WEB-APP/css/all.css">
    
    <title>My JSP 'login_success.jsp' starting page</title>
  </head>
  <body>
    <div class="container text-center">
        <div class="alert alert-success" role="alert">
            Register success! <a href="WEB-APP/login.jsp" class="alert-link">Login</a>
        </div>
    </div>
    
     <!-- jQuery first, then Popper.js, then Bootstrap JS -->
     <script src="WEB-APP/js/jquery-3.3.1.min.js"></script>
    <script src="WEB-APP/js/popper.min.js"></script>
    <script src="WEB-APP/js/bootstrap.min.js"></script>
    </body>
</html>
