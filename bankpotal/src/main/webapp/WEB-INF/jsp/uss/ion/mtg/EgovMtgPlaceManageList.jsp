<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%

/**
 * @Class Name : EgovMtgPlaceManageList.java
 * @Description : EgovMtgPlaceManageList jsp
 * @Modification Information
 * @
 * @  수정일           수정자                수정내용
 * @ ---------     --------    ---------------------------
 * @ 2010.06.29    이      용                최초 생성
 * @ 2018.07.26    최 두  영                퍼블리싱 에러 수정(조회기능) 
 * @ 2018.09.11    최 두  영                다국어처리 적용 
 *  @author 이      용
 *  @since 2010.06.29
 *  @version 1.0
 *  @see
 *  
 *  Copyright (C) 2009 by MOPAS  All right reserved.
 */
 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<meta http-equiv="content-language" content="ko">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<link rel="icon" href="<c:url value='/'/>img/mdb-favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<link rel="stylesheet" href="<c:url value='/'/>css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/mdb.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/style.css"> 

<title>회의실관리 목록</title>
<script type="text/javaScript" language="javascript" defer="defer">
<!--
/*설명 : 회의실  목록 조회 */
function fncSelectMtgPlaceManageList(pageNo){
    document.listForm.searchCondition.value = "1";
    document.listForm.pageIndex.value = pageNo;
    document.listForm.action = "<c:url value='/uss/ion/mtg/selectMtgPlaceManageList.do'/>";
    document.listForm.submit();
}

/*설명 : 회의실 상세조회 */
function fncSelectMtgPlaceManage(mtgPlaceId) {
    document.listForm.mtgPlaceId.value = mtgPlaceId;
    document.listForm.action = "<c:url value='/uss/ion/mtg/selectMtgPlaceManage.do'/>";
    document.listForm.submit();   
}
/*설명 : 회의실 신규등록 화면 호출 */
function fncInsertMtgPlace() {
	if(document.listForm.pageIndex.value == "") {
		document.listForm.pageIndex.value = 1;
	} 
    document.listForm.action = "<c:url value='/uss/ion/mtg/insertViewMtgPlace.do'/>";
    document.listForm.submit(); 
}
/*설명 : 회의실 목록 페이지 조회 */
function linkPage(pageNo){
    document.listForm.searchCondition.value = "1";
    document.listForm.pageIndex.value = pageNo;
    document.listForm.action = "<c:url value='/uss/ion/mtg/selectMtgPlaceManageList.do'/>";
    document.listForm.submit();
}
/*설명 : 회의실 목록 조회 enter키 처리 */
function press() {
    if (event.keyCode==13) {
    	fncSelectMtgPlaceManageList('1');
    }
}

-->
</script>
</head>

<body>
  <!--Main Navigation-->
  <header>
    <div id="header"><c:import url="/sym/mms/EgovMainMenuHead.do?flag=MAIN" /></div>
  </header>
  <!--Main Navigation-->

  <!--Main layout-->
  <main class="mt-5 pt-5">
     <div class="container">

      <!--Section: Jumbotron-->
      <section class="card wow fadeIn">

        <!-- Content -->
        <div class="card-body text-dark text-center py-3 px-5 my-1">
          <h1 class="pt-2"><strong>${pageTitle} <spring:message code="title.list" /></strong></h1> 
        </div>
        <!--// Content -->
      </section>
      <!--//Section: Jumbotron-->
     
      <!--Section: Cards-->
      <section class="text-center">
        <!--Grid row-->
        <div class="row mb-4 wow fadeIn">
        
            <div class="col-lg-12 col-md-12 mb-12"><!--contents start-->
            
<div class="board">
<form name="listForm" action="<c:url value='/uss/ion/mtg/selectMtgPlaceManageList.do'/>" method="post">    
	<h1><spring:message code="comUssIonMtg.mtgPlaceManageList.title"/></h1><!-- 회의실 관리목록  -->
	<div class="search_box" title="<spring:message code="common.searchCondition.msg" />"><!-- 이 레이아웃은 하단 정보를 대한 검색 정보로 구성되어 있습니다. -->
		<ul>
			<li>
				<label for=""><spring:message code="comUssIonMtg.mtgPlaceManageList.mtgPlaceNm" /></label><!-- 회의실명 -->
				<input class="s_input2 vat" name="searchKeyword" type="text" value='<c:out value="${mtgPlaceManageVO.searchKeyword }"/>' size="25" onkeypress="press();" title="<spring:message code="comUssIonMtg.mtgPlaceManageList.searchUser" />" />
				<input type="submit" class="s_btn"  value='<spring:message code="button.inquire" />'  title='<spring:message code="button.inquire" />'  onclick="fncSelectMtgPlaceManageList('1'); return false;" />
				<span class="btn_b"><a href="<c:url value='/uss/ion/mtg/insertViewMtgPlace.do'/>?searchCondition=1" onclick="fncInsertMtgPlace(); return false;" title='<spring:message code="button.create" />'><spring:message code="button.create" /></a></span>
			</li>
		</ul>
	</div>
	<input type="hidden" name="pageIndex" value="<c:if test="${empty mtgPlaceManageVO.pageIndex }">1</c:if><c:if test="${!empty mtgPlaceManageVO.pageIndex }"><c:out value='${mtgPlaceManageVO.pageIndex}'/></c:if>">
	</form>
	<table class="table">
		<caption><spring:message code="comUssIonMtg.mtgPlaceManageList.meetingManagementList" /></caption><!-- 회의실 목차 관리 -->
		<colgroup>
			<col style="width:7%" />
			<col style="width:20%" />
			<col style="width:25%" />
			<col style="width:10%" />
			<col style="" />
		</colgroup>
		<thead>
			<tr>
			   <th scope="col"><spring:message code="comUssIonMtg.mtgPlaceManageList.number" /></th><!-- 번호 -->
			   <th scope="col"><spring:message code="comUssIonMtg.mtgPlaceManageList.mtgPlaceNm" /></th><!-- 회의실명 -->
			   <th scope="col"><spring:message code="comUssIonMtg.mtgPlaceManageList.time" /></th><!-- 개방시간 -->
			   <th scope="col"><spring:message code="comUssIonMtg.mtgPlaceManageList.capacity" /></th><!-- 수용인원 -->
			   <th scope="col"><spring:message code="comUssIonMtg.mtgPlaceManageList.location" /></th><!-- 위치 -->
			</tr>
		</thead>
		<tbody>
			<c:forEach var="mtgPlaceManage" items="${mtgPlaceManageList}" varStatus="status">
			<tr>
				<td><c:out value="${(mtgPlaceManageVO.pageIndex - 1) * mtgPlaceManageVO.pageSize + status.count}"/></td>
				<td class="left">
					<form name="item" method="post" action="<c:url value='/uss/ion/mtg/selectMtgPlaceManage.do'/>">
						<input type="hidden" name="mtgPlaceId"  value="<c:out value="${mtgPlaceManage.mtgPlaceId}"/>">
						<span class="link"><input type="submit" value="<c:out value="${mtgPlaceManage.mtgPlaceNm}"/>" onclick="fncSelectMtgPlaceManage('<c:out value="${mtgPlaceManage.mtgPlaceId}"/>'); return false;" style="text-align : left;"></span>
					</form>
				</td>
				<td><c:out value="${mtgPlaceManage.opnBeginTm}"/> ~ <c:out value="${mtgPlaceManage.opnEndTm}"/></td>
				<td><c:out value="${mtgPlaceManage.aceptncPosblNmpr}"/><spring:message code="comUssIonMtg.mtgPlaceManageList.persons" /></td><!-- 명 -->
				<td><c:out value="${mtgPlaceManage.mtgPlaceTemp3}"/> <c:out value="${mtgPlaceManage.lcDetail}"/></td> 
			</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- paging navigation -->
	<div class="pagination">
		<ul>
			<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="linkPage"/>
		</ul>
	</div>
</div>

            </div><!-- contents end -->
        </div>
        <!--//Grid row-->
      </section>
      <!--//Section: Cards-->
    </div> <!--//container -->
  </main>
  <!--Main layout-->

  <!-- footer 시작 -->
  <div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
  <!-- //footer 끝 -->
</body>
</html>