<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        </section>
        <!-- popup창 -->
        <!--signup popup-->
        <div class="signuppopup">
            <h4 class="fw-bold mb-5 text-center">회원가입</h4>
            <form action = "join.jsp" method="post">
                <div class="d-flex">
                    <div class="mb-3 me-3 col-6">
                        <label for="name" class="form-label">Your Name</label>
                        <input type="text" class="form-control" name="mname" id="name" placeholder="이름">
                    </div>
                    <div class="mb-3 me-4 col-6">
                        <label for="username" class="form-label">Your Id</label>
                        <input type="text" class="form-control" name="mid" id="username" placeholder="아이디">
                    </div>
                </div>
                <div class="d-flex">
                    <div class="mb-3 me-3 col-6">
                        <label for="password" class="form-label">Your Password</label>
                        <input type="password" class="form-control" name="mpass" id="password" placeholder="비밀번호">
                    </div>
                    <div class="mb-3 me-4 col-6">
                        <label for="repassword" class="form-label">Re Your Password</label>
                        <input type="password" class="form-control" id="repassword" placeholder="비밀번호 확인">
                    </div>
                </div>
                <div class="mb-3 me-4 col-8">
                    <label for="email" class="form-label">Email Address</label>
                    <input type="email" class="form-control" name="memail" id="email" placeholder="이메일 주소">
                </div>            
                <div class="mb-3 me-4 col-8">
                    <label for="tel" class="form-label">Your PhoneNumber</label>
                    <input type="tel" class="form-control" name="mphonenum" id="tel" placeholder="전화번호">
                </div>
                <div class="mb-2 me-4 col-8">
                    <label for="mypet" class="form-label">반려동물 종</label>
                </div>
                <div class="mb-3 me-4 col-8">
                    <input type="checkbox" id="고양이" name="animal" class="mx-1"/>
                    <label for="고양이" class="mx-2">고양이</label>
                    <input type="checkbox" id="강아지" name="animal" class="mx-1" />
                    <label for="강아지" class="mx-2">강아지</label>
                    <input type="checkbox" id="기타" name="animal" class="mx-1"/>
                    <label for="기타" class="mx-2">기타</label>
                </div>
                <div class="mb-3 me-4 col-8">
                    <label for="mypetname" class="form-label">반려동물 이름</label>
                    <input type="text" class="form-control" name ="mpetname" id="mypetname" placeholder="반려동물 이름">
                </div>
                <div class="mb-3 me-4 col-8">반려동물 나이</div>
                <div class="mb-3 me-4 col-8">
                    <select name='mpa_year' id='mpa_year' class="mx-2"> 
                        <option value=''>년</option>
                        <option value="1"> 1년 </option>
                        <option value="2"> 2년 </option>
                        <option value="3"> 3년 </option>
                        <option value="4"> 4년 </option>
                        <option value="5"> 5년 </option>
                        <option value="6"> 6년 </option>
                        <option value="7"> 7년 </option>
                    </select> 
                    <select name='mpa_month' id='mpa_month' class="mx-2"> 
                        <option value=''>개월</option>
                        <option value="1"> 1개월 </option>
                        <option value="2"> 2개월 </option>
                        <option value="3"> 3개월 </option>
                        <option value="4"> 4개월 </option>
                        <option value="5"> 5개월 </option>
                        <option value="6"> 6개월 </option>
                        <option value="7"> 7개월 </option>
                    </select> 
                    <select name='mpa_etc' id='mpa_etc'class="mx-2" > 
                        <option value=''>기타</option>
                        <option value="모름"> 모름 </option>
                    </select>
                </div>
                <div class="mt-5 mb-3 text-center">
                    <button type="button" class="reset btn btn-outline-danger me-2">취소</button>
                    <button type="submit" class="btn btn-outline-dark ms-2">전송</button>
                </div>
            </form>
        </div>
      <!-- /signup popup -->
      
      <!--loginpopup-->
        <div class="loginpopup">
        <div class="form-signin w-70 m-auto">
            <form action="LoginSevlet" method="post">
            <h1 class="h3 mb-3 fw-normal text-center">로그인</h1>
            <div class="form-floating">
                <label for="name" class="form-label"></label>
                <input type="text" name="mid"class="form-control" id="name" placeholder="Your id">
            </div>
            <div class="form-floating my-2">
                <label for="password" class="form-label"></label>
                <input type="password" name="mpass" class="form-control" id="password" placeholder="Your Password">
            </div>
        
            <div class="form-check text-start my-2">
                <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">remember me</label>
            </div>
            <div class="mt-5 mb-3 text-center">
                <button class="reset btn btn-outline-danger py-2" type="submit">취소</button>
                <button class="btn btn-outline-dark py-2" type="submit">로그인</button>
            </div>
            </form>
        </div>
    </div>







    <footer class="d-flex">
        <div class="footer_box1">
            <img src="img/logo2.png" alt="logo">
        </div>
        <div class="footer_box2">
            <p>주소 : 경기도 김포시 장기동 센트럴파크타워 108, 월드스타 월드 스퀘어 SJAMC </p>
            <p><span>TEL.032-123-1010</span><span>사업자등록번호.080-22-99111</span><span>대표:김미녀</span></p>
            copyright&copy; 2011 SJAMC Veterinary Surgical Center All rights Reserved.
            <p class="mb-3">design by backdesign.</p>
            <p><span>개인정보취급방침</span><span>이메일무단수집거부</span></p>
        </div>
        <div class="footer_box3"></div>
    </footer>

    <div class="quickmenu" id="quickmenu">
        <button type="button" id="sidebtn">
            <i id="icon" class="ri-arrow-right-s-line"></i>
        </div>
        <div class="sidebar" id="sidebar">
            <ul>
                <li class="sidemenu_1"><a href="https://www.topcare.kr/">진료문의</a></li>
                <li class="sidemenu"><a href="#">전문의료진</a></li>
                <li class="sidemenu_3">
                    <i class="fa-solid fa-location-dot "></i>
                    <a href="#">오시는길</a>
                </li>
                <li class="sidemenu_2"><a href="#"><i class="ri-kakao-talk-line"></i></a></li>
                <li class="sidemenu_2"><a href="#"><i class="ri-instagram-line"></i></a></li>
            </ul>
        </div>
    </div>

    <div class="top_button">
        <a href="#"><img src="img/top.png"></a>
    </div>
</body>
</html>