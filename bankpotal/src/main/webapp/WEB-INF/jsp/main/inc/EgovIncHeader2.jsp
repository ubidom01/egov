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
<!-- topmenu start -->
<script type="text/javascript">
    function getLastLink(menuNo){
        var tNode = new Array;
        for (var i = 0; i < document.getElementById("menuListForm").tmp_menuNm.length; i++) {
            tNode[i] = document.getElementById("menuListForm").tmp_menuNm[i].value;
            var nValue = tNode[i].split("|");
            //선택된 메뉴(menuNo)의 하위 메뉴중 첫번재 메뉴의 링크정보를 리턴한다.
            if (nValue[1]==menuNo) {
                if(nValue[5]!="dir" && nValue[5]!="" && nValue[5]!="/"){
                    //링크정보가 있으면 링크정보를 리턴한다.
                    return nValue[5];
                }else{
                    //링크정보가 없으면 하위 메뉴중 첫번째 메뉴의 링크정보를 리턴한다.
                    return getLastLink(nValue[0]);
                }
            }
        }
    }
    function goMenuPage(menuNo){
        document.getElementById("menuNo").value=menuNo;
        document.getElementById("link").value="forward:"+getLastLink(menuNo);
        document.menuListForm.action = "<c:url value='/EgovPageLink.do'/>";
        document.menuListForm.submit();
    }
    function actionLogout()
    {
        document.selectOne.action = "<c:url value='/uat/uia/actionLogout.do'/>";
        document.selectOne.submit();
    }
</script>

<div style="width:0px; height:0px;">
  <form name="menuListForm" id="menuListForm" action ="/sym/mnu/mpm/EgovMenuListSelect.do" method="post">
    <input type="hidden" id="menuNo" name="menuNo" value="<%=session.getAttribute("menuNo")%>" />
    <input type="hidden" id="link" name="link" value="" />
    <c:forEach var="result" items="${list_menulist}" varStatus="status" >
        <input type="hidden" name="tmp_menuNm" value="${result.menuNo}|${result.upperMenuId}|${result.menuNm}|${result.relateImagePath}|${result.relateImageNm}|${result.chkURL}|" />
    </c:forEach>
  </form>
</div>

  <!--Main Navigation-->
  <header>
    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
      <div class="container">

        <!-- Brand -->
        <a class="navbar-brand waves-effect" href="<c:url value='/'/>cmm/main/mainPage.do" target="_self">
          <img src="<c:url value='/'/>images/intro02.png" alt="로고이미지">
        </a>

        <!-- Collapse -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Links -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

          <!-- Left -->
          <ul class="navbar-nav mr-auto">    
            <c:forEach var="result" items="${list_headmenu}" varStatus="status">
            <li class="nav-item"><a class="nav-link waves-effect" href="#LINK" onclick="javascript:goMenuPage('<c:out value="${result.menuNo}"/>')"><c:out value="${result.menuNm}"/></a></li>
            </c:forEach> 
            <% if(loginVO == null){ %>
            <li class="nav-item"><a class="nav-link waves-effect" href="<c:url value='/uat/uia/egovLoginUsr.do'/>">로그인</a></li>	
            <% } else { %>
            <li class="nav-item"><a class="nav-link waves-effect" href="<c:url value='/uat/uia/actionLogout.do'/>">로그아웃</a></li>	
            <% } %>
          </ul>

          <!-- Right -->
          <ul class="navbar-nav nav-flex-icons">
            <li class="nav-item">
              <a href="https://www.facebook.com/bankscan" class="nav-link waves-effect" target="_blank">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="nav-item">
              <a href="https://twitter.com/bankscan" class="nav-link waves-effect" target="_blank">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!--// Navbar -->
    <div id="leftmenu_div"><c:import url="/sym/mms/EgovMainMenuLeft.do" /></div>
  </header>
  
  <!--//Main Navigation-->

