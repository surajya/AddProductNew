<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="./base.jsp"%>
</head>
<body>
	<div class="container">
		<div class="row mt-3">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center">Update Product Details</h1>
				<div class="card">
					<div class="card-body">
						<form action="${pageContext.request.contextPath }/handleProductForm" method="post">
						
							<div class="form-group"> 
								<input type="hidden" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="pId" placeholder="Enter Product id" value="${product.pId }" required>
							</div>
							<div class="form-group">
								<label >Name</label> 
								<input type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="pName" placeholder="Enter Product Name" value="${product.pName }" required>
							</div>
							
							<div class="form-group">
								<label>Price</label>
								<input type="number" class="form-control" name="pPrice" placeholder="Enter Product Price" value="${product.pPrice }" required>
							</div>
							
							<div class="form-group">
								<label>Discription</label>
								<textarea row="5" class="form-control" name="pDiscription" placeholder="Enter Product Discription" required>"${product.pDiscription }"</textarea>
							</div>
							
						    <div class="form-group text-center">
						    	<a href="${pageContext.request.contextPath}/" class="btn btn-danger">BACK</a>
						    	<button class="btn btn-primary">UPDATE</button>
						    </div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>