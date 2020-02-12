<%--
  Class Name :
  Description :
  Modification Information

      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.03.19   이삼섭          최초 생성
     2011.08.31  JJY       경량환경 버전 생성

    author   : 공통서비스 개발팀 이삼섭
    since    : 2009.03.19
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="bankscan.com.cmm.service.EgovProperties" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="ImgUrl" value="/images/egovframework/cop/bbs/"/>

<!DOCTYPE html>
<html lang="kr">
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
<!-- link rel="stylesheet" href="<c:url value='/'/>css/default.css" --><!-- egovframework용 -->
<c:if test="${anonymous == 'true'}"><c:set var="prefix" value="/anonymous"/></c:if>
<script type="text/javascript" src="<c:url value='/js/EgovBBSMng.js' />" ></script>
<c:choose>
<c:when test="${preview == 'true'}">
<script type="text/javascript">
<!--
	function press(event) {
	}

	function fn_egov_addNotice() {
	}

	function fn_egov_select_noticeList(pageNo) {
	}

	function fn_egov_inqire_notice(nttId, bbsId) {
	}
//-->
</script>
</c:when>
<c:otherwise>
<script type="text/javascript">
<!--
	function press(event) {
		if (event.keyCode==13) {
			fn_egov_select_noticeList('1');
		}
	}

	function fn_egov_addNotice() {
		document.frm.action = "<c:url value='/cop/bbs${prefix}/addBoardArticle.do'/>";
		document.frm.submit();
	}

	function fn_egov_select_noticeList(pageNo) {
		document.frm.pageIndex.value = pageNo;
		document.frm.action = "<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>";
		document.frm.submit();
	}

	function fn_egov_inqire_notice(nttId, bbsId) {
		document.subForm.nttId.value = nttId;
		document.subForm.bbsId.value = bbsId;
		document.subForm.action = "<c:url value='/cop/bbs${prefix}/selectBoardArticle.do'/>";
		document.subForm.submit();
	}
//-->
</script>
</c:otherwise>
</c:choose>
<title><c:out value="${brdMstrVO.bbsNm}"/> 목록</title>
</head>
<body>
<noscript><p>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</p></noscript>
  <!--Main Navigation-->
  <header>
    <div id="header"><c:import url="/sym/mms/EgovMainMenuHead.do?flag=MAIN" /></div>
  </header>
  <!--Main Navigation-->

  <!--Main layout-->
  <main class="mt-5 pt-5">
     <div class="container">

      <!--Section: Jumbotron-->
      <!-- <section class="card wow fadeIn" style="background-image: url(<c:url value='/'/>images/gradient1.jpg);"> -->
      <section class="card wow fadeIn">

        <!-- Content -->
        <div class="card-body text-dark text-center py-3 px-5 my-1">
          <h1 class="pt-2"><strong><c:out value="${brdMstrVO.bbsNm}"/></strong></h1> <!-- 공지사항 -->
        </div>
        <!--// Content -->
      </section>
      <!--//Section: Jumbotron-->
     
      <!--Section: Cards-->
      <section class="text-center">
        <!--Grid row-->
        <div class="row mb-4 wow fadeIn">

            <div class="col-lg-12 col-md-12 mb-12"><!--contents start-->

			<form name="frm" action ="<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>" method="post">
			<input type="hidden" name="bbsId" value="<c:out value='${boardVO.bbsId}'/>" />
			<input type="hidden" name="nttId"  value="0" />
			<input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
			<input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
			<input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
			<input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>"/>
			<input type="submit" value="실행" onclick="fn_egov_select_noticeList('1'); return false;" id="invisible" class="invisible" />

			<!-- sub title start -->
            <!-- <div class="border-top border-dark"><h2><c:out value="${brdMstrVO.bbsNm}"/></h2></div> -->
            <!-- sub title end -->

            <!-- search area start-->
            <div class="search_service">
                <div class="row mb-4 wow fadeIn search_area">
	                <div class="col-lg-2 col-md-2 mb-2 right search_conditions" >
	                    <select class="browser-default custom-select " name="searchCnd">
                            <option value="0" <c:if test="${searchVO.searchCnd == '0'}">selected="selected"</c:if> >제목</option>
                            <option value="1" <c:if test="${searchVO.searchCnd == '1'}">selected="selected"</c:if> >내용</option>
                            <option value="2" <c:if test="${searchVO.searchCnd == '2'}">selected="selected"</c:if> >작성자</option>
                        </select>
                    </div>    
                    <div class="col-lg-4 col-md-4 mb-4 left" >    	                    
					    <input name="searchWrd" class="form-control" type="text" placeholder="검색어 입력" value='<c:out value="${searchVO.searchWrd}"/>' maxlength="35" onkeypress="press(event);" title="검색어 입력">
	                </div>
	                <div class="col-lg-2 col-md-2 mb-2 left search_buttons">
				        
				        <button class="btn btn-blue-grey btn-sm" onclick="fn_egov_select_noticeList('1'); return false;"><spring:message code='button.inquire' /></button>
				        
	                </div>
                </div>
            </div>
            <!-- search area end -->
            </form>

            <!-- search result start -->
            <div>
                <table class="table table-striped table-hover" summary="번호, 제목, 게시시작일, 게시종료일, 작성자, 작성일, 조회수   입니다">
                <colgroup>
                    <col >
                    <col >
                    <c:if test="${brdMstrVO.bbsAttrbCode == 'BBSA01'}">
                      <col >
                      <col >
                    </c:if>
                    <c:if test="${anonymous != 'true'}">
                      <col >
                    </c:if>
                    <col >
                    <col >
                </colgroup>

                <thead  class="blue-grey lighten-4">
                <tr>
                    <th scope="col">번호</th>
				    <th scope="col">제목</th>
				    <c:if test="${brdMstrVO.bbsAttrbCode == 'BBSA01'}">
				        <th scope="col">게시시작일</th>
				        <th scope="col">게시종료일</th>
				    </c:if>
				    <c:if test="${anonymous != 'true'}">
				        <th scope="col">작성자</th>
				    </c:if>
				    <th scope="col">작성일</th>
				    <th scope="col">조회수</th>
                </tr>
                </thead>

                <tbody>
				<c:if test="${fn:length(resultList) == 0}">
			        <tr>
			        <c:choose>
			            <c:when test="${brdMstrVO.bbsAttrbCode == 'BBSA01'}">
			                <td colspan="7" ><spring:message code="common.nodata.msg" /></td>
			            </c:when>
			            <c:otherwise>
			                <c:choose>
			                    <c:when test="${anonymous == 'true'}">
			                        <td colspan="4" ><spring:message code="common.nodata.msg" /></td>
			                    </c:when>
			                    <c:otherwise>
			                        <td colspan="5" ><spring:message code="common.nodata.msg" /></td>
			                    </c:otherwise>
			                </c:choose>
			            </c:otherwise>
			          </c:choose>
			          </tr>
			     </c:if>
                 <c:forEach var="result" items="${resultList}" varStatus="status">
			     <tr>
			        <td ><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
			        <td align="left">
			        <form name="subForm" id="subForm" method="post" action="<c:url value='/cop/bbs${prefix}/selectBoardArticle.do'/>">
			            <c:if test="${result.replyLc!=0}">
			                <c:forEach begin="0" end="${result.replyLc}" step="1">
			                    &nbsp;
			                </c:forEach>
			                <img src="<c:url value='/images/reply_arrow.gif'/>" alt="reply arrow">
			            </c:if>
			            <c:choose>
			                <c:when test="${result.isExpired=='Y' || result.useAt == 'N'}">
			                    <c:out value="${result.nttSj}" />
			                </c:when>
			                <c:otherwise>
			                        <input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
			                        <input type="hidden" name="nttId"  value="<c:out value="${result.nttId}"/>" />
			                        <input type="hidden" name="bbsTyCode" value="<c:out value='${brdMstrVO.bbsTyCode}'/>" />
			                        <input type="hidden" name="bbsAttrbCode" value="<c:out value='${brdMstrVO.bbsAttrbCode}'/>" />
			                        <input type="hidden" name="authFlag" value="<c:out value='${brdMstrVO.authFlag}'/>" />
			                        <input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
			                        <a href="#" onclick="document.getElementById('subForm').submit();"><c:out value="${result.nttSj}"/></a>
			                </c:otherwise>
			            </c:choose>
			            </form>
			        </td>
			        <c:if test="${brdMstrVO.bbsAttrbCode == 'BBSA01'}">
			            <td ><c:out value="${result.ntceBgnde}"/></td>
			            <td ><c:out value="${result.ntceEndde}"/></td>
			        </c:if>
			        <c:if test="${anonymous != 'true'}">
			            <td ><c:out value="${result.frstRegisterNm}"/></td>
			        </c:if>
			        <td ><c:out value="${result.frstRegisterPnttm}"/></td>
			        <td ><c:out value="${result.inqireCo}"/></td>
			     </tr>
			     </c:forEach>
                 </tbody>

                 </table>
                 
                 
 			<c:if test="${brdMstrVO.authFlag == 'Y'}">
 			    <button type="button" class="btn btn-indigo" id="bd_insert"><spring:message code="button.create" /></button>
			</c:if>
            </div>
            <!-- search result end -->

			<nav aria-label="Page navigation example">
			    <ul class="pagination pg-blue">		    
				<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_noticeList" />
				</ul>
			</nav>

           </div><!--contents end-->
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
  <script>
    $( "#bd_insert" ).click(function() {
    	window.location.href="<c:url value='/cop/bbs${prefix}/addBoardArticle.do?bbsId=${boardVO.bbsId}'/>";
	});
  </script>
</body>
</html>
