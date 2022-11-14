<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div style="height: 20px;"></div>
<div class="col-lg-10 offset-1">
	<div style="float:left;">
		<button type="button" class="btn btn-secondary" id="listBtn" name="listBtn">
			<i class="fa-solid fa-bars"></i>
		</button>
	</div>
	<div style="float:right;">
		<button class="btn btn-danger" id="ueleteModalBtn" name="ueleteModalBtn" data-bs-toggle="modal" data-bs-target="#ueleteModal" type="button">
			<i class="fa-solid fa-x"></i>
		</button>
		<button class="btn btn-danger" id="deleteModalBtn" name="deleteModalBtn" data-bs-toggle="modal" data-bs-target="#deleteModal" type="button">
			<i class="fa-solid fa-trash-can"></i>
		</button>
		<button class="btn btn-success" id="updateBtn" name="updateBtn" type="button">
			<i class="fa-solid fa-bookmark"></i>
		</button>
	</div>
</div>