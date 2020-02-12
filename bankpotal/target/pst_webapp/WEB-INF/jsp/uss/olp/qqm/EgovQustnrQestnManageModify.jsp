<%--
  Class Name : EgovQustnrQestnManageModify.jsp
  Description : 설문문항 수정 페이지
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
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>

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

<title>설문문항 수정</title>

<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="qustnrQestnManageVO" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript">


/* ********************************************************
 * 초기화
 ******************************************************** */
function fn_egov_init_QustnrQestnManage(){
	
}
/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_egov_list_QustnrQestnManage(){

	var varFrom = document.getElementById("qustnrQestnManageVO");
	varFrom.action = "<c:url value='/uss/olp/qqm/EgovQustnrQestnManageList.do'/>";
	varFrom.submit();
}
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_egov_save_QustnrQestnManage(){
	var varFrom = document.getElementById("qustnrQestnManageVO");

	if(confirm("<spring:message code='common.save.msg' />")){
		varFrom.action =  "<c:url value='/uss/olp/qqm/EgovQustnrQestnManageModify.do'/>";

		if(!validateQustnrQestnManageVO(varFrom)){ 			
			return;
		}else{
			varFrom.submit();
		} 
	}
}
</script> 
</head>
<body onLoad="fn_egov_init_QustnrQestnManage();">
<!-- 자바스크립트 경고 태그  -->
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
            
			<!-- 상단타이틀 -->
			<form:form commandName="qustnrQestnManageVO"  action="/uss/olp/qqm/EgovQustnrQestnManageModify.do" method="post">
			
			<!-- sub title start -->
            <div><h2>설문문항 수정</h2></div>
            <!-- sub title end -->

            <!--detail area start -->
            <div class="search_service">
                <div class="search_top_table">
					<table class="table" summary="설문문항정보 수정정보를 제공한다.">
					<caption>설문문항정보 수정</caption>
					  <tr> 
					    <td class="td_width"><label for="qestnrTmplatId">설문지정보(제목)</label><img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/></td>
					    <td class="td_content">
					      ${resultList[0].qestnrSj}
					      <input name="qestnrTmplatId" id="qestnrTmplatId" type="hidden" value="${resultList[0].qestnrTmplatId}">
					      <input name="qestnrId" id="qestnrId" type="hidden" value="${resultList[0].qestnrId}">
					      <input name="searchMode" id="searchMode" type="hidden" value="${qustnrQestnManageVO.searchMode}">
					    </td>
					  </tr>
					  <tr> 
					    <td class="td_width"><label for="qestnSn">질문순번</label><img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/></td>
					    <td class="td_content">
					      <input name="qestnSn" type="text" size="50" value="1" maxlength="70" style="width:60px;" title="질문순번 입력">
					      <div><form:errors path="qestnSn" cssClass="error" /></div>   
					    </td>
					  </tr>
					  <tr> 
					    <td class="td_width"><label for="qestnTyCode">질문유형</label><img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/></td>
					    <td class="td_content">
							<select name="qestnTyCode" title="질문유형 선택">
							    <option value="">선택</option>
							    <c:forEach items="${cmmCode018}" var="comCodeList" varStatus="status">
							        <option value="${comCodeList.code}" <c:if test="${comCodeList.code eq resultList[0].qestnTyCode}">selected</c:if>>${comCodeList.codeNm}</option>
							    </c:forEach>  
							</select>
					     </td>
					  </tr>
					  <tr> 
					    <td class="td_width"><label for="qestnCn">질문 내용</label><img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/></td>
					    <td>
					      <textarea name="qestnCn" id="qestnCn" class="textarea"  cols="75" rows="10" title="질문내용 입력" style="width:99%;">${resultList[0].qestnCn}</textarea>
					     <div><form:errors path="qestnCn" cssClass="error"  /></div> 
					    </td>
					  </tr> 
					  <tr> 
					    <td class="td_width"><label for="mxmmChoiseCo">최대선택건수</label><img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/></td>
					    <td class="td_content">
					       <select name="mxmmChoiseCo" title="최대선택건수 선택">
					        <option value="1" <c:if test="${resultList[0].mxmmChoiseCo == '1'}">selected</c:if>>1</option>
					        <option value="2" <c:if test="${resultList[0].mxmmChoiseCo == '2'}">selected</c:if>>2</option>
					        <option value="3" <c:if test="${resultList[0].mxmmChoiseCo == '3'}">selected</c:if>>3</option>
					        <option value="4" <c:if test="${resultList[0].mxmmChoiseCo == '4'}">selected</c:if>>4</option>
					        <option value="5" <c:if test="${resultList[0].mxmmChoiseCo == '5'}">selected</c:if>>5</option>
					        <option value="6" <c:if test="${resultList[0].mxmmChoiseCo == '6'}">selected</c:if>>6</option>
					        <option value="7" <c:if test="${resultList[0].mxmmChoiseCo == '7'}">selected</c:if>>7</option>
					        <option value="8" <c:if test="${resultList[0].mxmmChoiseCo == '8'}">selected</c:if>>8</option>
					        <option value="9" <c:if test="${resultList[0].mxmmChoiseCo == '9'}">selected</c:if>>9</option>
					        <option value="10" <c:if test="${resultList[0].mxmmChoiseCo == '10'}">selected</c:if>>10</option>
					        </select>
					    </td>
					  </tr>
					</table>
                </div>
            </div>
            <!--detail area end -->
            
            <!-- 목록/저장버튼  시작-->
            <table border="0" cellspacing="0" cellpadding="0" align="center"><tr><td>
            <div class="buttons" align="center" style="margin-bottom:100px">
                <a href="<c:url value='/uss/olp/qqm/EgovQustnrQestnManageList.do'/>">목록</a>
                <input type="submit" value="저장" onclick="fn_egov_save_QustnrQestnManage(this.form); return false;"/>
            </div>
            </td></tr></table>
            <!-- 목록/저장버튼  끝-->

			<input name="qestnrQesitmId" type="hidden" value="${resultList[0].qestnrQesitmId}">
			<input name="cmd" type="hidden" value="<c:out value='save'/>">
			</form:form>

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