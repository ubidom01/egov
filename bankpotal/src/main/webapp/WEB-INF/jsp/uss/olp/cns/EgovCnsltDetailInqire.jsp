<%
 /**
  * @Class Name : EgovCnsltDetailInqure.jsp
  * @Description : 상담 상세조회 화면
  * @Modification Information
  * @
  * @  수정일             수정자                   수정내용
  * @ -------    --------    ---------------------------
  * @ 2009.02.01   박정규              최초 생성
  *   2016.06.18   장동한              표준프레임워크 v3.6 개선
  *
  *  @author 공통서비스팀
  *  @since 2009.02.01
  *  @version 1.0
  *  @see
  *
  */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%pageContext.setAttribute("crlf", "\r\n"); %>
<c:set var="pageTitle"><spring:message code="comUssOlpCns.title"/></c:set>
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

<title>${pageTitle} <spring:message code="title.detail" /></title>

<script type="text/javascript" src="<c:url value='/js/showModalDialog.js'/>" ></script>
<script type="text/javaScript" language="javascript">

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_egov_inqire_cnsltlist() {

	document.CnsltManageForm.action = "<c:url value='/uss/olp/cns/CnsltListInqire.do'/>";
	document.CnsltManageForm.submit();

}

/* ********************************************************
 * 수정처리화면
 ******************************************************** */
function fn_egov_updt_cnsltdtls(cnsltId){

	// Update하기 위한 키값을 셋팅
	document.CnsltManageForm.cnsltId.value = cnsltId;

	var url 	= "<c:url value='/uss/olp/cns/CnsltPasswordConfirmView.do'/>";
	var	status 	= "dialogWidth:300px;dialogHeight:160px;resizable:no;center:yes";


	// 작성비밀번호 확인 화면을 호출한다.
	var returnValue = window.showModalDialog(url, self, status);

	// 결과값을 받아. 결과를 Submit한다.
 	if	(returnValue)	{

 		document.CnsltManageForm.action = "<c:url value='/uss/olp/cns/CnsltPasswordConfirm.do'/>";
 		document.CnsltManageForm.submit();

 	}


}

function showModalDialogCallback(returnValue) {
	if	(returnValue)	{

 		document.CnsltManageForm.action = "<c:url value='/uss/olp/cns/CnsltPasswordConfirm.do'/>";
 		document.CnsltManageForm.submit();

 	}
}
/**********************************************************
 * 삭제처리화면
 ******************************************************** */
function fn_egov_delete_cnsltdtls(cnsltId){

	if	(confirm("<spring:message code="common.delete.msg" />"))	{

		// Delete하기 위한 키값을 셋팅
		document.CnsltManageForm.cnsltId.value = cnsltId;
		document.CnsltManageForm.action = "<c:url value='/uss/olp/cns/CnsltDtlsDelete.do'/>";
		document.CnsltManageForm.submit();

	}

}

/*********************************************************
 * 작성비밀번호.체크..
 ******************************************************** */
function fn_egov_passwordConfirm(){

	alert("<spring:message code="comUssOlpCns.validate.passwordConfirm" />"); <%-- 작성 비밀번호를 확인 바랍니다! --%>

}


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
          <h1 class="pt-2"><strong>${pageTitle} <spring:message code="title.detail" /></strong></h1> <!-- 공지사항 -->
        </div>
        <!--// Content -->
      </section>
      <!--//Section: Jumbotron-->
     
      <!--Section: Cards-->
      <section class="text-center">
        <!--Grid row-->
        <div class="row mb-4 wow fadeIn">
        
            <div class="col-lg-12 col-md-12 mb-12"><!--contents start-->
            

	<!-- 상세조회 -->
	<table class="table">
	<caption>${pageTitle} <spring:message code="title.detail" /></caption>
	<tbody >
		<!-- 작성자명 -->
		<tr>
			<td><spring:message code="comUssOlpCns.regist.wrterNm"/> <span class="pilsu">*</span></td>
			<td>
  				<c:out value="${result.wrterNm}"/>
			</td>
		</tr>
		<!-- 전화번호 -->
		<tr>
			<td><spring:message code="comUssOlpCns.regist.telNo"/> <span class="pilsu">*</span></td>
			<td>
		    	<c:if test="${result.areaNo != null}">
		      		<c:out value="${result.areaNo}"/>-<c:out value="${result.middleTelno}"/>-<c:out value="${result.endTelno}"/>
				</c:if>
			</td>
		</tr>
		<!-- 휴대폰번호 -->
		<tr>
			<td><spring:message code="comUssOlpCns.regist.mobileNo"/></td>
			<td>
		    	<c:if test="${result.firstMoblphonNo != null}">
		      		<c:out value="${result.firstMoblphonNo}"/>-<c:out value="${result.middleMbtlnum}"/>-<c:out value="${result.endMbtlnum}"/>
				</c:if>
			</td>
		</tr>
		<!-- 이메일 -->
		<tr>
			<td><spring:message code="comUssOlpCns.regist.email"/> </td>
			<td>
		    	<div style="float:left;"><c:out value="${result.emailAdres}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
		    	<div style="float:left;"><input name="emailAnswerAt" type="checkbox"  disabled <c:if test="${result.emailAnswerAt == 'Y'}">checked</c:if> title="<spring:message code="comUssOlpCns.regist.emailAt"/>"></div>
		    	<div style="float:left;">&nbsp;&nbsp;&nbsp;&nbsp;<spring:message code="comUssOlpCns.regist.emailAt"/></div>
		    	<div style="clear:both;"></div>
			</td>
		</tr>
		<!-- 작성일자 -->
		<tr>
			<td><spring:message code="comUssOlpCns.detail.regdate"/> <span class="pilsu">*</span></td>
			<td>
			<c:out value="${fn:substring(result.writngDe, 0, 10)}"/>
			</td>
		</tr>
		<!-- 조회수 -->
		<tr>
			<td><spring:message code="comUssOlpCns.detail.hit"/> <span class="pilsu">*</span></td>
			<td>
			<c:out value="${result.inqireCo}"/>
			</td>
		</tr>
		<!-- 처리상태 -->
		<tr>
			<td><spring:message code="comUssOlpCns.detail.qnaProcessSttusCodeNm"/> <span class="pilsu">*</span></td>
			<td>
			<c:out value="${result.qnaProcessSttusCodeNm}"/>
			</td>
		</tr>
		<!-- 상담제목 -->
		<tr>
			<td><spring:message code="comUssOlpCns.regist.cnsltSj"/> <span class="pilsu">*</span></td>
			<td>
 			<c:out value="${result.cnsltSj}"/>
			</td>
		</tr>
		<!-- 상담내용 -->
		<tr>
			<td><spring:message code="comUssOlpCns.regist.cnsltCn"/> <span class="pilsu">*</span></td>
			<td>
				<textarea name="cnsltCn"  class="form-control" id="exampleFormControlTextarea3" rows="15" readonly title="${title}"><c:out value="${result.cnsltCn}"/></textarea>
 				<%--c:out value="${fn:replace(result.cnsltCn , crlf , '<br/>')}" escapeXml="false" --%>
			</td>
		</tr>
		<!-- 파일첨부 -->
		<tr>
			<td><spring:message code="comUssOlpCns.regist.file"/> </td>
			<td>
				<c:import charEncoding="utf-8" url="/cmm/fms/selectFileInfs.do" >
					<c:param name="param_atchFileId" value="${result.atchFileId}" />
				</c:import>
			</td>
		</tr>

<!--답변내용이 있을경우 Display... -->
<c:if test="${result.qnaProcessSttusCode == '3'}">
		<!-- 답변내용 -->
		<tr>
			<td><spring:message code="comUssOlpCns.detail.managtCn"/> </td>
			<td>
				<textarea name="managtCn" class="form-control" id="exampleFormControlTextarea3" rows="15" readonly title="${title}"><c:out value="${result.managtCn}"/></textarea>
			</td>
		</tr>
		<!-- 담당부서 -->
		<tr>
			<td><spring:message code="comUssOlpCns.detail.managtDept"/> </td>
			<td>
				<c:out value="${result.orgnztNm}"/>
			</td>
		</tr>
		<!-- 답변일자 -->
		<tr>
			<td><spring:message code="comUssOlpCns.detail.managtDate"/> </td>
			<td>
		  		<c:if test="${result.managtDe != null}">
		  			<c:out value="${result.managtDe}"/>
		 		</c:if>
			</td>
		</tr>
		<!-- 답변자 -->
		<tr>
			<td><spring:message code="comUssOlpCns.detail.managter"/> </td>
			<td>
				<c:out value="${result.emplyrNm}"/>
			</td>
		</tr>
		<!-- 전화번호 -->
		<tr>
			<td><spring:message code="comUssOlpCns.detail.managtTel"/> </td>
			<td>
				<c:out value="${result.offmTelno}"/>	
			</td>
		</tr>
		<!-- 이메일 -->
		<tr>
			<td><spring:message code="comUssOlpCns.detail.managtMail"/> </td>
			<td>
				<c:out value="${result.aemailAdres}"/>
			</td>
		</tr>
</c:if>	
	</tbody >
	</table>
	<!-- 하단 버튼 -->
	<div class="btn">
	
		<form name="CnsltManageForm" action="<c:url value='/uss/olp/cns/CnsltPasswordConfirm.do'/>" method="post" onsubmit="fn_egov_updt_cnsltdtls('<c:out value="${result.cnsltId}"/>'); return false;" style="float:left;">
		<input type="submit" class="s_submit" value="<spring:message code="button.update" />" title="<spring:message code="title.update" /> <spring:message code="input.button" />" />
		<input name="cnsltId" type="hidden" value="">
		<input name="writngPassword" 	type="hidden" value="">
		<input name="passwordConfirmAt" type="hidden" value="">
		</form>
		
		<form name="formDelete" action="<c:url value='/uss/olp/cns/CnsltDtlsDelete.do'/>" method="post" style="float:left; margin:0 0 0 3px;">
			<input type="submit" class="s_submit" value="<spring:message code="button.delete" />" onclick="fn_egov_delete_cnsltdtls('<c:out value="${result.cnsltId}"/>'); return false;">
			<input name="cnsltId" type="hidden" value="${result.cnsltId}">
			<input name="cmd" type="hidden" value="<c:out value='del'/>"/>
		</form>

		<form name="formList" action="<c:url value='/uss/olp/cns/CnsltListInqire.do'/>" method="post" style="float:left; margin:0 0 0 3px;">
		  <input type="submit" class="s_submit" value="<spring:message code="button.list" />" onclick="fn_egov_search_OnlinePollManage(); return false;">
		</form>
		
	</div>
	<div style="clear:both;"></div>
	

<c:if test="${result.passwordConfirmAt == 'N,'}">
<div>
	<script>
		fn_egov_passwordConfirm();
	</script>
</div>
</c:if>



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
