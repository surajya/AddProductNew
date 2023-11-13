<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="./base.jsp"%>

<html>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12 mt-3">
				<div class="card">
					<div class="card-body text-center">
						<h1>Product Home</h1>
						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th scope="col">Id</th>
									<th scope="col">Name</th>
									<th scope="col">Description</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							
							
							<tbody>
							<c:forEach items="${products }" var="p">
								<tr>
									<th scope="row">${p.pId }</th>
									<td>${p.pName }</td>
									<td>${p.pDiscription }</td>
									<td class="font-weight-bold">&#8377; ${p.pPrice }</td>
									<td> 
										<a href="${pageContext.request.contextPath}/delete/${p.pId }" ><i class="fa-solid fa-trash-can text-danger"></i></a>
										<a href="${pageContext.request.contextPath}/update/${p.pId }" ><i class="fa-solid fa-pen-nib text-primary"></i></a>
										
									</td>
								</tr>
								</c:forEach>
							</tbody>
							
						</table>
						<a href="${pageContext.request.contextPath}/addProduct" class="btn btn-primary">ADD</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
