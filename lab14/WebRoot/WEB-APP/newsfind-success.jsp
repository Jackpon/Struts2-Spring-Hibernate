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
    <title>seeNews</title>
	
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
            	<div class="col-12">
            	<form action="news-findByType" method="post" >
                        <select name="news.type">
                        <option/>请选择新闻类型</option>
							<s:iterator value="CategoryList" id="cl"> 
    							<option value="<s:property value="#cl.name" /> "><s:property value="#cl.name" /> </option>
							</s:iterator>
						</select>
                        
                        <button type="submit" class="btn btn-warning">查看新闻</button>
                    </form>
            	</div>
                <table class="table table-striped">
                    <thead>
                        <tr>
                        <th scope="col">序列</th>
                        <th scope="col">标题</th>
                        <th scope="col">发布时间</th>
                        <th scope="col">类型</th>
                        <th scope="col">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="NewsList" id="nl"> 
                            <tr>
                                <th scope="row"><s:property value="#nl.id" /></th>
                                <td><a href="news-see?news.id=<s:property value="#nl.id" />"><s:property value="#nl.title" /></a></td>
                                <td><s:property value="#nl.time" /></td>
                                <td><s:property value="#nl.type" /></td>
                                <td>
                                    <a href="news-edit?news.id=<s:property value="#nl.id" />">修改</a>
                                    <a href="news-delete?news.id=<s:property value="#nl.id" />">删除</a>
                                </td>
                                </tr>
                        </s:iterator>
                        
                    </tbody>
                </table>        
            </div>
        </div>
    </div>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="WEB-APP/js/jquery-3.3.1.min.js"></script>
    <script src="WEB-APP/js/popper.min.js"></script>
    <script src="WEB-APP/js/bootstrap.min.js"></script>
  </body>
</html>
