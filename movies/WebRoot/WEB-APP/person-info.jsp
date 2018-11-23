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
    <title>person-info</title>
	<style>
      #ilist{
        margin-top: 3em;
      }
    </style>
  </head>
  
  <body background="">
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
                    <a href="" class="dropdown-item">全部电影</a>
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
    
              <form action="" method="post" class="ml-md-3 ml-md-auto">
                <div class="input-group input-group-sm">
                  <input type="text" name="" id="" class="form-control">
                  <div class="input-group-append">
                    <button type="submit" class="btn btn-warning">
                      <i class="fas fa-search"></i></button>
                  </div>
                </div>
              </form>
    
            </div>
          </div>
        </nav>
    <div class="container " id="ilist">
      <div class="row">
        <div class="col-md-3 col-12">
          <div class="list-group" id="list-tab" role="tablist">
            <button type="button" class="btn btn-primary" disabled>个人设置</button>
            <a class="list-group-item list-group-item-action active" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">配置文件</a>
            <a class="list-group-item list-group-item-action " id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">账户</a>
            <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">电子邮件</a>
           </div>
        </div>
        <div class="col-9">
          <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list"> 
              <div class="row">
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <h3>
                        公开资料
                      </h3>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-8">
                      <form role="form">
                          <div class="form-group">
                              <label for="name">
                                名字
                              </label>
                              <input type="text" class="form-control" id="name" value="jack"/>
                          </div>
                        <div class="form-group">
                           
                          <label for="exampleInputEmail1">
                            Email
                          </label>

                          <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="jack" aria-label="Recipient's username" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                              <span class="input-group-text" id="basic-addon2">@163.com</span>
                            </div>
                          </div>
                           
                        </div>
                        <div class="form-group">
                           
                           <label for="description">
                            一句话描述自己
                            </label>
                            <input type="text" class="form-control" id="description" value="hello! this is jack"/>
                        </div>
                        
                        <div class="checkbox">
                           
                          <label>
                            <input type="checkbox" /> Check me out
                          </label>
                        </div> 
                        <button type="submit" class="btn btn-primary">
                          更新信息
                        </button>
                      </form>
                    </div>
                  </div>
                </div>
            </div>
            </div>
            <div class='tab-pane fade' id="list-home" role="tabpanel" aria-labelledby="list-home-list">
                <div class="row">
                  <div class="col-md-8">
                      <div class="row">
                          <div class="col-md-12">
                            <h3>
                              更改密码
                            </h3>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-md-12">
                            <form role="form">
                                <div class="form-group">
                 
                                    <label for="OldPassword">
                                      旧密码
                                    </label>
                                    <input type="password" class="form-control" id="OldPassword" />
                                  </div>
                                  <div class="form-group">
                 
                                      <label for="Password1">
                                        新密码
                                      </label>
                                      <input type="password" class="form-control" id="Password1" />
                                    </div>
                                    <div class="form-group">
                 
                                        <label for="Password2">
                                          确认密码
                                        </label>
                                        <input type="password" class="form-control" id="Password2" />
                                      </div>
                              
                              <button type="submit" class="btn btn-primary">
                                更新密码
                              </button>
                            </form>
                          </div>
                        </div>
                  </div>
                 
                </div>
            </div>
            <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
              
              <div class="row">
                <div class="col-md-8">
                  <div class="row">
                    <div class="col-md-12">
                      <h3>
                        邮箱
                      </h3>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="alert alert-secondary alert-dismissible fade show" role="alert">
                        jack@163.com <span class="badge badge-success">主要</span>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                    </div>
                    <div class="col-md-12">
                      <h5>添加邮箱地址</h5>
                      <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                          <span class="input-group-text" id="basic-addon2">@163.com</span>
                        </div>
                        <button type="button" class="btn btn-outline-success">添加</button>
                      </div>
                    </div>
                    <div class="col-md-12">
                      <h5>备份邮箱地址</h5>
                      <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                          <span class="input-group-text" id="basic-addon2">@163.com</span>
                        </div>
                        <button type="button" class="btn btn-outline-success">保存</button>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            </div>
          </div>
        </div>
      </div>
  </div>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="WEB-APP/js/jquery-3.3.1.min.js"></script>
    <script src="WEB-APP/js/popper.min.js"></script>
    <script src="WEB-APP/js/bootstrap.min.js"></script>
  </body>
</html>
