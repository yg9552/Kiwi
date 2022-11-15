<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- modal start -->
<div class="modal fade" id="deleteTableModal" tabindex="-1" aria-labelledby="deleteTableModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="deleteTableModalLabel">테이블에서 삭제하시겠습니까?</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				테이블에서 내용이 사라집니다. 삭제하시겠습니까?
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
					<i class="fa-solid fa-x"></i> 취소
				</button>
				<button type="button" class="btn btn-danger" id="deleteBtn" name="deleteBtn">
					<i class="fa-solid fa-trash"></i> 삭제
				</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="ueleteTableModal" tabindex="-1" aria-labelledby="ueleteTableModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="ueleteTableModalLabel">테이블 리스트에서 삭제하시겠습니까?</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				테이블 리스트에서 보이지 않게 됩니다 삭제하시겠습니까?
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
					<i class="fa-solid fa-x"></i> 취소
				</button>
				<button type="button" class="btn btn-outline-danger" id="ueleteBtn" name="ueleteBtn">
					<i class="fa-solid fa-trash-can"></i> 삭제
				</button>
			</div>
		</div>
	</div>
</div>
<!-- modal end -->