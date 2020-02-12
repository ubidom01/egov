<%--
  Class Name : EgovIncHeader.jsp
  Description : 화면상단 Header(include)
  Modification Information

      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성

    author   : 실행환경개발팀 JJY
    since    : 2011.08.31
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import ="bankscan.com.cmm.LoginVO" %>
<%
   String loginName = "";
   LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO");
   if(loginVO != null){
	   loginName = loginVO.getName();
   }  
%>
    <!-- BEGIN: SideNav-->
    <aside class="sidenav-main nav-expanded nav-lock nav-collapsible sidenav-light sidenav-active-square">
      <div class="brand-sidebar">
        <h1 class="logo-wrapper"><a class="brand-logo darken-1" href="index.html" style="font-size: 1.3rem;"><img src="<c:url value='/'/>images/logo_top.png" alt=""/><span class="logo-text hide-on-med-and-down">금융상담플랫폼</span></a><a class="navbar-toggler" href="#"><i class="material-icons">radio_button_checked</i></a></h1>
      </div>
      <ul class="sidenav sidenav-collapsible leftside-navigation collapsible sidenav-fixed menu-shadow" id="slide-out" data-menu="menu-navigation" data-collapsible="menu-accordion">
        <li class="active bold"><a class="collapsible-header waves-effect waves-cyan " href="<c:url value='/'/>EgovPageLink.do?link=main/bank_menu/EgovAboutSite"><i class="material-icons">info</i><span class="menu-title" data-i18n="">사업소개</span></a>
          <div class="collapsible-body">
            <ul class="collapsible collapsible-sub" data-collapsible="accordion">
              <li class="active"><a class="collapsible-body collapsible-header waves-effect waves-cyan active" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>회사소개</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>약도</span></a>
              </li>
            </ul>
          </div>
        </li>
        <li class="bold"><a class="collapsible-header waves-effect waves-cyan" href="#"><i class="material-icons">volume_up</i><span class="menu-title" data-i18n="">민원광장</span></a>
          <div class="collapsible-body">
            <ul class="collapsible collapsible-sub" data-collapsible="accordion">
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>EgovPageLink.do?link=main/bank_menu/EgovServiceManage" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>민원신청내역</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>EgovPageLink.do?link=main/bank_menu/EgovServiceResult" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>민원처리내역</span></a>
              </li>
            </ul>
          </div>
        </li>
        <li class="bold"><a class="collapsible-header waves-effect waves-cyan " href="#"><i class="material-icons">book</i><span class="menu-title" data-i18n="">알림마당</a>
          <div class="collapsible-body">
            <ul class="collapsible collapsible-sub" data-collapsible="accordion">
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>cop/bbs/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>공지사항</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>uss/olh/faq/FaqListInqire.do" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>FAQ</span></a>
              </li>
            </ul>
          </div>
        </li>
        <li class="bold"><a class="collapsible-header waves-effect waves-cyan " href="#"><i class="material-icons">check_circle</i><span class="menu-title" data-i18n="">정보마당</a>
          <div class="collapsible-body">
            <ul class="collapsible collapsible-sub" data-collapsible="accordion">
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>cop/bbs/selectBoardList.do?bbsId=BBSMSTR_BBBBBBBBBBBB" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>게시판</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>uss/olh/qna/QnaListInqire.do" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>질의응답</span></a>
              </li>
            </ul>
          </div>
        </li>
        <li class="bold"><a class="collapsible-header waves-effect waves-cyan " href="#"><i class="material-icons">call</i><span class="menu-title" data-i18n="">상담관리</a>
          <div class="collapsible-body">
            <ul class="collapsible collapsible-sub" data-collapsible="accordion">
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>uss/olp/cns/CnsltListInqire.do" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>상담신청</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>uss/olp/cnm/CnsltAnswerListInqire.do" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>상담내역</span></a>
              </li>
            </ul>
          </div>
        </li>
        <li class="bold"><a class="collapsible-header waves-effect waves-cyan " href="#"><i class="material-icons">dvr</i><span class="menu-title" data-i18n="">회의실관리</span></a>
          <div class="collapsible-body">
            <ul class="collapsible collapsible-sub" data-collapsible="accordion">
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>uss/ion/mtg/selectMtgPlaceManageList.do" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>회의실관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>uss/ion/mtg/selectMtgPlaceResveManageList.do" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>회의실예약관리</span></a>
              </li>
            </ul>
          </div>
        </li>
        <li class="bold"><a class="collapsible-header waves-effect waves-cyan " href="#"><i class="material-icons">sms</i><span class="menu-title" data-i18n="">설문관리</span></a>
          <div class="collapsible-body">
            <ul class="collapsible collapsible-sub" data-collapsible="accordion">
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>uss/olp/qri/EgovQustnrRespondInfoList.do" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>설문지관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>uss/olp/qtm/EgovQustnrTmplatManageList.do" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>설문템플릿</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>uss/olp/qqm/EgovQustnrQestnManageList.do" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>설문문항</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>uss/olp/qim/EgovQustnrItemManageList.do" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>설문항목</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="<c:url value='/'/>uss/olp/qrm/EgovQustnrRespondManageList.do" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>설문응담관리</span></a>
              </li>
            </ul>
          </div>
        </li>
        <li class="bold"><a class="collapsible-header waves-effect waves-cyan " href="#"><i class="material-icons">settings</i><span class="menu-title" data-i18n="">서비스관리</a>
          <div class="collapsible-body">
            <ul class="collapsible collapsible-sub" data-collapsible="accordion">
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>FAQ관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>QnA관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>QnA응답관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>게시판생성관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>게시판사용관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>공지사항관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>자유게시판관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>베너관리</span></a>
              </li>
            </ul>
          </div>
        </li>
        <li class="bold"><a class="collapsible-header waves-effect waves-cyan " href="#"><i class="material-icons">dashboard</i><span class="menu-title" data-i18n="">시스템관리</a>
          <div class="collapsible-body">
            <ul class="collapsible collapsible-sub" data-collapsible="accordion">
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>회원관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>이용약관관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>개인정보보호관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>권한관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>사용자그룹관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>사용자별권한관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>룰관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>공통코드관리</span></a>
              </li>
              <li><a class="collapsible-body collapsible-header waves-effect waves-cyan" href="#" data-i18n=""><i class="material-icons">radio_button_unchecked</i><span>공통세부코드관리</span></a>
              </li>
            </ul>
          </div>
        </li>

        <li class="bold"><a class="waves-effect waves-cyan " href="<c:url value='/'/>uat/uia/egovLoginUsr.do"><i class="material-icons">mail_outline</i><span class="menu-title" data-i18n="">로그인</span></a>
        </li>
      </ul>
      <div class="navigation-background"></div><a class="sidenav-trigger btn-sidenav-toggle btn-floating btn-medium waves-effect waves-light hide-on-large-only" href="#" data-target="slide-out"><i class="material-icons">menu</i></a>
    </aside>
    <!-- END: SideNav-->
