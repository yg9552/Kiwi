<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">

<input type="hidden" name="shDelNy" value="<c:out value="${vo.shDelNy}"/>"/>
<input type="hidden" name="shDor" value="<c:out value="${vo.shDor}"/>"/>
<input type="hidden" name="shDelNy" value="<c:out value="${vo.shDelNy}"/>"/>

<%-- <input type="hidden" name="searchDos" value="<c:out value="${vo.searchDos}"/>"/>
<input type="hidden" name="searchDoe" value="<c:out value="${vo.searchDoe}"/>"/> --%>
<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>"/>
<input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>"/>

<input type="hidden" name="codeGroupSeq" value="<c:out value="${vo.codeGroupSeq}"/>"/>