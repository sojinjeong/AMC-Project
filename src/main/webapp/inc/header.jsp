<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>개인프로젝트</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.2.0/remixicon.css" integrity="sha512-OQDNdI5rpnZ0BRhhJc+btbbtnxaj+LdQFeh0V9/igiEPDiWE2fG+ZsXl0JEH+bjXKPJ3zcXqNyP4/F/NegVdZg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slick-theme.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="js/script.js"></script>
    <script src="js/slick.min.js"></script>
    
</head>
<body>
    <header>

        <div class="row">
            <div class="nav_1">
                <div class="left-box col-2"></div>
                <div class="logo col-8">
                    <a href="index.jsp">
                        <img src="img/logo2.png" alt="logo">
                    </a>
                </div>
                <div class="right-box col-2 text-right">
                <%
                	
                
                	if(session.getAttribute("name")==null){
                %>
                	<button type="button" class="btn btn-outline-dark login" id="login">login</button>
                    <button type="button" class="btn btn-outline-dark signup" id="signup">join</button>
                <%	
                	}else if(session.getAttribute("name")=="운영자"){
                %>
                	<p><%=session.getAttribute("name") %>님 환영합니다</p>
                <%		
                	}else{
                %>
                   
                    <p><%=session.getAttribute("name") %> 보호자님 환영합니다 ! </p>
                    <form name="logoutForm" action="LoginSevlet" method="get">
                 		 <button type="submit" class="logout"><i type="submit" class="fa-solid fa-paw"></i>
                    </form>
                <%
                	}
                %>
                    
                </div>
            </div>

            <div class="nav_2 text-center">
                <ul class="d-flex">
                    <li>
                        <a href="#">INFORMATION</a>
                        <ul class="submenu">
                            <li><a href="#">인사말</a></li>
                            <li><a href="#">부서별 연락망</a></li>
                            <li><a href="#">찾아오는길</a></li>
                            <li><a href="#">병원소식</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">CLINIC</a>
                        <ul class="submenu">
                            <li><a href="#">진료시간 안내</a></li>
                            <li><a href="#">보호자 예약안내</a></li>
                            <li><a href="#">오시는 길</a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">EXAMINATION</a>
                        <ul class="submenu">
                            <li><a href="#">검진안내</a></li>
                            <li><a href="reservation_exam.jsp">예약하기</a></li>
                            <li><a href="#">예약확인</a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">RESERVATION</a>
                        <ul class="submenu">
                            <li><a href="#">호텔소개</a></li>
                            <li><a href="reservation_ho.jsp">예약하기</a></li>
                            <li><a href="#">예약확인</a></li>
                            <li><a href="#"></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        
    </header>
    
        <section>