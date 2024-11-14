<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약하기</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.2.0/remixicon.css" integrity="sha512-OQDNdI5rpnZ0BRhhJc+btbbtnxaj+LdQFeh0V9/igiEPDiWE2fG+ZsXl0JEH+bjXKPJ3zcXqNyP4/F/NegVdZg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="js/jquery-ui-1.13.2/jquery-ui.css">
    <link rel="stylesheet" href="js/jquery-ui-1.13.2/jquery-ui.min.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui-1.13.2/jquery-ui.min.js"></script>
    <script src="js/jquery-ui-1.13.2/jquery-ui.js"></script>
    <script src="js/datepicker-ko.js"></script>
    <script src="js/script.js"></script>

</head>   
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
                    <button type="button" class="btn btn-outline-dark login" id="login">login</button>
                    <button type="button" class="btn btn-outline-dark signup" id="signup">join</button>
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
<!--/header-->

        <section>

