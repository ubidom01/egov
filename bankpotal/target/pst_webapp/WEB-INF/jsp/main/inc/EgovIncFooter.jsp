<%--
  Class Name : EgovIncFooter.jsp
  Description : 화면하단 Footer(include)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
  <!--Footer-->
  <footer class="page-footer text-center font-small mdb-color darken-2 mt-4 wow fadeIn">
    <hr class="my-4">
    <!-- Social icons -->
    <div class="pb-4">
      <a href="https://www.facebook.com/bankscan" target="_blank">
        <i class="fab fa-facebook-f mr-3"></i>
      </a>
      <a href="https://twitter.com/bankscan" target="_blank">
        <i class="fab fa-twitter mr-3"></i>
      </a>
    </div>
    <!--// Social icons -->

    <!--Copyright-->
    <div class="footer-copyright py-3">
    <p class="footer-logo"><a href="<c:url value='/' />"><img alt="" src="<c:url value='/images/main_logo2.png' />"  alt="귬융과나눔" /></a></p>
    
    <p class="footer-infor">
      <spring:message code="bankscan.main_bottom.address2"/></br>
	  <spring:message code="bankscan.main_bottom.address1"/>		
	</p>  
    </div>
    <!--/.Copyright-->
  </footer>
  <!--/.Footer-->

  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="<c:url value='/'/>js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="<c:url value='/'/>js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="<c:url value='/'/>js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="<c:url value='/'/>js/mdb.min.js"></script>
  <!-- Initializations -->
  <script type="text/javascript">
    //$(".button-collapse").sideNav();
    //var sideNavScrollbar = document.querySelector('.custom-scrollbar');
    //var ps = new PerfectScrollbar(sideNavScrollbar);
  
    // Animations initialization
    new WOW().init();
  </script>
  

