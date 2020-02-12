<%
/**
 * @Class Name : EgovMtgPlaceImageDetail.java
 * @Description : EgovMtgPlaceImageDetail jsp
 * @Modification Information
 * @
 * @  수정일             수정자                수정내용
 * @ ---------     --------    ---------------------------
 * @ 2010.08.02    이      용          최초 생성
 * @ 2018.08.20    최 두 영           퍼블리싱 점검/비품정보 기능제거
 * @ 2018.09.07    최 두 영           CSS변경
 * @ 2018.09.12    최 두 영           다국어처리
 *
 *  @author 이      용
 *  @since 2010.08.02
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

<title><spring:message code="comUssIonMtg.mtgPlaceResveRegist.image" /></title><!-- 회의실 이미지 -->
<style type="text/css">
	h1 {font-size:12px;}
	caption {visibility:hidden; font-size:0; height:0; margin:0; padding:0; line-height:0;}
</style>
<script type="text/javaScript" language="javascript">
<!--
/* ********************************************************
 * Window Close()  처리
 ******************************************************** */
 /*설명 : 중복체크 결과값 리턴및 화면 close */
 function fn_egov_image_close() {
		parent.window.close();
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


	<div class="wTableFrm" style="width:625px; ">
		<h2><spring:message code="comUssIonMtg.mtgPlaceResveRegist.image" /></h2><!-- 회의실 이미지 -->
	
		<form name="imageForm" method="post">
			<div style="visibility:hidden;display:none;"><input name="iptSubmit" type="submit" value="<spring:message code="comUssIonMtg.mtgPlaceResveDetail.submit" />" title="<spring:message code="comUssIonMtg.mtgPlaceResveDetail.submit" />"></div>
		</form>
	
			<!--  등록  폼 영역  -->
			<div style="width:600px; height:290px; text-align:center">
				<c:forEach var="fileVO" items="${fileList}" varStatus="status">
			 		  <img style="max-width:100%" src='<c:url value='/cmm/fms/getImage.do'/>?atchFileId=<c:out value="${fileVO.atchFileId}"/>&fileSn=<c:out value="${fileVO.fileSn}"/>'  width="500" />
				</c:forEach>
			</div>
			
			<!-- 첨부파일 테이블 레이아웃 End.-->
			<div style="padding-top:18px; text-align:center">
				<span class="btn_s"><a href="" onclick="javascript:fn_egov_image_close(); return false;"><spring:message code="comUssIonMtg.mtgPlaceResveDplactCeck.close" /></a></span>
			</div>
	<!-- ********** 여기까지 내용 *************** -->  
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