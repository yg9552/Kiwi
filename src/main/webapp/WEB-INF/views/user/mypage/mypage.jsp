<%@page import="java.awt.font.ImageGraphicAttribute"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>


<!DOCTYPE HTML>
<html  class="no-js" lang="zxx">
<html>
<head>
	<meta charset="uTF-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="viewport" content = "width=device-width, initial-scale=1.0">
	<title>Nextrip</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="manifest" href="site.webmanifest">
	<link rel="shortcut icon" type="image/x-icon" href="/resources/template/gotrip-master/assets/img/logo/NextripLogo.png">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

	<%@include file="../../common/templateCSS.jsp"%>
	<%@include file="../../common/templateScript.jsp"%>
</head>
<style type="text/css">
	td{
		text-align:center;
		border:1px solid #0F52BA20;
	}
	th {
		background-color:#F7F8F9;
		height: 45px;
		text-align: center;
	}
	.table th {
		background-color: #f0f0f0;
		vertical-align: middle;
	}
	.caution > li {
		list-style-type:square ;
	}
	.wic.NB01 { background-image:url(/resources/image/sunset.jpg);}
</style>
<%@include file="../../common/userHeader.jsp"%>
<body>
    <div class="container">
    	<div class="col-3">
    		<%@include file="../../common/mypageSideMenu.jsp"%>
    	</div>
    	sessSeq: <c:out value="${sessSeq }"/><br>
		sessId: <c:out value="${sessId }"/><br>
		<form method="post">
			<button type="button" id="btnLogout">로그아웃</button>
		</form>
    	<div class="row">
	       	<div class="mb-3" id="list_box">
		    	<table class="table table-striped table-hover">
		    		<tr id="list_box_th">
		    			<th><input type="checkbox" class="form-check-input" name="ChkA" id="ChkA"></th>
						<th>고유번호</th>
						<th>닉네임</th>
						<th>생년월일</th>
						<th>성별</th>
						<th>이메일</th>
						<th>아이디</th>
						<th>작성댓글수</th>
						<th>댓글 좋아요수</th>
						<th>최종 접속일시</th>
						<th>가입날짜</th>
						<th>삭제여부</th>
		    		</tr>
		    		<c:choose>
		    			<c:when test="${fn:length(list) eq 0 }">
		    				<tr>
		    					<td colspan="12" style="text-align: center;">There is no data</td>
		    				</tr>
		    			</c:when>
		    			<c:otherwise>
		    				<c:forEach items="${list}" var="list" varStatus="status">
		    					<tr>
		    						<td></td>
		    						<td></td>
		    						<td><c:out value="${list.nickname }"></c:out></a></td>
		    						<td><c:out value="${list.dob }"></c:out></td>
		    						<td></td>
		    						<td><c:out value="${list.email }"></c:out></td>
		    						<td><c:out value="${list.id }"></c:out></td>
		    						<td>		<i class="NB01"></i></td>
		    						<td>		    	<i class="fa-solid fa-sun"></i></td>
		    						<td></td>
		    						<td><c:out value="${list.name }"></c:out></td>
		    						<td><c:out value="${list.delNy }"></c:out> </td>
		    					</tr>
		    				</c:forEach>
		    			</c:otherwise>
		    		</c:choose>
		    	</table>
		    </div>
		</div>
		<!-- <iframe width="560" height="315" src="https://www.youtube.com/embed/-JhoMGoAfFc?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> -->
		<%
		
		        // 파싱할 사이트를 적어준다(해당 사이트에 대한 태그를 다 긁어옴)
		
		 	Document doc2 = Jsoup.connect("https://www.weather.go.kr/w/weather/forecast/mid-term.do?stnId1=108").get();
		
		
		        //System.out.println(doc2.data());
				//out.println(doc2.body());		
		        //System.out.println(doc2.body());
		   		out.println(doc2.body().select("table").select(".table-zebra"));
		
		    	for(int i=1; i<24; i++) {
		        	if(i<10){
		        		//System.out.println('<i class="NB0'+i+'"></i>');
		        		//out.println('<i class="NB0'+i+'"></i>');	
		        	} else{
		        		//out.println('<i class="NB'+i+'"></i>');
		        	}
		        	
		        }
		
		        // list 속성안에 li 요소 데이터들을 긁어온다
		
		        Elements posts = doc2.body().getElementsByClass("table-zebra");
		
		        //System.out.println(doc2.getElementsByClass("list"));
		
		        Elements file = posts.select("tr");
		
		        //System.out.println(posts.select("tr"));
		        
		        
		
		        // li 요소 데이터들 반복적으로 츨력(li 요소 끝날때까지 즉, li개수만큼 반복문)
		
		        // select() : select()를 통해 더 구석구석 데이터에 접근
		
		        // 구성요소.text() : 구성요소 값을 반환(태그는 포함되지 않음)
		
		        // 구성요소.attr("속성이름") : 구성요소에 "속성이름"에 대한 값을 반환
		
		        for(Element e : file){
		
		        	//System.out.println("Title : " + e.select("td").text());
		        	System.out.println("Title : " + e.select("td:eq(0)").text());
		
		        	//System.out.println("Link : " + e.select(".tit a").attr("href"));
		
		                // 사이트 링크가 이상하게 올라가있는 관계로 문자열을 다듬어야 한다
		
		                // substring을 사용해 원하는 문자열만큼 자르고 앞에 주소부분을 붙여주면 끝
		
		               // System.out.println("Link : http://www.playdb.co.kr/magazine/" + e.select(".tit a").attr("href").substring(2, 70));
		             
		                
					System.out.println("Image : " + e.select("td:eq(1) .wic").text());
		           	out.println("<p>"+ e.select("td:eq(1) .wic").text() +"</p>");
		           	out.println("<p>"+ e.select("td:eq(1)")+"</p>");
		        	//System.out.println("Image : " + e.select(".thumb img").attr("src"));
		
		        	System.out.println("강수확률 : " + e.select("td:eq(1) span").text());
		
		        	System.out.println();
		
		        }
		
		%>
	</div>
    
        <script type="text/javascript">
        	var goUrlMain = "/nextrip/login";
        
	        $("#btnLogout").on("click", function(){
	        	$.ajax({
	    			async: true 
	    			,cache: false
	    			,type: "post"
	    			/* ,dataType:"json" */
	    			,url: "/nextrip/logoutProc"
	    			/* ,data : $("#formLogin").serialize() */
	    			,success: function(response) {
	    				if(response.rt == "success") {
	    						$(location).attr("href",goUrlMain);
	    				} else {}
	    			}
	    			,error : function(jqXHR, textStatus, errorThrown){
	    				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
	    			}
	    		});
	    	});
        </script>
        <script type="text/javascript">
        //alert(document.getElementsByClassName('NB01').length);
        for(var i = 0; i<document.getElementsByClassName('NB01').length;i++){
        	document.getElementsByClassName('NB01')[i].classList.add('fa-solid','fa-sun');
        	document.getElementsByClassName('NB01')[i].classList.remove('NB01');
        	
        }
        //document.getElementsByClassName("NB01").classList.replace("NB01", "fa-solid fa-sun");
        
        </script>
        
</body>
</html>
