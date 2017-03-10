<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="./template/header.jsp" %>

<c:choose>
	<c:when test="${mode == 'MODE_HOME' }">
		<!-- Jumbotron -->
		<div class="jumbotron">
			<h1>Test Task Management!</h1>
			<h2>By using spring boot with bootstrap and MySQL DB!</h2>
			<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas
				eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris
				condimentum nibh, ut fermentum massa justo sit amet.</p>
			<p>
				<a class="btn btn-lg btn-success" href="alltaskslist" role="button">View
					all datas</a>
			</p>
		</div>

		<!-- Example row of columns -->
		<div class="row"></div>
	</c:when>
	<c:when test="${mode == 'MODE_TASKS' }">
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<h2>List all task data...</h2>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<table class="table table-hover table-striped table-bordered">
					<thead>
						<tr>
							<th>SEQ</th>
							<th>ID</th>
							<th>Password</th>
							<th>Name</th>
							<th>Regdate</th>
							<th>Tel</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${testTasks}" var="testTask">
							<tr>
								<td>${testTask.seq }</td>
								<td>${testTask.id }</td>
								<td>${testTask.password }</td>
								<td>${testTask.name }</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd" value="${testTask.regdate }"/></td>
								<td>${testTask.tel }</td>
								<td class="text-center">
									<a href="updatetask?seq=${testTask.seq}"><span class="glyphicon glyphicon-pencil"></span></a>&nbsp;
									<a href="deletetask?seq=${testTask.seq}"><span class="glyphicon glyphicon-trash"></span></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</c:when>
	<c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE' }">
		<div class="container text-center">
			<h3>Test Task Management</h3>
			<hr>
			<form action="savetask" method="post" class="form-horizontal">
				<input type="hidden" name="seq" value="${testTask.seq}" />
				<div class="form-group">
					<label class="control-label col-md-3">id</label>
					<div class="col-md-7">
						<input type="text" class="form-control" name="id" value="${testTasks.id}" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-md-3">password</label>
					<div class="col-md-7">
						<input type="text" class="form-control" name="password" value="${testTasks.password}" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-md-3">Name</label>
					<div class="col-md-7">
						<input type="text" class="form-control" name="name" value="${testTasks.name}" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-md-3">Tel</label>
					<div class="col-md-7">
						<input type="text" class="form-control" name="tel" value="${testTasks.tel}" />
					</div>
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-primary" value="Save" />
				</div>
			</form>
		</div>
	</c:when>
</c:choose>

<%@include file="./template/footer.jsp" %>