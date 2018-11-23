<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
    <head>
        <meta charset="utf-8">
    </head>
    <body>
       <jsp:forward page="${basePath}/index.jsp"></jsp:forward>
    </body>
</html>
