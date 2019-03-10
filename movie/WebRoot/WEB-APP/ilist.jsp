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
    <title>iList</title>

  </head>
  <body>
    
  <%int count=1; %>

  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">确定删除吗？</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <p>删除后数据将会永久丢失.</p>
            </div>
            <div class="modal-footer">
              <button id="delete" type="button" class="btn btn-danger">确定</button>
              <button type="button" class="btn btn-success" data-dismiss="modal">取消</button>
            </div>
          </div>
        </div>
      </div>
	<jsp:include page="nav.jsp" /> 
    <div class="container">
    <div class="row">
		<div class="col-md-12">
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>
							#
						</th>
						<th>
							Name
						</th>
						<th>
							Type
						</th>
						<th>
							Description
						</th>
                        <th>
							Action
						</th>
					</tr>
				</thead>
				<tbody>
               	<s:iterator value="moviesList" id="ml"> 
                    <tr>
						<td>
							<%=count++%>
						</td>
						<td>
							<s:property value="#ml.name" /> 
						</td>
						<td>
							<s:property value="#ml.type" />
						</td>
						<td>
							<s:property value="#ml.description" />
						</td>
                        <td>
                        <a type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModal" data-name="<s:property value="#ml.name"/>" >删除</a>
                        </td>
					</tr>
                </s:iterator>
				</tbody>
			</table>
		</div>
	</div>
    <div class="row">
         <a href="index.jsp" type="button" class="btn btn-block shadow p-3 mb-5 rounded">Back</a>
    </div>
    </div>
    
     <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="WEB-APP/js/jquery-3.3.1.min.js"></script>
    <script src="WEB-APP/js/popper.min.js"></script>
    <script src="WEB-APP/js/bootstrap.min.js"></script>
    <script>
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
  </body>
</html>
