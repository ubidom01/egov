<%--
  Class Name : EgovMainView.jsp
  Description : 메인화면
  Modification Information

      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성

    author   : 실행환경개발팀 JJY
    since    : 2011.08.31
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<meta http-equiv="content-language" content="ko">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>생활금융 플랫폼</title>
<link rel="icon" href="<c:url value='/'/>img/mdb-favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<link rel="stylesheet" href="<c:url value='/'/>css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/mdb.min.css">
<link rel="stylesheet" href="<c:url value='/'/>css/style.css"> 
<!-- link rel="stylesheet" href="<c:url value='/'/>css/default.css" --><!-- egovframework용 -->
</head>
<body>
<noscript><p>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</p></noscript>
  <!--Main Navigation-->
  <c:import url="/sym/mms/EgovMainMenuHead.do?flag=MAIN" />
  <!--//Main Navigation-->

  <!--Main layout-->
  <main class="mt-5 pt-5">
    <div class="container-flur">

      <!--Section: Jumbotron-->
      <!--  section class="card blue-gradient wow fadeIn" id="intro"-->
      <section class="card card-image" style="background-image: url(<c:url value='/'/>images/intro01.png);" id="intro">
      
        <!-- Content -->
        <div class="card-body text-black text-center py-5 px-5 my-5">
          <h1 class="mb-4">
            <strong>생활금융 상담 서비스 플랫폼</strong>
          </h1>
          <h5 class="mb-4">
            <strong class="mdb-color white-text">금융소외자 대상 맞춤형 생활금융 상담 서비스 제공 프로젝트</strong>
          </h5>
          <a target="_blank" href="#" class="btn btn-outline-black btn-lg">자가 진단 하기
            <i class="fas fa-graduation-cap ml-2"></i>
          </a>
        </div>
        <!--// Content -->
      </section>
      <!--//Section: Jumbotron-->
    </div>
    
    <div class="container">
      <!--Section: Cards-->
      <section class="pt-5">
        <!-- Heading & Description -->
        <div class="wow fadeIn">
          <!--Section heading-->
          <h2 class="h1 text-center mb-5">생활금융 상담 서비스 플랫폼 이란?</h2>
          <!--Section description-->
          <p class="text-center">생활 속 금융에 대해 답답함과 어려움을 느끼는 금융 소외자를 위한 적극적인 서비스</p>
          <p class="text-center mb-5 pb-5">금융데이터를 기반으로 인공 지능에 의한 개인 금융의 건강상태를 정확하게 진단하고 최적의 금융서비스를 추천 및 전문 상담원이 컨설팅을 지원하는 서비스</p>
        </div>
        <!-- Heading & Description -->

        <!--Grid row [왜 만들어 졌나]-->
        <div class="row wow fadeIn">
          <!--Grid column-->
          <div class="col-lg-5 col-xl-4 mb-4">
            <!--Featured image-->
            <div class="view overlay rounded z-depth-1">
              <img src="<c:url value='/'/>images/birdmoney.jpg" class="img-fluid" alt="">              
            </div>
          </div>         
          <!--//Grid column-->
          <!--Grid column-->
          <div class="col-lg-7 col-xl-7 ml-xl-4 mb-4">
            <h3 class="mb-3 font-weight-bold dark-grey-text">
              <strong>왜 만들어 졌나?</strong>
            </h3>
            <p class="grey-text">금융과 나눔은 금융 사회적 기업을 지향합니다.</p>
            <p>
              <strong>생활 속 금융에 대해 답답함과 어려움을 겪는 생활금융소비자에게 사전예방을 위한 금융상담을 제공하고 생활금융 소비자의 삶에 영향을 미치는 관행과 정책개선을 추진하고 금융 은퇴자의 사회적 참여와 재능 나눔을 위해 만들어 졌습니다.</strong>
            </p>
            <a href="javascript:goMenuPage('1000000');" target="_self" class="btn btn-primary btn-md">사업소개 보기
              <i class="fas fa-play ml-2"></i>
            </a>
          </div>
          <!--//Grid column-->
        </div>
        <!--//Grid row-->

        <hr class="mb-5">

        <!--Grid row [FAQ]-->
        <div class="row mt-3 wow fadeIn">
          <!--Grid column-->
          <div class="col-lg-5 col-xl-4 mb-4">
            <!--Featured image-->
            <div class="view overlay rounded z-depth-1">
              <img src="<c:url value='/'/>images/faq.jpg" class="img-fluid" alt="">
              <a href="<c:url value='/uss/olh/faq/FaqListInqire.do' />">
                <div class="mask rgba-white-slight"></div>
              </a>
            </div>
          </div>
          <!--//Grid column-->
          <!--Grid column-->
          <div class="col-lg-7 col-xl-7 ml-xl-4 mb-4">
            <h3 class="mb-3 font-weight-bold dark-grey-text">
              <strong>FAQ</strong>
            </h3>
            <p class="grey-text">자주 묻는 질문에 대한 답변입니다</p>
            <p>
              <c:forEach var="result" items="${faqList}" varStatus="status">
				<ul>
					<li class="q"><a href="<c:url value='/uss/olh/faq/FaqListInqire.do' />"><c:out value="${result.qestnSj}"/></a>
					</br><span class="badge badge-dark">답변</span> <c:out value="${fn:substring(fn:escapeXml(result.answerCn), 0, 70)}" /></li>
				</ul>
              </c:forEach>
			</p>
            <a href="<c:url value='/uss/olh/faq/FaqListInqire.do' />" class="btn btn-primary btn-md">FAQ더보기
              <i class="fas fa-play ml-2"></i>
            </a>		            
          </div>
          <!--//Grid column-->
        </div>
        <!--//Grid row-->

        <hr class="mb-5">

        <!--Grid row [공지사항]-->
        <div class="row wow fadeIn">
          <!--Grid column-->
          <div class="col-lg-5 col-xl-4 mb-4">
            <!--Featured image-->
            <div class="view overlay rounded z-depth-1">
              <img src="<c:url value='/'/>images/notice.png" class="img-fluid" alt="">
              <a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA'/>">
                <div class="mask rgba-white-slight"></div>
              </a>
            </div>
          </div>
          <!--//Grid column-->
          <!--Grid column-->
          <div class="col-lg-7 col-xl-7 ml-xl-4 mb-4">
            <h3 class="mb-3 font-weight-bold dark-grey-text">
              <strong>공지사항</strong>
            </h3>
            <p class="grey-text">공지사항을 확인해 주세요.</p>
            <ul>
              <c:forEach var="result" items="${notiList}" varStatus="status">
			  <li><a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA'/>">
				    <c:if test="${result.replyLc!=0}">
                      <c:forEach begin="0" end="${result.replyLc}" step="1">
                        &nbsp;
                      </c:forEach>
                      <img src="<c:url value='/images/reply_arrow.gif'/>" alt="reply arrow"/>
                    </c:if>
                    <c:choose>
                      <c:when test="${result.isExpired=='Y' || result.useAt == 'N'}">
                        <c:out value="${result.nttSj}" />
                      </c:when>
                      <c:otherwise>
                        <c:out value="${result.nttSj}" />
                      </c:otherwise>
                    </c:choose>
				    </a>				    
				  (<c:out value="${result.frstRegisterPnttm}"/>)
			  </li>  
			  </c:forEach>			  	
            </ul>
            <a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA'/>" class="btn btn-primary btn-md">공지사항 보기
              <i class="fas fa-play ml-2"></i>
            </a>
          </div>
          <!--//Grid column-->
        </div>
        <!--//Grid row-->
        
        <hr class="mb-5">

        <!--Grid row [민원신청]-->
        <div class="row wow fadeIn">
          <!--Grid column-->
          <div class="col-lg-5 col-xl-4 mb-4">
            <!--Featured image-->
            <div class="view overlay rounded z-depth-1">
              <img src="<c:url value='/'/>images/help.jpg" class="img-fluid" alt="">
              <a href="javascript:goMenuPage('2000000')">
                <div class="mask rgba-white-slight"></div>
              </a>
            </div>
          </div>
          <!--Grid column-->
          <!--//Grid column-->
          <div class="col-lg-7 col-xl-7 ml-xl-4 mb-4">
            <h3 class="mb-3 font-weight-bold dark-grey-text">
              <strong>민원신청</strong>
            </h3>
            <p class="grey-text">이용에 불편한 사항이 있다면 민원을 접수해 주세요.</p>
            <p>접수된 민원은 최대한 빠른 시간에 처리하겠습니다.</p>
            <a href="#" onclick="javascript:goMenuPage('2000000'); return false;" class="btn btn-primary btn-md">민원신청하기
              <i class="fas fa-play ml-2"></i>
            </a>
          </div>
          <!--//Grid column-->
        </div>
        <!--//Grid row-->
        
        <hr class="mb-5">        

        <!--Grid row [설문참여]-->
        <div class="row wow fadeIn">
          <!--Grid column-->
          <div class="col-lg-5 col-xl-4 mb-4">
            <!--Featured image-->
            <div class="view overlay rounded z-depth-1">
              <img src="<c:url value='/'/>images/poll.jpg" class="img-fluid" alt="">
              <a href="<c:url value='/uss/olp/qnn/EgovQustnrRespondInfoManageList.do'/>" >
                <div class="mask rgba-white-slight"></div>
              </a>
            </div>
          </div>
          <!--//Grid column-->
          <!--Grid column-->
          <div class="col-lg-7 col-xl-7 ml-xl-4 mb-4">
            <h3 class="mb-3 font-weight-bold dark-grey-text">
              <strong>설문참여</strong>
            </h3>           
            <div>
              <ul>				
				<c:forEach var="result" items="${qriList}" varStatus="status">
                <li>${result.qestnrSj} <a href="<c:url value='/uss/olp/qnn/EgovQustnrRespondInfoManageList.do'/>"><span class="badge badge-pill badge-danger">설문참여</span></a></li>
				</c:forEach>
              </ul>
			</div>
            <a href="<c:url value='/uss/olp/qnn/EgovQustnrRespondInfoManageList.do'/>" class="btn btn-primary btn-md">설문참여하기
              <i class="fas fa-play ml-2"></i>
            </a>
          </div>
          <!--//Grid column-->
        </div>
        <!--//Grid row-->
      </section>
      <!--//Section: Cards-->
    </div>
  </main>
  <!--Main layout-->

  <!-- footer 시작 -->
  <div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
  <!-- //footer 끝 -->
</body>
</html>
