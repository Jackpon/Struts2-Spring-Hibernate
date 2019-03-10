<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@ page import="java.util.*,com.jackpon.bean.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="WEB-APP/css/bootstrap.min.css">
    <link rel="stylesheet" href="WEB-APP/css/all.css">
    <title>search-success</title>
	<style>
    .fa-heart{
      font-size: 2rem;
      color: #ddd;
      transition: transform 0.5s;
      cursor: pointer;
    }
    .like{
      color: red;
    }
    .fa-heart:active{
      color: red;
      transform: scale(2,2);
      transition: transform 0.1s;
    }
    </style>

  </head>
  
  <body>
    <jsp:include page="nav.jsp"></jsp:include> 
    <div class="container">
    	<div class="row">
    	<%
		 List<Movies> list=(List<Movies>)request.getAttribute("searchList");for(Movies m:list){
		 %>
		  <div class="col-md-4">
	            <div class="card mb-3">
	                <img src='<%=m.getImgpath()%>'  alt="" class="card-img-top">
	                <div class="card-body">
	                <h5 class="card-title"><%=m.getName()%></h5>
	                <p class="card-text"><%=m.getDescription()%></p>
	                <a class="btn btn-secondary" href="#">观看</a>
	                <i class="fas fa-heart float-right"></i>
	                </div>
                </div>
             </div>
		 <%} %>
    	</div>
    	<%-- <nav aria-label="Page navigation example">
  			<ul class="pagination pagination-lg justify-content-center">
  			<%=request.getAttribute("s") %>
  		 	</ul>
		</nav> --%>
	</div>
	
	<script src="WEB-APP/js/jquery-3.3.1.min.js"></script>
    <script src="WEB-APP/js/popper.min.js"></script>
    <script src="WEB-APP/js/bootstrap.min.js"></script>

    <script>
      $(document).ready(function(){
        $('.fa-heart').on('click',function(){
          $(this).toggleClass('like')
        })
      })
    </script>
  </body>
</html>
