<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">

    <head>
		<%-- <base href="<%=basePath%>"> --%>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
       	<!-- <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
 -->
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>The Movies</strong> Register Form</h1>
                            <div class="description">
                            	<p>
	                            	This is a register page of The Movies.
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Register to our site</h3>
                            		<p>Input your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="<%=basePath%>register-add" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="userDTO.name" placeholder="Username..." class="form-username form-control" id="username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="userDTO.password" placeholder="Password..." class="form-password form-control" id="password">
                                    </div>
                                    <div class="form-group">
			                        	<label class="sr-only" for="form-password">ConfirmPassword</label>
			                        	<input type="password" name="userDTO.password2" placeholder="Confirm Password..." class="form-password form-control" id="password2">
			                        </div>
			                        <button type="submit" class="btn" id="register">Sign up</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                   
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                            <h3>Have an account?</h3>
                            <a class="btn btn-link-1 btn-link-1-twitter" href="<%=basePath%>WEB-APP/login.jsp">
                             sign in
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        


        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        <!-- <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
         -->
        <script>
            var username=$("#username");
            var passwd=$("#password");
            var passwd2=$("#password2");
            $("#register").click(function(){
                if(username.val()==""){
                    alert("用户名不能为空");
                }else if(username.val()=="null"){
                	alert("用户名已被使用");
                	return false;
                }else if(passwd.val()==""){
                    alert("密码不能为空");
                }else if(passwd2.val()==""){
                    alert("对不起，重复密码不能为空");
                }else if(passwd.val()!=passwd2.val()){
                    alert("输入密码不一致");
                }else{
                    return true;
                }
            });
        </script>
    </body>

</html>