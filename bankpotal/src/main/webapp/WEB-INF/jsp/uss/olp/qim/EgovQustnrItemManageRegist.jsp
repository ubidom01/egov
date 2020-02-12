<%--
  Class Name : EgovQustnrItemManageRegist.jsp
  Description : 설문항목 등록 페이지
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
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<c:set var="ImgUrl" value="/images/egovframework/com/uss/olp/qim/"/>
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

<title>설문항목 등록</title>

<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="qustnrItemManageVO" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javascript" src="<c:url value='/js/showModalDialog.js'/>" ></script>
<script type="text/javaScript" language="javascript">
/* ********************************************************
 * 초기화
 ******************************************************** */
function fn_egov_init_QustnrItemManage(){

	document.getElementById("iemSn").value = "1";
	//document.getElementById("qestnrEndDe").value = "2008-01-30";
}
/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_egov_list_QustnrItemManage(){
	location.href = "<c:url value='/uss/olp/qim/EgovQustnrItemManageList.do' />";
}
/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_egov_save_QustnrItemManage(){
	var varFrom = document.getElementById("qustnrItemManageVO");

	if(confirm("<spring:message code='common.save.msg' />")){
		
		varFrom.action =  "<c:url value='/uss/olp/qim/EgovQustnrItemManageRegist.do' />";

		if(varFrom.qestnrCn.value == "" ||
				varFrom.qestnrTmplatId.value == "" ||
				varFrom.qestnrId.value == ""  
				){
			alert("설문지정보를  입력해주세요!");
			varFrom.qestnrCn.focus();
			return;
			
		}

		if(varFrom.qestnrQesitmCn.value == "" ||
				varFrom.qestnrQesitmId.value == "" 
				){
			alert("설문문항정보를  입력해주세요!");
			varFrom.qestnrQesitmCn.focus();
			return;
			
		}

		if(!validateQustnrItemManageVO(varFrom)){ 			
			return;
		}else{
			varFrom.submit();
		} 
		
	}
}
/* ********************************************************
 * 설문지정보 팝업창열기
 ******************************************************** */
 function fn_egov_QustnrManageListPopup_QustnrItemManage(){

 	window.showModalDialog("<c:url value='/uss/olp/qmc/EgovQustnrManageListPopup.do' />", self,"dialogWidth=800px;dialogHeight=500px;resizable=yes;center=yes");
 	
 }
 /* ********************************************************
  * 설문지문항정보 팝업창열기
  ******************************************************** */
  function fn_egov_QustnrQestnManageListPopup_QustnrItemManage(){

	var sParam = "";
	sParam = sParam + "searchCondition=QESTNR_ID";
	sParam = sParam + "&searchKeyword=" + document.getElementById("qestnrId").value;

  	window.showModalDialog("<c:url value='/uss/olp/qqm/EgovQustnrQestnManageListPopup.do' />?" + sParam, self,"dialogWidth=800px;dialogHeight=500px;resizable=yes;center=yes");
  	
  }
</script>
</head>
<body onLoad="fn_egov_init_QustnrItemManage()">
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
            <strong>사용자의 설문을 관리합니다</strong>
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
			<form:form commandName="qustnrItemManageVO"  action="" method="post">

            <!-- sub title start -->
            <div><h2>설문항목 등록</h2></div>
            <!-- sub title end -->

            <!--detail area start -->
            <div class="search_service">
                <div class="search_top_table">
					<table width="100%" summary="이 표는 설문항목 목록 정보를 제공하며, 설문정보, 설문문항정보, 항목순번, 항목내용, 기타답변여부 정보로 구성되어 있습니다 .">
					<tr> 
					<td class="td_width">설문정보<img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/></td>
					<td class="td_content">
					  <input name="qestnrCn" id="qestnrCn" type="text" size="73" value="" title="설문정보 입력" maxlength="4000" style="width:300px;">
					   <a href="#LINK" onClick="fn_egov_QustnrManageListPopup_QustnrItemManage()">   
					   <img src="<c:url value='/images/img_search.gif' />" align="middle" style="border:0px" alt="설문정보" title="설문정보">
					   </a>
					  <input name="qestnrId" id="qestnrId" type="hidden" value="">
					  <input name="qestnrTmplatId" id="qestnrTmplatId" type="hidden" value="">  
					</td>
					</tr>
					<tr> 
					<td class="td_width">설문문항정보<img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/></td>
					<td class="td_content">
					  <input name="qestnrQesitmCn" id="qestnrQesitmCn" type="text" title="설문문항정보 입력" size="73" value="" maxlength="4000" style="width:300px;">
					   <a href="#LINK" onClick="fn_egov_QustnrQestnManageListPopup_QustnrItemManage()">   
					  <img src="<c:url value='/images/img_search.gif' />" align="middle" alt="설문문항정보" title="설문문항정보">
					  </a>
					  <input name="qestnrQesitmId" id="qestnrQesitmId" type="hidden" value="">
					</td>
					</tr>
					<tr> 
					<td class="td_width">항목 순번<img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/></td>
					<td class="td_content">
					  <input name="iemSn" id="iemSn" type="text" size="5" title="항목 순번" value="" maxlength="5" style="width:100px;">
					  <form:errors path="iemSn" cssClass="error" />
					</td>
					</tr> 
					<tr> 
					<td class="td_width">항목 내용<img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/></td>
					<td class="td_content">
					  <textarea name="iemCn" class="textarea" title="항목 내용 입력" cols="100" rows="5" ></textarea>
					  <form:errors path="iemCn" cssClass="error" />
					</td>
					</tr> 
					<tr> 
					<td class="td_width">기타답변여부<img src="<c:url value='/'/>images/required.gif" alt="필수항목" title="필수항목" width="15" height="15"/></td>
					<td class="td_content">
					   <select name="etcAnswerAt" title="기타답변여부 선택">
					    <option value="N">N</option>
					    <option value="Y">Y</option>
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
                <a href="<c:url value='/uss/olp/qim/EgovQustnrItemManageList.do'/>">목록</a>
                <input type="submit" value="저장" onclick="fn_egov_save_QustnrItemManage(document.forms[0]); return false;"/>
            </div>
            </td></tr></table>
            <!-- 목록/저장버튼  끝-->

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