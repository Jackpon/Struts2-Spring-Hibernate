<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>

        <!-- CSS -->
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

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
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">管理员登陆</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                          <div class="row">
                                <label for="">用户:</label> <input name="" id=""  value="">
                          </div>
                          <div class="row">
                                <label for="">密码:</label> <input name="" id=""  value="">
                          </div>
                        </div>
                        <div class="modal-footer">
                        <a href="">
                            <button type="button" class="btn btn-primary" >登陆</button>
                        </a>
                          <button type="button" class="btn btn-success" data-dismiss="modal">取消</button>
                        </div>
                      </div>
                    </div>
                  </div>
        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>The Movies</strong> Login Form</h1>
                            <div class="description">
                            	<p>
	                            	This is a login page of The Movies.
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login to our site</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="<%=basePath%>login-check" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="user.name" placeholder="Username..." class="form-username form-control" id="username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="user.password" placeholder="Password..." class="form-password form-control" id="password">
			                        </div>
			                        <button type="submit" class="btn" id="login">Sign in</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                   
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                            <h3>New to The Movies? Create an account.</h3>
                            <a class="btn btn-link-1 btn-link-1-twitter" href="<%=basePath%>WEB-APP/register.jsp">
                             sign up
                            </a>
                        </div>
                    </div>
                    <div class="row">
                            <div class="col-sm-6 col-sm-offset-3 social-login">
                                <h3>Are you admin？</h3>
                                <a type="button" class="btn btn-link-1 btn-link-1-twitter" data-toggle="modal" data-target="#myModal">sign in</a>
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
        
        <script>
            var username=$("#username");
            var passwd=$("#password");
            $("#login").click(function(){
                
                if(username.val()==""){
                    alert("用户名不能为空");
                }else if(passwd.val()==""){
                    alert("密码不能为空");
                }
            });

        </script>

    </body>

</html>

