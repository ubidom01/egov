<%
/**
 * @Class Name : EgovMtgPlaceDetail.java
 * @Description : EgovMtgPlaceDetail.jsp
 * @Modification Information 
 * @
 * @  수정일                    수정자                수정내용
 * @ ---------     --------    ---------------------------
 * @ 2010.06.29    이      용                최초 생성
 * @ 2018.08.20    최 두 영           퍼블리싱 점검/비품정보 기능제거
 * @ 2018.09.11    최 두  영          다국어처리 적용
 *  @author 이      용
 *  @since 2010.06.29
 *  @version 1.0
 *  @see
 *  
 *  Copyright (C) 2009 by MOPAS  All right reserved.
 */
%>

<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>

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

<title><spring:message code="comUssIonMtg.mtgPlaceDetail.title" /></title><!-- 회의실 상세 -->

<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="mtgPlaceManage" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javaScript" language="javascript">
<!--
	/*설명 : 회의실 목록 조회 */
	function fncSelectMtgPlaceManageList(){
		var varFrom = document.getElementById("mtgPlaceManage");
		varFrom.action = "<c:url value='/uss/ion/mtg/selectMtgPlaceManageList.do'/>";
		varFrom.submit();
	}
	
	/*설명 : 회의실 수정조회 */
	function fncSelectMtgPlaceManage() {
		var varFrom = document.getElementById("mtgPlaceManage");
		varFrom.cmd.value  = "update";
		varFrom.action = "<c:url value='/uss/ion/mtg/selectMtgPlaceManage.do'/>";
		varFrom.submit();   
	}
	
	/*설명 : 회의실 삭제 */
	function fncDeleteMtgPlace() {
	    var varFrom = document.getElementById("mtgPlaceManage");
	    varFrom.action = "<c:url value='/uss/ion/mtg/deleteMtgPlaceManage.do'/>";
	    if(confirm("삭제 하시겠습니까?")){
	        varFrom.submit();
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

<div id="border" style="width:730px">
<table border="0">
  <tr>
    <td width="700">

<!-- ********** 여기서 부터 본문 내용 *************** -->
<form:form commandName="mtgPlaceManage" name="mtgPlaceManage" method="post" >
<div style="visibility:hidden;display:none;"><input name="iptSubmit" type="submit" value="전송" title="전송"></div>
<input type="hidden" name="cmd" >
<!-- 검색조건 유지 -->
<input type="hidden" name="searchCondition" value="<c:out value='${mtgPlaceManageVO.searchCondition}'/>" >
<input type="hidden" name="searchKeyword"   value="<c:out value='${mtgPlaceManageVO.searchKeyword}'/>" >
<input type="hidden" name="pageIndex"       value="<c:out value='${mtgPlaceManageVO.pageIndex}'/>" >
<input type="hidden" name="mtgPlaceId"      value="<c:out value='${mtgPlaceManage.mtgPlaceId}'/>">

<div class="wTableFrm">
	<!-- 타이틀 -->
	<h2><spring:message code="comUssIonMtg.mtgPlaceDetail.title" /></h2><!-- 회의실 상세 -->

	<!-- 등록폼 -->
	<table class="wTable mb10">
		<colgroup>
			<col style="width:25%" />
			<col style="width:34%" />
			<col style="width:16%" />
			<col style="" />
		</colgroup>
		<tr>
			<th><spring:message code="comUssIonMtg.mtgPlaceManageList.mtgPlaceNm" /><span class="pilsu">*</span></th><!-- 회의실 명 -->
			<td class="left" colspan="3">
			    <c:out value='${mtgPlaceManage.mtgPlaceNm}'/>
			</td>
		</tr>
		<tr>
			<th><spring:message code="comUssIonMtg.mtgPlaceManageList.capacity" /><span class="pilsu">*</span></th><!-- 수용인원 -->
			<td class="left">
			    <c:out value='${mtgPlaceManage.aceptncPosblNmpr}'/> <spring:message code="comUssIonMtg.mtgPlaceManageList.persons" />
			</td>
			<th><spring:message code="comUssIonMtg.mtgPlaceManageList.time" /> <span class="pilsu">*</span></th><!-- 개방시간 -->
			<td class="left">
				<c:out value='${mtgPlaceManage.opnBeginTm}'/> ~ <c:out value='${mtgPlaceManage.opnEndTm}'/>
			</td>
		</tr>
		<tr>
			<th><spring:message code="comUssIonMtg.mtgPlaceManageList.location" /><span class="pilsu">*</span></th>
			<td class="left" colspan="3">
			    <c:out value='${mtgPlaceManage.mtgPlaceTemp3}'/> <c:out value='${mtgPlaceManage.lcDetail}'/>
			</td>
		</tr>
		
		<!--  첨부파일 테이블 레이아웃 설정 Start.. -->
		<c:if test="${!empty mtgPlaceManage.atchFileId}">
		<tr>
			<th height="23" class="required_text" scope="row"><spring:message code="comUssIonMtg.mtgPlaceDetail.imgFileList" /><img src="<c:url value='/images/egovframework/com/cmm/icon/no_required.gif'/>" width="15" height="15" alt=""></th><!-- 이미지 파일목록 -->
			<td class="left" colspan="3">
			     <c:import charEncoding="utf-8" url="/cmm/fms/selectFileInfs.do" >
					<c:param name="param_atchFileId" value="${mtgPlaceManage.atchFileId}" />
				</c:import>				
			</td>
		</tr>
		</c:if>	
		<!--  첨부파일 테이블 레이아웃 End. /cmm/fms/selectFileInfs.do -->
	</table>
	
	<!-- 하단 버튼 -->
	<div class="btn">
		<span class="btn_s"><a href="<c:url value='/uss/ion/mtg/selectMtgPlaceManage.do'/>?searchCondition=1" onclick="fncSelectMtgPlaceManage(); return false;"><spring:message code="button.update" /></a></span>
		<span class="btn_s"><a href="<c:url value='/uss/ion/mtg/deleteMtgPlaceManage.do'/>?searchCondition=1" onclick="fncDeleteMtgPlace(); return false;"><spring:message code="button.delete" /></a></span>
		<span class="btn_s"><a href="<c:url value='/uss/ion/mtg/selectMtgPlaceManageList.do'/>?searchCondition=1" onclick="fncSelectMtgPlaceManageList(); return false;"><spring:message code="button.list" /></a></span>
	</div>
	<div style="clear:both;"></div>
</div>
</form:form>
</td>
</tr>
</table>            
</DIV>
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
