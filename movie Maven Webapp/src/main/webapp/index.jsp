<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
  
<html >
  <head>
  	<base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Movies</title>
    <link rel="stylesheet" href="WEB-APP/css/bootstrap.min.css">
    <link rel="stylesheet" href="WEB-APP/css/all.css">
	 <style>
			.item{
				padding: 1% 1%;
			}
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
                                <a class="dropdown-item" href="WEB-APP/movies-info.jsp">影片列表</a>
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
     <div class="container-fluid">
            <div class="container-fluid text-center " id="alert">
                    <div class="alert  alert-dark alert-dismissible fade show" role="alert">
                    Hey guys! Please <a href="WEB-APP/login.jsp" class="alert-link">Sign In</a> 
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    </div>
                </div>
                        
            <div class="container-fluid">
                    <div class="row item">
                            <div class="col-12">
                                    <div class="carousel slide" id="carousel-220126">
                                            <ol class="carousel-indicators">
                                              <li data-slide-to="0" data-target="#carousel-220126">
                                              </li>
                                              <li data-slide-to="1" data-target="#carousel-220126">
                                              </li>
                                              <li data-slide-to="2" data-target="#carousel-220126" class="active">
                                              </li>
                                            </ol>
                                            <div class="carousel-inner">
                                              <div class="carousel-item">
                                                <img class="d-block w-100" alt="Carousel Bootstrap First" src="WEB-APP/images/lb-4.jpg">
                                                <div class="carousel-caption">
                                                  <h4>
                                                        这！就是灌篮
                                                  </h4>
                                                  <p>
                                                       互怼：杨政怒轰张宁闭嘴
                                                   </p>
                                                </div>
                                              </div>
                                              <div class="carousel-item">
                                                <img class="d-block w-100" alt="Carousel Bootstrap Second" src="WEB-APP/images/lb-5.jpg">
                                                <div class="carousel-caption">
                                                  <h4>
                                                    美丽见习生
                                                  </h4>
                                                  <p>
                                                    现代版灰姑娘逆袭记</p>
                                                </div>
                                              </div>
                                              <div class="carousel-item active">
                                                <img class="d-block w-100" alt="Carousel Bootstrap Third" src="WEB-APP/images/lb-6.jpg">
                                                <div class="carousel-caption">
                                                  <h4>
                                                       摩天营救
                                                  </h4>
                                                  <p>
                                                       强森徒手爬千米高楼</p>
                                                </div>
                                              </div>
                                            </div> <a class="carousel-control-prev" href="#carousel-220126" data-slide="prev"><span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span></a> <a class="carousel-control-next" href="#carousel-220126" data-slide="next"><span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span></a>
                                          </div>
                                    </div>
                            </div>
            </div>

                <div class="container">
                        <!-- Movies -->
                         <div class="row item">
                             <nav >
                                 <ol class="breadcrumb">
                                   <li class="breadcrumb-item">
                                     <a href="#">资讯</a>
                                   </li>
                                   <li class="breadcrumb-item">
                                     <a href="#">最新</a>
                                   </li>
                                   <li class="breadcrumb-item active">
                                     推荐
                                   </li>
                                 </ol>
                               </nav>
                             <div class="row col-12">
                               <div class="col-md-3">
                                 <div class="card">
                                   <img class="card-img-top" alt="Bootstrap Thumbnail First" src="WEB-APP/images/yz1.jpg">
                                   <div class="card-block">
                                     <h5 class="movies" >A</h5>
                                     <p class="card-text">一档让人图书馆忍不住爆笑的综艺</p>
                                     <p>
                                                         <a class="btn btn-secondary" href="mv.mp4">观看</a>
                                                         <a id="like-1" class="btn btn-md btn-outline-danger" href="javascript:void(0);" onclick="like('like-1')">喜欢</a>
                                                     </p>
                                   </div>
                                 </div>
                               </div>
                               <div class="col-md-3">
                                 <div class="card">
                                   <img class="card-img-top" alt="Bootstrap Thumbnail Second" src="WEB-APP/images/yz2.jpg">
                                   <div class="card-block">
                                     <h5 class="movies">B</h5>
                                     <p class="card-text">讲述谢耳朵小时候的传奇趣闻</p>
                                     <p>
                                                         <a class="btn btn-secondary" href="#">观看</a>
                                                         <a id="like-2" class="btn btn-md btn-outline-danger" href="javascript:void(0);" onclick="like('like-2')">喜欢</a>
                                                     </p>
                                   </div>
                                 </div>
                               </div>
                               <div class="col-md-3">
                                 <div class="card">
                                   <img class="card-img-top" alt="Bootstrap Thumbnail Third" src="WEB-APP/images/yz3.jpg">
                                   <div class="card-block">
                                     <h5 class="movies">生活大爆炸十二季第五集</h5>
                                     <p class="card-text">搞笑日常非它莫属</p>
                                     <p>
                                                         <a class="btn btn-secondary" href="#">观看</a>
                                                         <a id="like-3" class="btn btn-md btn-outline-danger" href="javascript:void(0);" onclick="like('like-3')">喜欢</a>
                                                     </p>
                                   </div>
                                 </div>
                               </div>
                            
                 <div class="col-md-3">
         <div class="card">
             <img class="card-img-top" alt="Bootstrap Thumbnail Third" src="WEB-APP/images/yz4.jpg">
             <div class="card-block">
             <h5 class="movies">星际迷航发现号第一集</h5>
             <p class="card-text">探索宇宙的奥妙与神秘</p>
             <p>
                                 <a class="btn btn-secondary" href="#">观看</a>
                                 <a id="like-4" class="btn btn-md btn-outline-danger" href="javascript:void(0);" onclick="like('like-4')">喜欢</a>
                             </p>
             </div>
         </div>
         </div>
         
                             </div>
                         </div>
                         <!-- others -->
                         <div class="row item">
                             
                             <nav>
                                 <ol class="breadcrumb">
                                   <li class="breadcrumb-item">
                                     <a href="#">电影</a>
                                   </li>
                                   <li class="breadcrumb-item">
                                     <a href="#">最新</a>
                                   </li>
                                   <li class="breadcrumb-item active">
                                     推荐
                                   </li>
                                 </ol>
                               </nav>
                               <div class="row">
                                   <div class="col-md-2">
                                       <div class="card">
                                         <img class="card-img-top" alt="Bootstrap Thumbnail First" src="WEB-APP/images/d1.jpg">
                                         <div class="card-block">
                                                             <h5 class="card-title">追龙
                                                                 </h5>
                                                             <p class="card-text">
                                                                 甄子丹华仔制霸黑白道 </p>
                                                             <p>
                                                                 <a class="btn btn-secondary" href="#">观看</a>
                                                                 <a id="like-5" class="btn btn-md btn-outline-danger" href="javascript:void(0);" onclick="like('like-5')">喜欢</a>
                                                             </p>
                                                         </div>
                                       </div>
                                     </div>
                                     <div class="col-md-2">
                                         <div class="card">
                                           <img class="card-img-top" alt="Bootstrap Thumbnail First" src="WEB-APP/images/d2.jpg">
                                           <div class="card-block">
                                                               <h5 class="card-title">夏天十九岁的肖像
                                                                   </h5>
                                                               <p class="card-text">
                                                                   黄子韬痴恋危险情人</p>
                                                               <p>
                                                                   <a class="btn btn-secondary" href="#">观看</a>
                                                                   <a id="like-6" class="btn btn-md btn-outline-danger" href="javascript:void(0);" onclick="like('like-6')">喜欢</a>
                                                               </p>
                                                           </div>
                                         </div>
                                       </div>
                                       <div class="col-md-2">
                                           <div class="card">
                                             <img class="card-img-top" alt="Bootstrap Thumbnail First" src="WEB-APP/images/d3.jpg">
                                             <div class="card-block">
                                                                 <h5 class="card-title">功守道
                                                                     </h5>
                                                                 <p class="card-text">
                                                                     马云邀功夫全明星致敬中国文化</p>
                                                                 <p>
                                                                     <a class="btn btn-secondary" href="#">观看</a>
                                                                     <a id="like-7" class="btn btn-md btn-outline-danger" href="javascript:void(0);" onclick="like('like-7')">喜欢</a>
                                                                 </p>
                                                             </div>
                                           </div>
                                         </div>
                                 <div class="col-md-2">
                                   <div class="card">
                                     <img class="card-img-top" alt="Bootstrap Thumbnail First" src="WEB-APP/images/d4.jpg">
                                     <div class="card-block">
                                                         <h5 class="card-title">前任3：再见前任
                                                             </h5>
                                                         <p class="card-text">
                                                             前任系列贺岁票房黑马</p>
                                                         <p>
                                                             <a class="btn btn-secondary" href="#">观看</a>
                                                             <a id="like-8" class="btn btn-md btn-outline-danger" href="javascript:void(0);" onclick="like('like-8')">喜欢</a>
                                                         </p>
                                                     </div>
                                   </div>
                                 </div>
                                 <div class="col-md-2">
                                   <div class="card">
                                     <img class="card-img-top" alt="Bootstrap Thumbnail Second" src="WEB-APP/images/d5.jpg">
                                     <div class="card-block">
                                                         <h5 class="card-title">天生不对
                                                             </h5>
                                                         <p class="card-text">
                                                             周渝民薛凯琪互撩互怼</p>
                                                         <p>
                                                             <a class="btn btn-secondary" href="#">观看</a>
                                                             <a id="like-9" class="btn btn-md btn-outline-danger" href="javascript:void(0);" onclick="like('like-9')">喜欢</a>
                                                         </p>
                                                     </div>
                                   </div>
                                 </div>
                                 <div class="col-md-2">
                                   <div class="card">
                                     <a href="WEB-APP/ws.jsp">
                                     <img class="card-img-top" alt="Bootstrap Thumbnail Third" src="WEB-APP/images/ws1.jpg">
                                     </a>
                                     <div class="card-block">
                                         <h5 class="card-title">无双</h5>
                                         <p class="card-text">
                                           警匪的巅峰对决巅峰对决
                                         <p>
                                             <a class="btn btn-secondary" href="#">观看</a>
                                             <a id="like-10" class="btn btn-md btn-outline-danger" href="javascript:void(0);" onclick="like('like-10')">喜欢</a>
                                         </p>
                                     </div>
                                   </div>
                                 </div>
                               </div>
                           </div>
                      </div>
                      <div class="container ">
                    <div class="row item">
                       <nav>
                           <ol class="breadcrumb">
                             <li class="breadcrumb-item">
                               <a href="#">剧集</a>
                             </li>
                             <li class="breadcrumb-item">
                               <a href="#">最新</a>
                             </li>
                             <li class="breadcrumb-item active">
                               推荐
                             </li>
                           </ol>
                         </nav>
                      <div class="col-md-12">
                        <div class="row">
                          <div class="col-md-3">
                            <div class="row">
                              <div class="card">
                                <img src="WEB-APP/images/j1.jpg" />
                                <div class="card-block">
                                  <h5 class="card-title">
                                    武动乾坤之冰心在玉壶
                                  </h5>
                                  <p class="card-text">
                                      金秋再战！杨洋热血归来
                                   </p>
                                  
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="col-md-9">
                            <div class="row">
                              <div class="col-md-12">
                                <div class="row">
                                  <div class="col-md-4">
                                    <div class="card">
                                      <img class="card-img-top" alt="Bootstrap Thumbnail First" src="WEB-APP/images/j2.jpg" />
                                      <div class="card-block">
                                        <h5 class="card-title">
                                            创业时代
                                          
                                        </h5>
                                        <p class="card-text">
                                            黄轩杨颖的创业之路
                                          </p>
                                        
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="card">
                                      <img class="card-img-top" alt="Bootstrap Thumbnail Second" src="WEB-APP/images/j3.jpg" />
                                      <div class="card-block">
                                        <h5 class="card-title">
                                            天坑鹰猎
                                            
                                        </h5>
                                        <p class="card-text">
                                            限时免费看全集
                                        </p>
                                        
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="card">
                                      <img class="card-img-top" alt="Bootstrap Thumbnail Third" src="WEB-APP/images/j4.jpg" />
                                      <div class="card-block">
                                        <h5 class="card-title">
                                            许你浮生若梦
                                            
                                        </h5>
                                        <p class="card-text">
                                            会员抢先看全集  
                                        </p>
                                        
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col-md-12">
                                <div class="row">
                                  <div class="col-md-4">
                                    <div class="card">
                                      <img class="card-img-top" alt="Bootstrap Thumbnail First" src="WEB-APP/images/j5.jpg" />
                                      <div class="card-block">
                                        <h5 class="card-title">
                                            橙红年代 TV版
                                        </h5>
                                        <p class="card-text">
                                            陈伟霆马思纯强强联手缉毒   
                                        </p>
                                        
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="card">
                                      <img class="card-img-top" alt="Bootstrap Thumbnail Second" src="WEB-APP/images/j6.jpg" />
                                      <div class="card-block">
                                        <h5 class="card-title">
                                            战地枪王
                                            
                                        </h5>
                                        <p class="card-text">
                                            徐梵溪谱写抗联情缘</p>
                                        
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="card">
                                      <img class="card-img-top" alt="Bootstrap Thumbnail Third" src="WEB-APP/images/j7.jpg" />
                                      <div class="card-block">
                                        <h5 class="card-title">
                                            永远一家人
                                            
                                        </h5>
                                        <p class="card-text">
                                            保剑锋历经困苦迎春天</p>
                                        
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
                  </div>
                  <button class="btn btn-outline-success btn-lg" id="up" style="position:fixed;right:0;bottom:0">
                    <i class="fas fa-angle-double-up"></i>
                  </button>
                       <div class=" btn-dark">
                        <div class="row d-flex justify-content-center">
                           <p >节目制作经营许可证京字666号</p>
                           © 2018-2019 @ Jack
                        </div>
                    </div>  
                      </div>       

        </div>
     
       
	<%-- <s:debug></s:debug>  --%>
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
        
        function like(s){
		var like=document.getElementById(s);
		var title=like.parentElement.parentElement.firstElementChild.textContent;
		var type=like.parentElement.parentElement.firstElementChild.className;
		location.href="like-add?movies.name="+title+"&movies.type="+type;
	    }

    up.onclick = function(){
          scrollTo(0,0);
      }
	</script>
<!--  -->
<script src="WEB-APP/js/jquery-3.3.1.min.js"></script>
<script src="WEB-APP/js/popper.min.js"></script>
<script src="WEB-APP/js/bootstrap.min.js"></script>
  </body>
</html>
