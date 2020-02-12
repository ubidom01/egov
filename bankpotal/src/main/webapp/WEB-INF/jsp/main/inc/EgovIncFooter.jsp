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

    <footer class="page-footer footer footer-static footer-dark gradient-45deg-indigo-purple gradient-shadow navbar-border navbar-shadow">
      <div class="footer-copyright">
        <div class="container"><span>&copy; 2019 <a href="#" target="_blank">금융과나눔</a> All rights reserved.</span><span class="right hide-on-small-only">Design and Developed by <a href="#">금융과나눔</a></span>
        <p class="footer-infor">
          <spring:message code="bankscan.main_bottom.address2"/></br>
	      <spring:message code="bankscan.main_bottom.address1"/>		
	    </p>          
        </div>
      </div>
    </footer>
    
    <!-- BEGIN VENDOR JS-->
    <script src="<c:url value='/'/>app-assets/js/vendors.min.js" type="text/javascript"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN THEME  JS-->
    <script src="<c:url value='/'/>app-assets/js/plugins.js" type="text/javascript"></script>
    <script src="<c:url value='/'/>app-assets/js/custom/custom-script.js" type="text/javascript"></script>
    <!-- END THEME  JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <!-- END PAGE LEVEL JS-->  
  

