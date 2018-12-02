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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="WEB-APP/css/bootstrap.min.css">
    <link rel="stylesheet" href="WEB-APP/css/all.css">
    <title>NewsEdit</title>
	
  </head>
  
  <body>
    <div class="container " id="ilist">
        <div class="row">
            <div class="col-md-3 col-12">
                <div class="list-group">
                    <button type="button" class="btn btn-primary" disabled>类型管理</button>
                    <a class="list-group-item list-group-item-action "  href="category-find" >类型查看</a>
                    <a class="list-group-item list-group-item-action "  href="index.jsp">类型发布</a>
                    <button type="button" class="btn btn-primary" disabled>新闻管理</button>
                    <a class="list-group-item list-group-item-action "  href="news-find" >新闻查看</a>
                    <a class="list-group-item list-group-item-action "  href="news-push">新闻发布</a>
                </div>
            </div>
            <div class="col-9">
            <h2><s:property value="editNews.title" /></h2><br>
               <label for="">来源：<s:property value="editNews.wherefrom" /></label>
               <label for="">发布时间：<s:property value="editNews.time" /></label>
               <br>
               <p>
               <s:property value="editNews.content" />
               </p>
            </div>
        </div>
    </div>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="WEB-APP/js/jquery-3.3.1.min.js"></script>
    <script src="WEB-APP/js/popper.min.js"></script>
    <script src="WEB-APP/js/bootstrap.min.js"></script>
  </body>
</html>
