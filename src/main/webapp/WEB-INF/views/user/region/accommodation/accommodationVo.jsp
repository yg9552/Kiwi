<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">

<input type="hidden" name="shDelNy" value="<c:out value="${vo.shDelNy}"/>"/>
<%-- 
<input type="hidden" name="shOptionDate" value="<c:out value="${vo.shOptionDate}"/>"/>
<input type="hidden" name="shDateStart" value="<c:out value="${vo.shDateStart}"/>"/>
<input type="hidden" name="shDateEnd" value="<c:out value="${vo.shDateEnd}"/>"/>

<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>"/>
<input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>"/>
 --%>

<input type="hidden" name="nxAccommodationSeq" value="<c:out value="${vo.nxAccommodationSeq}"/>">		<!-- #-> -->
<input type="hidden" name="memberSeq" value="<c:out value="${sessSeq}"/>">		<!-- #-> -->
<input type="hidden" name="nxPurchaseHistorySeq" value="<c:out value="${vo.nxPurchaseHistorySeq}"/>">		<!-- #-> -->
<input type="hidden" name="replaceCode" value="<c:out value="${vo.region}"/>">		<!-- #-> -->



