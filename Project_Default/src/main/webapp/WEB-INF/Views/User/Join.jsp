<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${ pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>회원 가입</title>

</head>
<body >

   <!-- 상단 -->
   <c:import url="/WEB-INF/Views/Include/Top.jsp" />

   <main id="main">
      <!-- ======= Breadcrumbs ======= -->
      <section id="breadcrumbs" class="breadcrumbs">
         <div class="container">
            <div class="d-flex justify-content-between align-items-center">
               <h3>회원가입</h3>
               <ol>
                  <li><a href="${ root }">Home</a></li>
                  <li>회원가입</li>
               </ol>
            </div>
         </div>
      </section>
      <!-- End Breadcrumbs -->

      <section>
         <div class="container justify-content-center">
            <div class="row">
               <div class="col-sm-3"></div>
               <div class="col-sm-6">
                  <form:form action="${root }User/Join_Pro" method="post" modelAttribute="joinUserBean">
                     <div class="form-group">
                        <form:label path="user_code">회원종류</form:label>                                                 
                        <form:radiobutton path="user_code" value="1" label="개인"/>
                        <form:radiobutton path="user_code" value="2" label="기업"/>                             
                     </div>
                     <br>
                     <div class="form-group">
                        <form:label path="user_id">아이디</form:label>                        
                           <form:input type="text" path="user_id" class="form-control" />                           
                              <form:button type="button" class="btn btn-info">중복확인</form:button>                           
                           <form:errors path="user_id" style="color:red" />                        
                     </div>
                     <br>
                     <div class="form-group">
                        <form:label path="user_pw">비밀번호</form:label>
                        <form:input type="password" path="user_pw" class="form-control" />
                        <form:errors path="user_pw" style="color:red" />
                     </div>
                     <br>
                     <div class="form-group">
                        <form:label path="user_pw2">비밀번호 확인</form:label>
                        <form:input type="password" path="user_pw2" class="form-control" />
                        <form:errors path="user_pw2" style="color:red" />
                     </div>
                     <br>
                     <div class="form-group">
                        <form:label path="user_name">이름</form:label>
                        <form:input path="user_name" class="form-control" />
                        <form:errors path="user_name" style="color:red" />
                     </div>
                     <br>
                     <div class="form-group row">
                        <form:label path="user_birth">생년월일</form:label>
                        &nbsp;
                        <form:input type="date" path="user_birth" class="form-control" />

                     </div>
                     <br>
                     <div class="form-group row">
                        <form:label path="user_gender">성별</form:label>
                        <form:radiobutton path="user_gender" value="uncheck" checked="checked" label="선택 안함"/>                        
                        <form:radiobutton path="user_gender" value="man" label="남자"/>
                        <form:radiobutton path="user_gender" value="woman" label="여자"/>
                     	
                 	 </div>
                     <br>
                     <div class="form-group">
                        <label for="user_phone">전화번호</label>
                        <form:input type="tel" path="user_phone"/>
                        <form:button>인증번호받기</form:button>
                     </div>
                     <br>
                     <div class="form-group row">
                     <form:label path="user_address">주소</form:label> 
					 <form:input path="user_address" id="address" class="form-control" placeholder="주소 입력" readonly="true" />
					 <button type="button" onclick="goPopup();">주소검색</button>
              		 </div>
              		 <br>
                     <div class="form-group">
                        <form:button type="submit" class="btn btn-light">회원가입</form:button>
                     </div>
                  </form:form>
               </div>
            </div>
         </div>
      </section>

   </main>
<script>

function goPopup(){

	var pop = window.open("jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
 
}

function jusoCallBack(roadFullAddr){
	var addressEl = document.querySelector("#address");
	addressEl.value = roadFullAddr;
}

</script>
</body>
</html>