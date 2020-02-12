<%--
  Class Name : EgovQustnrQestnManageList.jsp
  Description : 설문문항 목록 페이지
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2008.03.09    장동한          최초 생성
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스 개발팀 장동한
    since    : 2009.03.19
   
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="ImgUrl" value="/images/egovframework/com/uss/olp/qqm/"/>
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

<title>설문문항 목록</title>

<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function linkPage(pageNo){
	document.listForm.pageIndex.value = pageNo;
	document.listForm.action = "<c:url value='/uss/olp/qqm/EgovQustnrQestnManageList.do'/>";
   	document.listForm.submit();
}
/* ********************************************************
 * 등록 처리 함수 
 ******************************************************** */
function fn_egov_regist_QustnrQestnManage(){
	var vFrom = document.listForm;
	vFrom.cmd.value = '';
	vFrom.action = "<c:url value='/uss/olp/qqm/EgovQustnrQestnManageRegist.do'/>";
	vFrom.submit();
}
/* ********************************************************
 * 수정 처리 함수
 ******************************************************** */
function fn_egov_modify_QustnrQestnManage(){
	location.href = "<c:url value='/uss/olp/qqm/EgovQustnrQestnManageModify.do'/>";
}
/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fn_egov_detail_QustnrQestnManage(qestnrQesitmId){
	var vFrom = document.listForm;
	vFrom.qestnrQesitmId.value = qestnrQesitmId;
	vFrom.action = "<c:url value='/uss/olp/qqm/EgovQustnrQestnManageDetail.do'/>";
	vFrom.submit();
}
/* ********************************************************
 * 문항통계
 ******************************************************** */
function fn_egov_statistics_QustnrQestnManage(qestnrQesitmId){
	var vFrom = document.listForm;
	vFrom.qestnrQesitmId.value = qestnrQesitmId;
	vFrom.action = "<c:url value='/uss/olp/qqm/EgovQustnrQestnManageStatistics.do'/>"; 
	vFrom.submit();
}

/* ********************************************************
 * 삭제 처리 함수
 ******************************************************** */
function fn_egov_delete_QustnrQestnManage(qestnrId){
	var vFrom = document.listForm;
	if(confirm("삭제 하시겠습니까?")){
		vFrom.qestnrId.value = qestnrId;
		vFrom.cmd.value = 'del';
		vFrom.action = "<c:url value='/uss/olp/qqm/EgovQustnrQestnManageList.do'/>";
		vFrom.submit();
	}else{
		vFrom.cmd.value = '';
	}
}
/* ********************************************************
 * 검색 함수
 ******************************************************** */
function fn_egov_search_QustnrQestnManage(){
	var vFrom = document.listForm;

	vFrom.action = "<c:url value='/uss/olp/qqm/EgovQustnrQestnManageList.do'/>";
	vFrom.submit();
	
}
</script>
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
      <section class="card wow fadeIn" style="background-image: url(<c:url value='/'/>images/gradient1.jpg);">

        <!-- Content -->
        <div class="card-body text-white text-center py-5 px-5 my-5">
          <h1 class="mb-4"><strong>서비스 관리</strong></h1>
          <p>
            <strong>설문의 문항을 관리합니다</strong>
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
            <form name="listForm" id="listForm" action="<c:url value='/uss/olp/qqm/EgovQustnrQestnManageList.do'/>" method="post">
            
            <!-- sub title start -->
            <div><h2>설문문항 목록</h2></div>
            <!-- sub title end -->

            <!-- search area start-->
            <div class="search_service">
                <div class="search_area">
                <div class="search_conditions" >
                    <select name="searchCondition" title="검색조건 선택">
			            <option value=''>--선택하세요--</option>
			            <option value='QESTN_CN' <c:if test="${searchVO.searchCondition == 'QESTN_CN'}">selected</c:if>>질문내용</option>
			            <option value='MXMM_CHOISE_CO' <c:if test="${searchVO.searchCondition == 'MXMM_CHOISE_CO'}">selected</c:if>>최대선택건수</option>
			        </select>
			        <input name="searchKeyword" type="text" size="30" value="${searchVO.searchKeyword}" maxlength="35" title="검색어 입력">
                </div>
                    <div class="search_buttons">
				      <input type="submit" value="<spring:message code="button.inquire" />" onclick="fn_egov_search_QustnrQestnManage(); return false;" />
				      <a href="<c:url value='/uss/olp/qqm/EgovQustnrQestnManageRegist.do'/>"><spring:message code="button.create" /></a>
                    </div>
                </div> 
            </div>
            <!-- search area end -->
            
			<c:if test="${qustnrQestnManageVO.searchMode == 'Y'}">
			<input name="qestnrTmplatId" id="qestnrTmplatId" type="hidden" value="${qustnrQestnManageVO.qestnrTmplatId}">
			<input name="qestnrId" id="qestnrId" type="hidden" value="${qustnrQestnManageVO.qestnrId}">
			<input name="searchMode" id="qestnrId" type="hidden" value="${qustnrQestnManageVO.searchMode}">
			</c:if>

			<input name="qestnrQesitmId" type="hidden" value="">
			<input name="cmd" type="hidden" value="">
			
			<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>">
			
			</form>
			
			<!-- search result start -->
            <div class="search_result_div">
            
                <table class="table" summary="이 표는 설문문항정보를 제공하며, 순번, 질문내용, 질문유형, 질문항목, 통계, 등록자, 등록일자 정보로 구성되어 있습니다 .">
                <caption>설문문항 목록</caption>
                
                <colgroup>
                    <col width="35" > 
                    <col >
                    <col width="70" >
                    <col width="70" >
                    <col width="50" >
                    <col width="70" >
                    <col width="70" >
                </colgroup>
                
                <thead>
                <tr>      
                    <th scope="col" class="title" width="35" nowrap="nowrap">순번</th>
				    <th scope="col" class="title" nowrap="nowrap">질문내용</th>
				    <th scope="col" class="title" width="70" nowrap="nowrap">질문유형</th>
				    <th scope="col" class="title" width="70" nowrap="nowrap">질문항목</th>
				    <th scope="col" class="title" width="50" nowrap="nowrap">통계</th>
				    <th scope="col" class="title" width="70" nowrap="nowrap">등록자</th>   
				    <th scope="col" class="title" width="70" nowrap="nowrap">등록일자</th>
                </tr>
                </thead>
                
                <tbody>
                <c:if test="${fn:length(resultList) == 0}">
                <tr> 
                      <td class="lt_text3" colspan="7">
                          <spring:message code="common.nodata.msg" />
                      </td>
                </tr>                                                 
                </c:if>
				<c:forEach items="${resultList}" var="resultInfo" varStatus="status">
				  <tr>
				    <td class="lt_text3" nowrap="nowrap">${(searchVO.pageIndex-1) * searchVO.pageSize + status.count}</td>
				    <td class="lt_text3L" nowrap="nowrap">
				        <form name="subForm" method="post" action="<c:url value='/uss/olp/qqm/EgovQustnrQestnManageDetail.do'/>">
				        <c:if test="${qustnrQestnManageVO.searchMode == 'Y'}">
				        <input name="qestnrTmplatId" type="hidden" value="${qustnrQestnManageVO.qestnrTmplatId}">
				        <input name="qestnrId" type="hidden" value="${qustnrQestnManageVO.qestnrId}">
				        <input name="searchMode" type="hidden" value="${qustnrQestnManageVO.searchMode}">
				        </c:if>
				        <input name="qestnrQesitmId" type="hidden" value="${resultInfo.qestnrQesitmId}">
				            <span class="link"><input type="submit" style="width:340px;border:solid 0px black;text-align:left;" value="<c:out value="${resultInfo.qestnCn}"/>" onclick="fn_egov_detail_QustnrQestnManage('${resultInfo.qestnrQesitmId}'); return false;"></span>
				        </form>     
				    </td>
				    <td class="lt_text3" nowrap="nowrap">
				    <c:if test="${resultInfo.qestnTyCode == '1'}">객관식</c:if>
				    <c:if test="${resultInfo.qestnTyCode == '2'}">주관식</c:if>
				    </td>
				    <td class="lt_text3" nowrap="nowrap">
				        <form name="subForm" method="post" action="<c:url value='/uss/olp/qim/EgovQustnrItemManageList.do'/>">
				        <input name="qestnrQesitmId" type="hidden" value="${resultInfo.qestnrQesitmId}">
				        <input name="searchMode" type="hidden" value="Y">
				        <span class="link"><input type="submit" style="width:40px;border:solid 0px black;text-align:left;" value="보기"></span>
				        </form>
				    </td>
				    <td class="lt_text3" nowrap="nowrap">
				    
				        <form name="subForm" method="post" action="<c:url value='/uss/olp/qqm/EgovQustnrQestnManageStatistics.do'/>">
				        <c:if test="${qustnrQestnManageVO.searchMode == 'Y'}">
				        <input name="qestnrTmplatId" type="hidden" value="${qustnrQestnManageVO.qestnrTmplatId}">
				        <input name="qestnrId" type="hidden" value="${qustnrQestnManageVO.qestnrId}">
				        <input name="searchMode" type="hidden" value="${qustnrQestnManageVO.searchMode}">
				        </c:if>
				        <input name="qestnrQesitmId" type="hidden" value="${resultInfo.qestnrQesitmId}">
				            <span class="link"><input type="submit" style="width:40px;border:solid 0px black;text-align:left;" value="보기" onclick="fn_egov_statistics_QustnrQestnManage('${resultInfo.qestnrQesitmId}'); return false;"></span>
				        </form>   
				    
				    </td>
				    <td class="lt_text3" nowrap="nowrap">${resultInfo.frstRegisterNm}</td>
				    <td class="lt_text3" nowrap="nowrap">${fn:substring(resultInfo.frstRegisterPnttm, 0, 10)}</td>
				  </tr>   
				</c:forEach>
                </tbody>
                  
                </table>
            </div>
            <!-- search result end -->
            
			<div id="paging_div">
				<ul class="paging_align">
					<ui:pagination paginationInfo = "${paginationInfo}"
							type="image"
							jsFunction="linkPage"
							/></ul>
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