<%--
  Class Name : EgovIncTopHeader.jsp
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

    <!-- BEGIN: Header-->
    <header class="page-topbar" id="header">
      <div class="navbar navbar-fixed"> 
        <nav class="navbar-main navbar-color nav-collapsible sideNav-lock navbar-dark gradient-45deg-indigo-purple no-shadow">
          <div class="nav-wrapper">
            <div class="header-search-wrapper hide-on-med-and-down"><i class="material-icons">search</i>
              <input class="header-search-input z-depth-2" type="text" name="Search" placeholder="검색어를 입력하세요">
            </div>
            <ul class="navbar-list right">
              <li class="hide-on-med-and-down"><a class="waves-effect waves-block waves-light toggle-fullscreen" href="javascript:void(0);"><i class="material-icons">settings_overscan</i></a></li>
              <li class="hide-on-large-only"><a class="waves-effect waves-block waves-light search-button" href="javascript:void(0);"><i class="material-icons">search</i></a></li>
              <li><a class="waves-effect waves-block waves-light profile-button" href="javascript:void(0);" data-target="profile-dropdown"><span class="avatar-status avatar-online"><img src="<c:url value='/'/>app-assets/images/avatar/avatar-7.png" alt="avatar"><i></i></span></a></li>
            </ul>
          </div>
          <nav class="display-none search-sm">
            <div class="nav-wrapper">
              <form>
                <div class="input-field">
                  <input class="search-box-sm" type="search" required="">
                  <label class="label-icon" for="search"><i class="material-icons search-sm-icon">search</i></label><i class="material-icons search-sm-close">close</i>
                </div>
              </form>
            </div>
          </nav>
        </nav>
      </div>
    </header>
    <!-- END: Header-->


