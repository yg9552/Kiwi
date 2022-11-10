<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div style="height: 40px"></div>
<div style="float: left;">
	<button type="button" class="btn btn-danger" name="deleteTable" id="deleteTable" data-bs-toggle="modal" data-bs-target="#deleteTableModal">
		<i class="fa-solid fa-trash"></i> 삭제
	</button>
	<button type="button" class="btn btn-outline-danger" name="ueleteTable" id="ueleteTable" data-bs-toggle="modal" data-bs-target="#ueleteTableModal">
		<i class="fa-regular fa-trash-can"></i> 삭제
	</button>
</div>
<div style="float: right;">
	<button type="button" class="btn btn-success" id="excelBtn" name="excelBtn">
		<i class="fa-solid fa-file-excel"></i> 액셀
	</button>
	<button class="btn btn-primary" type="button" id="regBtn" name="regBtn">
		<i class="fa-solid fa-square-plus"></i> 추가
	</button>
</div>