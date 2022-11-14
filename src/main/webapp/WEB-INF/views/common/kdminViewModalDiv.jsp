<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="modal fade" id="ueleteModal" tabindex="-1" aria-labelledby="ueleteModallabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="ueleteModalLabel">리스트에서 삭제하시겠습니까?</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        사용자 게시판에서 보이지 않게 됩니다 삭제하시겠습니까?
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
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="delectModallabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="delectModalLabel">데이터를 삭제하시겠습니까?</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        게시글 데이터가 완전히 삭제 됩니다 삭제하시겠습니까?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
        	<i class="fa-solid fa-x"></i> 취소
        </button>
        <button type="button" class="btn btn-outline-danger" id="deleteBtn" name="deleteBtn">
        	<i class="fa-solid fa-trash-can"></i> 삭제
        </button>
      </div>
    </div>
  </div>
</div>