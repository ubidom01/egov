<%--
  Class Name : EgovFaqListInqire.jsp
  Description : EgovFaqListInqire 화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.02.01   박정규          최초 생성
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스개발팀 박정규
    since    : 2009.02.01
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
<title>FAQ 목록 조회</title>
<script type="text/javaScript" language="javascript">

/*********************************************************
 * 초기화
 ******************************************************** */
function fn_egov_initl_faqlist(){

	// 첫 입력란에 포커스..
	document.FaqListForm.searchKeyword.focus();
	
}

/*********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function fn_egov_select_linkPage(pageNo){
	
	document.FaqListForm.pageIndex.value = pageNo;
	document.FaqListForm.action = "<c:url value='/uss/olh/faq/FaqListInqire.do'/>";
   	document.FaqListForm.submit();
   	
}

/*********************************************************
 * 조회 처리 함수
 ******************************************************** */
function fn_egov_search_faq(){

	document.FaqListForm.pageIndex.value = 1;
	document.FaqListForm.submit();
	
}

/*********************************************************
 * 등록 처리 함수
 ******************************************************** */
function fn_egov_regist_faq(){

	document.FaqListForm.action = "<c:url value='/uss/olh/faq/FaqCnRegistView.do'/>";
	document.FaqListForm.submit();	
	
}

/*********************************************************
 * 수정 처리 함수
 ******************************************************** */
function fn_egov_updt_faqlist(){

	document.FaqListForm.action = "<c:url value='/uss/olh/faq/FaqCnUpdtView.do'/>";
	document.FaqListForm.submit();	

}
/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fn_egov_inquire_faqlistdetail(faqId) {		

	// Faqid
	document.FaqListForm.faqId.value = faqId;	
  	document.FaqListForm.action = "<c:url value='/uss/olh/faq/FaqInqireCoUpdt.do'/>";  	
  	document.FaqListForm.submit();	
	   	   		
}


</script>
</head>
<body onLoad="fn_egov_initl_faqlist();">
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
          <h1 class="mb-4"><strong>정보마당</strong></h1>
          <p>
            <strong>사용자를 위한 각종 정보들을 제공하기 위한 공간</strong>
          </p>
        </div>
        <!--// Content -->
      </section>
      <!--//Section: Jumbotron-->
     
      <!--Section: Cards-->
      <section class="text-center">
        <!--Grid row-->
        <div class="row mb-4 wow fadeIn">

            <div class="col-lg-12 col-md-12 mb-12"><!--contents start-->

            <div id="content_field"><!--contents start-->
            
            <form name="FaqListForm" action="<c:url value='/uss/olh/faq/FaqListInqire.do'/>" method="post">
            
            <!-- sub title start -->
            <div><h2>FAQ목록</h2></div>
            <!-- sub title end -->
            
            <!-- search area start-->
            <div class="search_service">
                <div class="search_area">
                <div class="search_conditions" >
                    <select name="searchCondition" class="select" title="조회조건 선택">
			           <option selected value=''>--선택하세요--</option>
			           <option value="qestnSj"  <c:if test="${searchVO.searchCondition == 'qestnSj'}">selected="selected"</c:if> >질문제목</option>            
			       </select>
			       <input name="searchKeyword" type="text" size="35" value='<c:out value="${searchVO.searchKeyword}"/>'  maxlength="35" title="검색어 입력" > 
                   <button class="btn btn-blue-grey btn-sm" onclick="fn_egov_search_faq(); return false;"><spring:message code='button.inquire' /></button>
                   <a href="<c:url value='/uss/olh/faq/FaqCnRegistView.do'/>" onclick="fn_egov_regist_faq(); return false;"><spring:message code="button.create" /></a>
                </div> 
            </div>
            <!-- search area end -->
            <input name="faqId" type="hidden" value="">
			<input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
			</form>

            <!-- search result start -->
            <div class="search_result_div">
            
                <table class="table table-striped" summary="FAQ에 대한 목록을 제공합니다.">               
                <colgroup>
                    <col > 
                    <col >
                    <col >
                    <col >
                </colgroup>
                
                <thead>
                <tr>      
                    <th>순번</th>        
				    <th>질문제목</th>                   
				    <th>조회수</th>        
				    <th>등록일자</th>               
                </tr>
                </thead>
                
                <tbody>
                <c:if test="${fn:length(resultList) == 0}">
                <tr> 
                      <td class="lt_text3" colspan="4">
                          <spring:message code="common.nodata.msg" />
                      </td>
                </tr>                                                 
                </c:if>
                <c:forEach items="${resultList}" var="resultInfo" varStatus="status">
                <tr>
			        <td class="lt_text3"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>         
			        <td class="lt_text3"  align="left">
			            <a href="<c:url value='/uss/olh/faq/FaqInqireCoUpdt.do?faqId=${resultInfo.faqId}&amp;pageIndex=${searchVO.pageIndex}'/>" onclick="fn_egov_inquire_faqlistdetail('<c:url value='${resultInfo.faqId}'/>'); return false;">
			                <c:out value="${resultInfo.qestnSj}"/>
			            </a>
			        </td>       
			        <td class="lt_text3"><c:out value="${resultInfo.inqireCo}"/></td>       
			        <td class="lt_text3"><fmt:formatDate value="${resultInfo.lastUpdtPnttm}"  pattern="yyyy-MM-dd"/></td>         
			    </tr>   
                </c:forEach>
                </tbody>
                  
                </table>
            </div>
            <!-- search result end -->
			
			<nav aria-label="Page navigation example">
			    <ul class="pagination pg-blue">		    
				<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_linkPage" />
				</ul>
			</nav>

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
