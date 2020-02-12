<%--
  Class Name : EgovNoticeInqire.jsp
  Description : 게시물 조회 화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.03.23   이삼섭          최초 생성
     2009.06.26   한성곤          2단계 기능 추가 (댓글관리, 만족도조사)
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스 개발팀 이삼섭
    since    : 2009.03.23
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page import ="bankscan.com.cmm.LoginVO" %>
<%
   String loginName = "";
   LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO");
   if(loginVO != null){
	   loginName = loginVO.getName();
   }
%>

<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="content-language" content="ko">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>생활금융 플랫폼</title>

<link rel="icon" href="<c:url value='/'/>img/mdb-favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<link rel="stylesheet" href="<c:url value='/'/>css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/mdb.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/style.css"> 
<!-- link rel="stylesheet" href="<c:url value='/'/>css/default.css" --><!-- egovframework용 -->

<link href="<c:url value='${brdMstrVO.tmplatCours}' />" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<c:url value='/js/EgovBBSMng.js' />"></script>
<c:if test="${anonymous == 'true'}"><c:set var="prefix" value="/anonymous"/></c:if>
<script type="text/javascript">
	function onloading() {
		if ("<c:out value='${msg}'/>" != "") {
			alert("<c:out value='${msg}'/>");
		}
	}
	
	function fn_egov_select_noticeList(pageNo) {
		document.frm.pageIndex.value = pageNo; 
		document.frm.action = "<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>";
		document.frm.submit();	
	}
	
	function fn_egov_delete_notice() {
		if ("<c:out value='${anonymous}'/>" == "true" && document.frm.password.value == '') {
			alert('등록시 사용한 패스워드를 입력해 주세요.');
			document.frm.password.focus();
			return;
		}
		
		if (confirm('<spring:message code="common.delete.msg" />')) {
			document.frm.action = "<c:url value='/cop/bbs${prefix}/deleteBoardArticle.do'/>";
			document.frm.submit();
		}	
	}
	
	function fn_egov_moveUpdt_notice() {
		if ("<c:out value='${anonymous}'/>" == "true" && document.frm.password.value == '') {
			alert('등록시 사용한 패스워드를 입력해 주세요.');
			document.frm.password.focus();
			return;
		}

		document.frm.action = "<c:url value='/cop/bbs${prefix}/forUpdateBoardArticle.do'/>";
		document.frm.submit();			
	}
	
	function fn_egov_addReply() {
		document.frm.action = "<c:url value='/cop/bbs${prefix}/addReplyBoardArticle.do'/>";
		document.frm.submit();			
	}	
	</script>	

	<c:if test="${useComment == 'true'}">
	<c:import url="/cop/bbs/selectCommentList.do" charEncoding="utf-8">
		<c:param name="type" value="head" />
	</c:import>
	</c:if>
	<c:if test="${useSatisfaction == 'true'}">
	<c:import url="/cop/bbs/selectSatisfactionList.do" charEncoding="utf-8">
		<c:param name="type" value="head" />
	</c:import>
	</c:if>
	<c:if test="${useScrap == 'true'}">
	<script type="text/javascript">
		function fn_egov_addScrap() {
			document.frm.action = "<c:url value='/cop/bbs/addScrap.do'/>";
			document.frm.submit();			
		}
	</script>
	</c:if>
	<title><c:out value='${result.bbsNm}'/> - 글조회</title>
	
</script>
</head>
<body onload="onloading();">
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
          <h1 class="pt-2"><strong><c:out value='${result.bbsNm}'/></strong></h1> <!-- 글조회 -->
        </div>
        <!--// Content -->
      </section>
      <!--//Section: Jumbotron-->
     
      <!--Section: Cards-->
      <section class="text-center">
        <!--Grid row-->
        <div class="row mb-4 wow fadeIn">

            <div class="col-lg-12 col-md-12 mb-12"><!--contents start-->

			<form name="frm" method="post" action="<c:url value='/cop/bbs${prefix}/selectBoardList.do'/>">
			<input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>">
			<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" >
			<input type="hidden" name="nttId" value="<c:out value='${result.nttId}'/>" >
			<input type="hidden" name="parnts" value="<c:out value='${result.parnts}'/>" >
			<input type="hidden" name="sortOrdr" value="<c:out value='${result.sortOrdr}'/>" >
			<input type="hidden" name="replyLc" value="<c:out value='${result.replyLc}'/>" >
			<input type="hidden" name="nttSj" value="<c:out value='${result.nttSj}'/>" >
			<input type="submit" id="invisible" class="invisible"/>

            <!-- sub title start -->
            <!-- <div><h2><c:out value='${result.bbsNm}'/> - 글조회</h2></div> -->
            <!-- sub title end -->
            
            <!--detail area start -->
            <div class="search_service">
                <div class="search_top_table">
                    <table  class="table">
				      <tr> 
				        <td class="td_width grey lighten-4">제목</td>
				        <td class="td_content" colspan="5"><c:out value="${result.nttSj}" />
				        </td>
				      </tr>
				      <tr> 
				        <td class="td_width grey lighten-4">작성자</td>
				        <td class="td_width">
				            <c:out value="${result.frstRegisterNm}" />
				        </td>
				        <td class="td_width grey lighten-4">작성시간</td>
				        <td class="td_width"><c:out value="${result.frstRegisterPnttm}" />
				        </td>
			            <td class="td_width grey lighten-4">조회수</td>
				        <td class="td_content"><c:out value="${result.inqireCo}" />
				        </td>
				      </tr>    
				      <c:if test="${not empty result.atchFileId}">
				          <c:if test="${result.bbsAttrbCode == 'BBSA02'}">
				          <tr> 
				            <td class="td_width">첨부이미지</td>
				            <td class="td_content" colspan="5">
				                    <c:import url="/cmm/fms/selectImageFileInfs.do" charEncoding="utf-8">
				                        <c:param name="atchFileId" value="${result.atchFileId}" />
				                    </c:import>
				            </td>
				          </tr>
				          </c:if>
				          <tr> 
				            <td class="td_width">첨부파일 목록</td>
				            <td class="td_content" colspan="5">
				                <c:import url="/cmm/fms/selectFileInfs.do" charEncoding="utf-8">
				                    <c:param name="param_atchFileId" value="${result.atchFileId}" />
				                </c:import>
				            </td>
				          </tr>
				      </c:if>
				      <tr> 
				        <!-- <td class="td_width grey lighten-4">글내용</td> -->
				        <td class="td_width text-left" colspan="6">
				        <c:out value="${result.nttCn}" escapeXml="false" />
				        <!-- 
				        <textarea id="nttCn" name="nttCn" class="textarea" cols="95" rows="28" readonly="readonly" title="글내용"><c:out value="${result.nttCn}" escapeXml="false" /></textarea>
				         -->
				        </td>
				      </tr>
				     

				      <c:if test="${anonymous == 'true'}">
				      <tr> 
				        <td class="td_width"><label for="password"><spring:message code="cop.password" /></label></td>
				        <td class="td_content" colspan="5">
				            <input name="password" title="암호" type="password" size="20" value="" maxlength="20" >
				        </td>
				      </tr>
				      </c:if>   
				    </table>
                </div>
            </div>
            <!--detail area end -->
            
            <!-- 목록/저장버튼  시작-->
            <table border="0" cellspacing="0" cellpadding="0" align="center">
              <tr>
              <td>
              <div class="buttons" align="center" style="margin-bottom:100px">
                <c:if test="${result.frstRegisterId == sessionUniqId}">     
                  <a class="btn btn-primary btn-lg active" role="button" aria-pressed="true" href="#LINK" onclick="javascript:fn_egov_moveUpdt_notice(); return false;">수정</a> 
                  <a class="btn btn-primary btn-lg active" role="button" aria-pressed="true" href="#LINK" onclick="javascript:fn_egov_delete_notice(); return false;">삭제</a> 
                </c:if>    
                <c:if test="${result.replyPosblAt == 'Y'}">     
                  <a class="btn btn-primary btn-lg active" role="button" aria-pressed="true" href="#LINK" onclick="javascript:fn_egov_addReply(); return false;">답글작성</a> 
                </c:if>
                <a class="btn btn-primary btn-lg active" role="button" aria-pressed="true" href="#LINK" onclick="javascript:fn_egov_select_noticeList('1'); return false;">목록</a> 
              </div>
              </td>
              </tr>
            </table>
            <!-- 목록/저장버튼  끝-->
            
            </form>

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
