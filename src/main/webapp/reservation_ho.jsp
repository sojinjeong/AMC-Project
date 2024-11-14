<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="inc/header_2.jsp" flush="true" />

<div id="contents" class="contents">
<div class="reservtitle_wrap">
<h1 class="reservtitle text-center mt-5 navy fw-bold">호텔 예약하기</h1>
<p class="text-center">* 예약 사항을 정확히 기재해주세요 *</p>
</div>
<!-- 가운데 입력박스 위치조정위한 박스(필요) -->
<div class = "row" 
     style = "margin-left:auto; 
              margin-right:auto; 
              margin-bottom:80px;
              background-color:transparent;" >
<div style = "margin:0 auto; 
              padding:0px 0; 
              max-width:820px;" 
     class = "white-space">
<div style = "margin-top:-0px;
              margin-left:-0px;">
<div class = "col d_col_6 t_col_6 m_col_6" 
     style = "padding-top:0px;
              padding-left:0px;">
<div style = "background-color:transparent;">
<div style = "word-break:break-all;
              margin:0 0px 0px 0px;">              
<!-- 가운데 입력박스 위치조정위한 박스(필요) -->





<table class="horeservform">

<!-- 폼 컨텐츠 좌측 비율 조정 -->    
<colgroup>
<col style="width:180px">
<col>
</colgroup>
<!-- / 폼 컨텐츠 좌측 비율 조정 -->  

<tbody>
<tr>
    <th>보호자 성함 <span class="horeserv_required">*</span></th>
    <td>
        <input type='text' name='s_v1' id='s_v1'> 
        <span class="horeservform_info">성명을 정확하게 입력해 주세요.</span>
    </td>
</tr><tr>

    <th>보호자 연락처 <span class="horeserv_required">*</span></th>
    <td>
        <select name='s_v2_hp1'  
                style='width:55px' 
                title='휴대전화 첫번째'>
            <option value=''>선택</option>
            <option value='010' >010</option>
            <option value='011' >011</option>
            <option value='016' >016</option>
            <option value='017' >017</option>
            <option value='018' >018</option>
            <option value='019' >019</option>
        </select> - <input type='text' 
                            name='s_v2_hp2' 
                            size=4 
                            maxlength=4 
                            value='' 
                            title='휴대전화 두번째' />
                  - <input type='text' 
                            name='s_v2_hp3' 
                            size=4 
                            maxlength=4 
                            value='' 
                            title='휴대전화 세번째' /> 
    </td>
</tr><tr>

<th>이메일 </th>
    <td>
        <input type='text' name='s_v3' id='s_v3' value='' > 
    </td>
</tr><tr>
<th>룸 선택 <span class="horeserv_required">*</span></th>
    <td>
        <select name='s_v7' id='s_v7' > 
            <option value=''>선택해주세요.</option>
            <option value="스탠다드" > 스탠다드 </option>
            <option value="디럭스" > 디럭스 </option>
            <option value="스페셜" > 스페셜 </option>
            <option value="스위트" > 스위트 </option>
        </select> 
            <span class="horeservform_info">이용하실 룸을 선택해주세요.<br />
                룸은 사전 예약이 마감될 수 있는 점 알려드립니다.</span>
    </td>
</tr><tr>

<th>이용날짜 <span class="horeserv_required">*</span></th>
    <td>
        <input type='text' 
                name='s_v6_1' 
                value='' 
                id='datepicker_s_v6_1'  
                style='width:90px' > ~ 
                <input type='text' 
                        name='s_v6_2' 
                        value='' 
                        id='datepicker_s_v6_2'  
                        style='width:90px' > 
                    <span class="horeservform_info">이용하실 날짜를 정확히 입력해주세요.</span>
    </td>
</tr><tr>

<th>반려동물 종 / 이름 / 나이 / 접종유무 / 질병유무 등 추가 전달사항 </th>
    <td>
        <textarea name='s_t1'
                  id='s_t1' 
                  style='width:100%;height:200px;' >
        </textarea> 
            <span class="horeservform_info"> 입실시 특이사항을 기재해주세요. <br /> 
                ex) 시베리안 허스키 / 철호 / 3년2개월 / 3차완료 / 없음 </span>
    </td>
</tr>            
</tbody>
</table>

<!--하단 개인정보 확인 후 체크박스 -->
<div class="horeserv_agree_wrap horeserv_mgt">
    <h4 class="horeserv_title" >개인정보 수집·이용 동의</h4>
    <div class="horeserv_agree">
        <div class="horeserv_agree_box">
            <h5 >수집하는 개인정보의 항목</h5>
                <p>회사는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.</p>
            <ul>
                <li>- 수집항목 : 이름, 연락처, 이메일, 룸, 이용날짜, 내용</li>
                <li>- 개인정보 수집방법 : 홈페이지(회원가입)</li>
            </ul>
            <h5>개인정보의 수집 및 이용목적</h5>
                <p>회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.</p>
            <ul>
                <li>- 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산
                    <p> 구매 및 요금 결제, 물품배송 또는 청구지 등 발송 </p>
                </li>
                <li>- 회원 관리
                    <p >회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 연령확인</p>
                </li>
            </ul>
            <h5 >개인정보의 보유 및 이용기간</h5>
                <p>회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.</p>
        </div>

        <div class="agree_check_box">
            <input type="checkbox" 
                    name="horeserv_privacy_chk" 
                    id="horeserv_privacy_chk" 
                    value="1">
                <span>
                    <input type="radio" 
                            name="horeserv_privacy_radio" 
                            id="horeserv_privacy_radio1">
                    <label for="horeserv_privacy_radio1">개인정보 수집·이용에 동의합니다.</label>
                </span>
                <span>
                    <input type="radio" 
                            name="horeserv_privacy_radio" 
                            id="horeserv_privacy_radio2">
                    <label for="horeserv_privacy_radio2" >개인정보 수집·이용에 동의하지 않습니다.</label>
                </span>
        </div>
    </div>
</div>   
<div class="horeserv_btn_wrap">
    <a href="" class="btn btn-outline-danger">취소</a>
    <a href="javascript:horeserv_form_chk()" class="btn btn-outline-dark">확인</a>

</div>
</form>   


</div>
       
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<jsp:include page="inc/footer.jsp" flush="true" />