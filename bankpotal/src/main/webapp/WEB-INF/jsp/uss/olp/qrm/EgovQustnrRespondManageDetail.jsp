<%--
  Class Name : EgovQustnrRespondManageDetail.jsp
  Description : 응답자정보 상세보기
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2008.03.09    장동한          최초 생성
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스 개발팀 장동한
    since    : 2009.03.09
   
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="ImgUrl" value="/images/egovframework/com/uss/olp/qrm/"/>
<%pageContext.setAttribute("crlf", "\r\n"); %>
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

<title>응답자정보 상세보기</title>

<script type="text/javaScript" language="javascript">


/* ********************************************************
 * 초기화
 ******************************************************** */
function fn_egov_init_QustnrRespondManage(){

}
/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_egov_list_QustnrRespondManage(){
	location.href = "<c:url value='/uss/olp/qrm/EgovQustnrRespondManageList.do'/>";
}
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_egov_modify_QustnrRespondManage(){
	var vFrom = document.QustnrRespondManageForm;
	vFrom.cmd.value = '';
	vFrom.action = "<c:url value='/uss/olp/qrm/EgovQustnrRespondManageModify.do'/>";;
	vFrom.submit();

}
/* ********************************************************
 * 삭제처리
 ******************************************************** */
function fn_egov_delete_QustnrRespondManage(){
	var vFrom = document.QustnrRespondManageForm;
	if(confirm("삭제 하시겠습니까?")){
		vFrom.cmd.value = 'del';
		vFrom.action = "<c:url value='/uss/olp/qrm/EgovQustnrRespondManageDetail.do'/>";
		vFrom.submit();
	}else{
		vFrom.cmd.value = '';
	}
}
</script>
</head>
<body onLoad="fn_egov_init_QustnrRespondManage();">
<!-- 자바스크립트 경고 태그  -->
<noscript class="noScriptTitle">자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>

<div class="container-for-admin">
  <!--Main Navigation-->
  <header>
    <div id="header"><c:import url="/sym/mms/EgovMainMenuHead.do?flag=MAIN" /></div>
  </header>
  <!--Main Navigation-->

  <!--Main layout-->
  <main class="mt-5 pt-5">
     <div class="container">

      <!--Section: Jumbotron-->
      <section class="card wow fadeIn" style="background-image: url(<c:url value='/'/>images/gradient1.jpg);">

        <!-- Content -->
        <div class="card-body text-white text-center py-5 px-5 my-5">
          <h1 class="mb-4"><strong>서비스 관리</strong></h1>
          <p>
            <strong>설문 응답자를 관리합니다</strong>
          </p>
        </div>
        <!--// Content -->
      </section>
      <!--//Section: Jumbotron-->
     
      <!--Section: Cards-->
      <section class="text-center">
        <!--Grid row-->
        <div class="row mb-4 wow fadeIn">
        

            <div id="content_field"><!--contents start-->
            
			<!-- 상단타이틀 -->
			<form name="QustnrRespondManageForm" action="<c:url value='/uss/olp/qim/EgovQustnrItemManageModify.do'/>" method="post">
			
			<!-- sub title start -->
            <div><h2>응답자정보 상세조회</h2></div>
            <!-- sub title end -->

            <!--detail area start -->
            <div class="search_service">
                <div class="search_top_table">
                    <!--<table summary="SUMMARY">
                        <tr> 
                            <td class="td_width">
                                
                            </td>
                            <td class="td_content">
                                <form:input path="mberId" id="mberId" size="20" cssClass="txaIpt" readonly="true" maxlength="20" />
                                <div><form:errors path="mberId" cssClass="error" /></div>
                                <form:hidden path="uniqId" />
                            </td>
                        </tr>
                    </table>-->
					<table class="table" summary="이 표는 응답자정보를 제공하며, 설문관리정보, 성별, 직업, 생년월일, 응답자명, 전화번호 정보로 구성되어 있습니다 .">
					  <tr> 
					    <td class="td_width">설문관리정보</td>
					    <td class="td_content">
					        <c:out value="${fn:replace(resultList[0].qestnrSj , crlf , '<br/>')}" escapeXml="false" />  
					    </td>
					  </tr>
					  <tr> 
					    <td class="td_width">성별</td>
					    <td class="td_content">
					    
							<c:forEach items="${comCode014}" var="comCodeList" varStatus="status">
							<c:if test="${comCodeList.code eq resultList[0].sexdstnCode}">  
							<c:out value="${fn:replace(comCodeList.codeNm , crlf , '<br/>')}" escapeXml="false" />
							</c:if>
							</c:forEach>
					
					    </td>
					  </tr>
					  <tr> 
					    <td class="td_width">직업</td>
					    <td class="td_content">
							<c:forEach items="${comCode034}" var="comCodeList" varStatus="status">
							<c:if test="${comCodeList.code eq resultList[0].occpTyCode}">   
							<c:out value="${fn:replace(comCodeList.codeNm , crlf , '<br/>')}" escapeXml="false" />
							</c:if>
							</c:forEach>
					    </td>
					  </tr>
					  <tr> 
					    <td class="td_width">생년월일</td>
					    <td class="td_content">
					     ${fn:substring(resultList[0].brth, 0, 4)}-
					     ${fn:substring(resultList[0].brth, 4, 6)}-
					     ${fn:substring(resultList[0].brth, 6, 8)}
					    </td>
					  </tr>
					  
					  <tr> 
					    <td class="td_width">응답자명</td>
					    <td class="td_content">
					        <c:out value="${fn:replace(resultList[0].respondNm , crlf , '<br/>')}" escapeXml="false" />  
					    </td>
					  </tr>
					  
					  <tr> 
					    <td class="td_width">전화번호</td>
					    <td class="td_content">
					        ${resultList[0].areaNo}-${resultList[0].middleTelno}-${resultList[0].endTelno}
					    </td>
					  </tr>
					</table>              
                </div>
            </div>
            <!--detail area end -->
            
            <input name="qestnrRespondId" type="hidden" value="<c:out value="${resultList[0].qestnrRespondId}" />">
            <input name="cmd" type="hidden" value="">
            <div style="visibility:hidden;display:none;"><input name="iptSubmit" type="submit" value="전송" title="전송"></div>
            </form>
                
            <!-- 목록/저장버튼  시작-->
            <table border="0" cellspacing="0" cellpadding="0" align="center"><tr>
            <td>
            <div class="buttons" align="center" style="margin-bottom:100px">
                <form name="formList" action="<c:url value='/uss/olp/qrm/EgovQustnrRespondManageList.do'/>" method="post">
			    <span class="button"><input type="submit" value="<spring:message code="button.list" />" onclick="fn_egov_list_QustnrRespondManage(); return false;"></span>
			    </form>
            </div>
            </td>
            <td>
            <div class="buttons" align="center" style="margin-bottom:100px">
                <form name="formDelete" action="<c:url value='/uss/olp/qrm/EgovQustnrRespondManageDetail.do'/>" method="post"> 
			    <span class="button"><input type="submit" value="<spring:message code="button.delete" />" onclick="fn_egov_delete_QustnrRespondManage(); return false;"></span>
			    <input name="qestnrRespondId" type="hidden" value="${resultList[0].qestnrRespondId}">
			    <input name="cmd" type="hidden" value="del">
			    </form>
            </div>
            </td>
            <td>
            <div class="buttons" align="center" style="margin-bottom:100px">
                <form name="formUpdt" action="<c:url value='/uss/olp/qrm/EgovQustnrRespondManageModify.do'/>" method="post"> 
			    <span class="button"><input type="submit" value="<spring:message code="button.update" />" onclick="fn_egov_modify_QustnrRespondManage(); return false;"></span>
			    <input name="qestnrRespondId" type="hidden" value="${resultList[0].qestnrRespondId}">
			    </form>
            </div>
            </td>
            </tr></table>
            <!-- 목록/저장버튼  끝-->

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