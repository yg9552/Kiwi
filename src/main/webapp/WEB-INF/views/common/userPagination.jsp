<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="blog_left_sidebar">
    <nav class="blog-pagination justify-content-center d-flex">
        <ul class="pagination">
			<c:if test="${vo.startPage gt vo.pageNumToShow}">
            	<li class="page-item">
            		<a class="page-link" aria-label="Previous" href="javascript:goList(${vo.startPage - 1})">
            			<i class="ti-angle-left"></i>
            		</a>
            	</li>	
			</c:if>
			<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
				<c:choose>
					<c:when test="${i.index eq vo.thisPage}">
			                <li class="page-item">
			                	<a class="page-link active" style="background-color: #FBF9FF;" href="javascript:goList(${i.index})">
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
	    		<li class="page-item">
	    			<a href="javascript:goList(${vo.endPage + 1})" class="page-link" aria-label="Next">
                    	<i class="ti-angle-right"></i>
              		</a>
	    		</li>
			</c:if>
        </ul>
    </nav>
</div>



<!-- <div class="blog_left_sidebar">
    <nav class="blog-pagination justify-content-center d-flex">
        <ul class="pagination">
            <li class="page-item">
                <a href="#" class="page-link" aria-label="Previous">
                    <i class="ti-angle-left"></i>
                </a>
            </li>
            <li class="page-item">
                <a href="#" class="page-link">1</a>
            </li>
            <li class="page-item active">
                <a href="#" class="page-link">2</a>
            </li>
            <li class="page-item">
                <a href="#" class="page-link" aria-label="Next">
                    <i class="ti-angle-right"></i>
                </a>
            </li>
        </ul>
    </nav>
</div> -->