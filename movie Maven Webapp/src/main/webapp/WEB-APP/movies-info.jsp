<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>movies-info.jsp</title>
    
	 <link rel="stylesheet" href="WEB-APP/css/bootstrap.min.css">
    <link rel="stylesheet" href="WEB-APP/css/all.css">
      <link rel="stylesheet" href="WEB-APP/layui/css/layui.css" media="all">

  </head>
  
  <body>
  <jsp:include page="nav.jsp" /> 
  	 <div class="layui-container">
        <div class="layui-row">
        <table id="userList" lay-filter="userList"></table>
        </div>
     </div>
 
<script src="WEB-APP/layui/layui.js"></script>
<script>
layui.use('table', function(){
  var table = layui.table;
  
  //第一个实例
  table.render({
    elem: '#userList',
    height : "full-125",
    url : 'mListAction-findAll',
    limits : [10,15],
    limit : 15,
    id : "userListTable",
    cols : [[
        {field: 'name', title: '名字', minWidth:100, align:"center"},
        {field: 'type', title: '类型', minWidth:100, align:"center"},
        {field: 'description', title: '描述', minWidth:200, align:"center"}
    ]]
    ,page : true
  });
  
});

 $(document).ready(function(){
	     $('#myModal').on('show.bs.modal', function (event) {
	         let button = $(event.relatedTarget); // Button that triggered the modal
	         let name = button.data('name') ;// Extract info from data-* attributes
	         let modal = $(this);
	         modal.find('#delete').data('name', name);
	     }); 
    	$('#myModal #delete').on('click',function(){
	    	let name = $(this).data('name');
	      	location.href="like-delete?name="+name;
	      	$('#myModal').modal('hide');
    	})
  	}) 
</script>
   	
   	<script src="WEB-APP/js/jquery-3.3.1.min.js"></script>
	<script src="WEB-APP/js/popper.min.js"></script>
	<script src="WEB-APP/js/bootstrap.min.js"></script>
  </body>
</html>
