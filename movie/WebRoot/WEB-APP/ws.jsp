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
    <title>无双</title>
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
        <div class="container mydiv">
          <div class="row">
            <div class="col-md-12">
              <h3>
                无双 2018
              </h3>
              <div class="media">
                  <img class="mr-4" alt="Bootstrap Media Preview" src="WEB-APP/images/ws1.jpg" />
                  <div class="media-body ">
                    <div class="row "><h5 >导演：</h5> <a href="">庄文强</a></div>
                    <div class="row"><h5 >编剧: </h5> <a href="">庄文强</a></div>
                    <div class="row"><h5 >主演: </h5>
                       <a href="">周润发 </a>/
                       <a href="">郭富城 </a>/
                       <a href="">张静初 </a>/
                       <a href="">冯文娟 </a>
                      </div>
                    <div class="row"><h5 >类型: </h5> 剧情 / 动作 / 犯罪</div>
                    <div class="row"><h5 >制片国家/地区: </h5> 中国大陆 / 香港</div>
                    <div class="row"><h5 >语言: </h5> 汉语普通话 / 粤语 / 英语 / 泰语 / 波兰语</div>
                    <div class="row"><h5 >上映日期: </h5> 2018-09-30(中国大陆) / 2018-10-04(香港)</div>
                    <div class="row"><h5 >片长: </h5> 130分钟</div>
                   
                  </div>
                </div>
            </div>
          </div>
          <div class="row col-12 mt-4">
            <h3 class="text-success">无双的剧情简介 · · · · · ·</h3>
            <p>
                《无双》讲述了以代号“画家”（周润发 饰）为首的犯罪团伙，掌握了制造伪钞技术，难辨真伪，并在全球进行交易获取利益，引起警方高度重视。然而“画家”和其他成员的身份一直成谜，警方的破案进度遭受到了前所未有的挑战。在关键时刻，擅长绘画的李问（郭富城 饰）打开了破案的突破口，而“画家”的真实身份却让众人意想不到……
            </p>
          </div>
          <div class="row col-12 mt-4">
              <h3 class="text-success">无双的演职表</h3>
              
              <div class="row">
                  <div class="col-md-2">
                    <div class="card">
                      <img class="card-img-top" alt="Bootstrap Thumbnail First" src="WEB-APP/images/yy1.jpg" />
                      <div class="card-block">
                        <h5 class="card-title">
                            庄文强
                        </h5>
                        导演
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="card">
                      <img class="card-img-top" alt="Bootstrap Thumbnail Second" src="WEB-APP/images/yy2.jpg"/>
                      <div class="card-block">
                        <h5 class="card-title">
                            周润发
                        
                        </h5>
                        饰 画家
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="card">
                      <img class="card-img-top" alt="Bootstrap Thumbnail Third" src="WEB-APP/images/yy3.jpg" />
                      <div class="card-block">
                        <h5 class="card-title">
                            郭富城
                            
                        </h5>
                        饰 李问
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="card">
                      <img class="card-img-top" alt="Bootstrap Thumbnail First" src="WEB-APP/images/yy4.jpg" />
                      <div class="card-block">
                        <h5 class="card-title">
                            张静初
                           
                        </h5>
                        饰 阮文
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="card">
                      <img class="card-img-top" alt="Bootstrap Thumbnail Second" src="WEB-APP/images/yy5.jpg"/>
                      <div class="card-block">
                        <h5 class="card-title">
                            冯文娟
                            
                        </h5>
                        饰 秀清
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="card">
                      <img class="card-img-top" alt="Bootstrap Thumbnail Third" src="WEB-APP/images/yy6.jpg" />
                      <div class="card-block">
                        <h5 class="card-title">
                            廖启智
                            
                        </h5>
                        饰 鑫叔
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
