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
<html class="loading" lang="kr" data-textdirection="ltr">
  <!-- BEGIN: Head-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="금융 소외자를 위한 상담 플랫폼">
    <meta name="keywords" content="금융, 금융소외자, 상담, 상담플랫품, 금융서비스, 인공지능 서비스, 신뢰">
    <meta name="author" content="(주)금융과나눔">
    <title>금융 소외자를 위한 상담 플랫폼</title>
    <link rel="apple-touch-icon" href="<c:url value='/'/>app-assets/images/favicon/apple-touch-icon-152x152.png">
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value='/'/>app-assets/images/favicon/favicon-32x32.png">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- BEGIN: VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/'/>app-assets/vendors/vendors.min.css">
    <!-- END: VENDOR CSS-->
    <!-- BEGIN: Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/'/>app-assets/css/themes/vertical-modern-menu-template/materialize.css">
    <link rel="stylesheet" type="text/css" href="<c:url value='/'/>app-assets/css/themes/vertical-modern-menu-template/style.css">
    <link rel="stylesheet" type="text/css" href="<c:url value='/'/>app-assets/css/pages/cards-basic.css">
    <!-- END: Page Level CSS-->
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/'/>app-assets/css/custom/custom.css">
    <!-- END: Custom CSS-->
  </head>
  <!-- END: Head-->

  <body class="vertical-layout vertical-menu-collapsible page-header-dark vertical-modern-menu 2-columns  " data-open="click" data-menu="vertical-modern-menu" data-col="2-columns">

    <c:import url="/EgovPageLink.do?link=main/inc/EgovIncTopHeader" />
  
    <c:import url="/EgovPageLink.do?link=main/inc/EgovIncSideNav" />

    <!-- BEGIN: Page Main-->
    <div id="main">
      <div class="row">
        <div class="content-wrapper-before gradient-45deg-indigo-purple"></div>
        <div class="breadcrumbs-dark pb-0 pt-4" id="breadcrumbs-wrapper">
          <!-- Search for small screen-->
          <div class="container">
            <div class="row">
              <div class="col s10 m6 l6">
                <h5 class="breadcrumbs-title mt-0 mb-0">사업소개</h5>
                <ol class="breadcrumbs mb-0">
                  <li class="breadcrumb-item"><a href="index.html">Home</a>
                  </li>
                  <li class="breadcrumb-item active">사업소개
                  </li>
                </ol>
              </div>
              <div class="col s2 m6 l6"><a class="btn dropdown-settings waves-effect waves-light breadcrumbs-btn right" href="#!" data-target="dropdown1"><i class="material-icons hide-on-med-and-up">settings</i><span class="hide-on-small-onl">Settings</span><i class="material-icons right">arrow_drop_down</i></a>
                <ul class="dropdown-content" id="dropdown1" tabindex="0">
                  <li tabindex="0"><a class="grey-text text-darken-2" href="app-contacts.html">Contacts</a></li>
                  <li tabindex="0"><a class="grey-text text-darken-2" href="user-login.html">Logout</a></li>
                </ul>
              </div>
                            
            </div>
          </div>
        </div>
 
        <div class="col s12">
          <div class="container">
            <!-- BEGIN:Basic Card -->
            <div class="card">
                <div class="card-content" style="background-image: url(<c:url value='/'/>images/intro01.png);">
                  <h5 class="mb-2">
                    <strong class="mdb-color gray-text">금융소외자 대상 맞춤형 생활금융 상담 서비스 제공 프로젝트</strong>
                  </h5>
                  <a target="_blank" href="#" class="btn btn-outline-black btn-lg">자가 진단 하기
                    <i class="fas fa-graduation-cap ml-2"></i>
                  </a>
                </div>
            </div>            
            <!-- END:Basic Card -->                      
        
        <div class="divider mt-2"></div>

        <!--START:Image Card-->
        <div id="image-card" class="section">          
          <h4 class="header">생활금융 상담 서비스 플랫폼 이란?</h2>
          <p>생활 속 금융에 대해 답답함과 어려움을 느끼는 금융 소외자를 위한 적극적인 서비스</p>
          <p class="mb-3">금융데이터를 기반으로 인공 지능에 의한 개인 금융의 건강상태를 정확하게 진단하고 최적의 금융서비스를 추천 및 전문 상담원이 컨설팅을 지원하는 서비스</p>

          <!--BEGIN:[사업소개]-->
          <div class="row">
            <div class="col s12 m4 l4">
              <div class="card">
                <div class="card-image">
                  <img src="<c:url value='/'/>images/birdmoney.jpg" class="img-fluid" alt="">
                </div>
              </div>  
            </div>    
            <div class="col s12 m8 l8">
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
          </div> 
          <!--END:[사업소개]-->
             
          <div class="divider mt-2"></div>
          
          <!--BEGIN:[FAQ]-->      
          <div class="row">
            <div class="col s12 m4 l4">
              <div class="card">
                <div class="card-image">
                  <img src="<c:url value='/'/>images/faq.jpg" class="img-fluid" alt="">
                  <a href="<c:url value='/uss/olh/faq/FaqListInqire.do' />">
                    <div class="mask rgba-white-slight"></div>
                  </a>
                </div>
              </div>  
            </div>    
            <div class="col s12 m8 l8">
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
          </div> 
          <!--END:[FAQ]-->
          
          <div class="divider mt-2"></div>
          
          <!--BEGIN:[공지사항]-->      
          <div class="row">
            <div class="col s12 m4 l4">
              <div class="card">
                <div class="card-image">
                  <img src="<c:url value='/'/>images/notice.png" class="img-fluid" alt="">
                  <a href="<c:url value='/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA'/>">
                  <div class="mask rgba-white-slight"></div>
                  </a>
                </div>
              </div>  
            </div>    
            <div class="col s12 m8 l8">
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
          </div> 
          <!--END:[공지사항]--> 
                         
          <div class="divider mt-2"></div>
          
          <!--BEGIN:[민원신청]-->      
          <div class="row">
            <div class="col s12 m4 l4">
              <div class="card">
                <div class="card-image">
                  <img src="<c:url value='/'/>images/help.jpg" class="img-fluid" alt="">
                  <a href="javascript:goMenuPage('2000000')">
                    <div class="mask rgba-white-slight"></div>
                  </a>
                </div>
              </div>  
            </div>    
            <div class="col s12 m8 l8">
              <h3 class="mb-3 font-weight-bold dark-grey-text">
                <strong>민원신청</strong>
              </h3>
              <p class="grey-text">이용에 불편한 사항이 있다면 민원을 접수해 주세요.</p>
              <p>접수된 민원은 최대한 빠른 시간에 처리하겠습니다.</p>
              <a href="#" onclick="javascript:goMenuPage('2000000'); return false;" class="btn btn-primary btn-md">민원신청하기
                <i class="fas fa-play ml-2"></i>
              </a>
            </div>    
          </div>
          <!--END:[민원신청]--> 
 
          <div class="divider mt-2"></div>
          
          <!--BEGIN:[설문참여]-->      
          <div class="row">
            <div class="col s12 m4 l4">
              <div class="card">
                <div class="card-image">
                  <img src="<c:url value='/'/>images/poll.jpg" class="img-fluid" alt="">
                  <a href="<c:url value='/uss/olp/qnn/EgovQustnrRespondInfoManageList.do'/>" >
                    <div class="mask rgba-white-slight"></div>
                  </a>
                </div>
              </div>  
            </div>    
            <div class="col s12 m8 l8">
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
          </div> 
          <!--END:[설문참여]-->
          
        </div>  
        <!--END:Image Card-->   
        
          </div>
        </div>
            
      </div>
    </div>
    <!-- END: Page Main-->

  <!-- footer 시작 -->
  <div id="footer"><c:import url="/EgovPageLink.do?link=main/inc/EgovIncFooter" /></div>
  <!-- //footer 끝 -->
</body>
</html>
