<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div>
    <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center">
			<c:if test="${vo.startPage gt vo.pageNumToShow}">
            	<li class="page-item prev">
            		<a class="page-link" aria-label="Previous" href="javascript:goList(${vo.startPage - 1})">
            			<i class="tf-icon bx bx-chevron-left"></i>
            		</a>
            	</li>	
			</c:if>
			<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
				<c:choose>
					<c:when test="${i.index eq vo.thisPage}">
			                <li class="page-item active">
			                	<a class="page-link" href="javascript:goList(${i.index})">
			                		${i.index}
		                		</a>
			                </li>
					</c:when>
					<c:otherwise>             
			                <li class="page-item">
			                	<a class="page-link" href="javascript:goList(${i.index})">
			                		${i.index}
			                	</a>
			                </li>
					</c:otherwise>
				</c:choose>
			</c:forEach>                
			<c:if test="${vo.endPage ne vo.totalPages}">                
	    		<li class="page-item next">
	    			<a href="javascript:goList(${vo.endPage + 1})" class="page-link" aria-label="Next">
                    	<i class="tf-icon bx bx-chevron-right"></i>
              		</a>
	    		</li>
			</c:if>
        </ul>
    </nav>
</div>



<!-- Basic Pagination -->
<!-- <div>
<nav aria-label="Page navigation">
  <ul class="pagination justify-content-center">
    <li class="page-item first">
      <a class="page-link" href="javascript:void(0);"
        ><i class="tf-icon bx bx-chevrons-left"></i
      ></a>
    </li>
    <li class="page-item prev">
      <a class="page-link" href="javascript:void(0);"
        ><i class="tf-icon bx bx-chevron-left"></i
      ></a>
    </li>
    <li class="page-item">
      <a class="page-link" href="javascript:void(0);">1</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="javascript:void(0);">2</a>
    </li>
    <li class="page-item active">
      <a class="page-link" href="javascript:void(0);">3</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="javascript:void(0);">4</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="javascript:void(0);">5</a>
    </li>
    <li class="page-item next">
      <a class="page-link" href="javascript:void(0);"
        ><i class="tf-icon bx bx-chevron-right"></i
      ></a>
    </li>
    <li class="page-item last">
      <a class="page-link" href="javascript:void(0);"
        ><i class="tf-icon bx bx-chevrons-right"></i
      ></a>
    </li>
  </ul>
</nav>
</div> -->
<!--/ Basic Pagination -->