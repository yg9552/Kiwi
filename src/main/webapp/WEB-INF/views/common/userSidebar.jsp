<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="col-lg-3">
    <div class="blog_right_sidebar">
        <aside class="single_sidebar_widget post_category_widget">
            <h4 class="widget_title">여행 지역</h4>
             <input type="hidden" name="replaceCode">
             <ul class="list cat-list">
             	<c:set var="listregion" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
             	<c:forEach items="${listregion}" var="listregion" varStatus="statuslistregion">
             		<li><a href="javascript:goRegionView(<c:out value="${listregion.replaceCode }"/>)"><c:out value="${listregion.name}"/></a></li>
				</c:forEach>
				<li style="margin-bottom: 20px;"></li>
            </ul>
            <!-- <ul class="list cat-list">
                <li>
                    <a href="#" class="d-flex">
                        <p>Resaurant food</p>
                        <p>(37)</p>
                    </a>
                </li>
                <li>
                    <a href="#" class="d-flex">
                        <p>Travel news</p>
                        <p>(10)</p>
                    </a>
                </li>
                <li>
                    <a href="#" class="d-flex">
                        <p>Modern technology</p>
                        <p>(03)</p>
                    </a>
                </li>
                <li>
                    <a href="#" class="d-flex">
                        <p>Product</p>
                        <p>(11)</p>
                    </a>
                </li>
                <li>
                    <a href="#" class="d-flex">
                        <p>Inspiration</p>
                        <p>21</p>
                    </a>
                </li>
                <li>
                    <a href="#" class="d-flex">
                        <p>Health Care (21)</p>
                        <p>09</p>
                    </a>
                </li>
            </ul> -->
            <h4 class="widget_title"><a href="/nextrip/region/accommodation/accommodationList">숙박 상품</a></h4>
            <h4 class="widget_title"><a href="/post/postUserList">여행지 소개</a></h4>
        </aside>
    </div>
</div>