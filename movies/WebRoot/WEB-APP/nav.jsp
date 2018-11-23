<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>nav.jsp</title>
	
    <style>
        .nav-item{
          padding-left: 20px;
        }
    </style>
  </head>
  
  <body>
  
      <nav class="navbar navbar-dark bg-dark navbar-expand-md sticky-top">
        <div class="container">
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#mynav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#"><i class="fas fa-film"></i></a>
    
            <div class="navbar-collapse collapse" id="mynav">
                <ul class="navbar-nav">
                <li class="nav-item active dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown">电影</a>
                    <div class="dropdown-menu">
                    <a href="" class="dropdown-item">欧美电影</a>
                    <a href="" class="dropdown-item">大陆电影</a>
                    <a href="" class="dropdown-item">港台电影</a>
                    <a href="" class="dropdown-item">韩日电影</a>
                    <div class="dropdown-divider"></div>
                    <a href="mList-ilist?page=1" class="dropdown-item">全部电影</a>
                    </div>
                </li>
                <li class="nav-item active dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown">电视剧</a>
                    <div class="dropdown-menu">
                        <a href="" class="dropdown-item">欧美电视剧</a>
                        <a href="" class="dropdown-item">大陆电视剧</a>
                        <a href="" class="dropdown-item">港台电视剧</a>
                        <a href="" class="dropdown-item">韩日电视剧</a>
                        <div class="dropdown-divider"></div>
                        <a href="" class="dropdown-item">全部电视剧</a>
                    </div>
                    </li>
                    <li class="nav-item active dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown">体育</a>
                        <div class="dropdown-menu">
                        <a href="" class="dropdown-item">欧冠</a>
                        <a href="" class="dropdown-item">英超</a>
                        <a href="" class="dropdown-item">世界杯</a>
                        <a href="" class="dropdown-item">欧洲杯</a>
                        <div class="dropdown-divider"></div>
                        <a href="" class="dropdown-item">全部体育</a>
                        </div>
                    </li>
                    <li class="nav-item active dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown">综艺</a>
                        <div class="dropdown-menu">
                            <a href="" class="dropdown-item">欧美综艺</a>
                            <a href="" class="dropdown-item">大陆综艺</a>
                            <a href="" class="dropdown-item">港台综艺</a>
                            <a href="" class="dropdown-item">韩日综艺</a>
                            <div class="dropdown-divider"></div>
                            <a href="" class="dropdown-item">全部综艺</a>
                        </div>
                        </li>
                </ul>
    
                <form action="search-find" method="post" class="ml-md-3">
                <div class="input-group input-group-sm">
                    <input type="text" name="movies.name" id="" class="form-control">
                    <div class="input-group-append">
                    <button type="submit" class="btn btn-warning">
                        <i class="fas fa-search"></i></button>
                    </div>
                </div>
                </form>
            <ul class="navbar-nav ml-md-auto">
                <li class="nav-item dropdown active" id="name-status" style="display:none">
                    <a class="nav-link  dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">
                    <s:property value="#session.username"/></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="like-ilist">我喜欢 <span class="badge badge-pill badge-danger"><s:property value="#session.count"/></span></a> 
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="WEB-APP/person-info.jsp">个人资料</a>
                        <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="WEB-APP/logout.jsp">退出</a>
                    </div>
                </li> 
                <li class="active" id="login">
                    <a class="nav-link" href="WEB-APP/login.jsp">登陆<span class="sr-only">(current)</span></a>
                </li>
                <li class="active" id="register">
                    <a class="nav-link" href="WEB-APP/register.jsp">注册<span class="sr-only">(current)</span></a>
                </li>
            </ul>
            </div>
        </div>
    </nav>
		<script>
		var username="<%=session.getAttribute("username")%>";
		
		if(username!="null"){
			document.getElementById("name-status").style.display="";
			document.getElementById("login").style.display="none";
			document.getElementById("register").style.display="none";
			document.getElementById("alert").style.display="none";
		}else {
			document.getElementById("login").style.display="";
			document.getElementById("register").style.display="";
			document.getElementById("alert").style.display="";
		}
        
	</script>
  </body>
</html>
