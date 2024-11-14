
$(function(){
   //메인 nav 스크립트 
   $(".nav_2 > ul ").mouseover(function(){
      $(".nav_2 > ul > li > ul").stop().fadeIn(400);
      $("header").addClass("on");
   });
 

   $(".nav_2 > ul").mouseout(function(){
      $(".nav_2  > ul > li > ul").stop().fadeOut(300);
      $("header").removeClass("on");
   });

   // header scroll 스크립트 
   $(window).scroll(function(){
      let tops = $(window).scrollTop();
      if(tops > 0){
         $('header').css({
            'position' : 'fixed',
            'top':0,
            'zIndex' : 1000 ,
            'height' : '100px'
         }).addClass("fixed");
         $('.left-box').hide();
         $('.logo').removeClass("col-8").addClass("col-10");
         $('.logo').css({
            'textAlign' : 'left'
         });
         $(".nav_2").css({
            'position':'fixed',
            'top' : 0,
            'height':0
         });
         $('header img').css({
            'marginLeft' : '30px',
            'marginTop' : '10px'
         });
         $('.contents').css({
            'marginTop' : '230px'
         });
         $('#slider').css({
            'marginTop' : '100px'
         });
         $('.examWrap').css({
            'marginTop' : '180px'
         });
         $('.top_button').slideDown(500);
      }else{
         $('header').css({
            'position' : 'static',
            'top':0,
            'height' : '190px'
         }).removeClass('fixed');
         $('.left-box').show();
         $('.logo').removeClass("col-10").addClass("col-8");
         $('.logo').css({
            'textAlign' : 'center'
         });
         $(".nav_2").css({
            'position':'static',
            'top' : 0,
            'height':'50%'
         });
         $('.contents').css({
            'marginTop' : '50px'
         });
         $('#slider').css({
            'marginTop' : '0'
         })
         $('.examWrap').css({
            'marginTop' : '0'
         });
         $('.top_button').slideUp(500);
      }
   });
   
  
  /* index 사이드 퀵메뉴 */
  $('#sidebtn').click(function(){
   var a = document.querySelector('.sidebar').style.right;
   console.log(a);
   if(a == 0 || a == "0px"){
   $('.sidebar').css(
      { 
         "right": "-80px"}
      );
   $('.quickmenu').css( {
   "right": "-80px"}) 
   if($("#icon").hasClass('ri-arrow-right-s-line') == true){
      $("#icon").removeClass('ri-arrow-right-s-line');
      $("#icon").addClass('ri-arrow-left-s-line');
   }
   }
   else{
      $('.sidebar').css(
         { 
            "right": "0px"}
         );
      $('.quickmenu').css( {
      "right": "0px"});
      if($("#icon").hasClass('ri-arrow-left-s-line') == true){
      $("#icon").removeClass('ri-arrow-left-s-line');
      $("#icon").addClass('ri-arrow-right-s-line');
      }
   } 
});


    $(function(){
        let currentIndex = 0; //현재 이미지
        $("#sliderWrap").append($("#slider").first().clone(true)); //첫번째 이미지를 복사해서 마지막에 추가

        setInterval(() => {
            currentIndex++;     //현재 이미지를 1씩 추가
            $("#sliderWrap").animate({marginLeft: -100 * currentIndex + "%"}, 800);   //이미지 애니메이션

            if(currentIndex == 3){  //마지막 이미지
                setTimeout(() => {
                    $("#sliderWrap").animate({marginLeft: 0}, 0);   //애니메이션 정지
                    currentIndex = 0;   //현재 이미지 초기화
                }, 700);
            }
        }, 8000);
    });

  /* scroll animation*/
  const $counters = $(".scroll_on");
    
  // 노출 비율(%)과 애니메이션 반복 여부(true/false)를 설정합니다.
  const exposurePercentage = 90; // ex) 스크롤 했을 때 $counters 컨텐츠가 화면에 100% 노출되면 숫자가 올라갑니다.
  const loop = true; // 애니메이션 반복 여부를 설정합니다. (true로 설정할 경우, 요소가 화면에서 사라질 때 다시 숨겨집니다.)

  // 윈도우의 스크롤 이벤트를 모니터링합니다.
  $(window).on('scroll', function() {
      // 각 "scroll_on" 클래스를 가진 요소에 대해 반복합니다.
      $counters.each(function() {
          const $el = $(this);
  
          // 요소의 위치 정보를 가져옵니다.
          const rect = $el[0].getBoundingClientRect();
          const winHeight = window.innerHeight; // 현재 브라우저 창의 높이
          const winWidth = window.innerWidth;
          const contentHeight = rect.bottom - rect.top; // 요소의 높이
          
          // 요소가 화면에 특정 비율만큼 노출될 때 처리합니다.
          if (rect.top <= winHeight - (contentHeight * exposurePercentage / 100) && rect.bottom >= (contentHeight * exposurePercentage / 100)) {
              $el.addClass('active');
          }
          // 요소가 화면에서 완전히 사라졌을 때 처리합니다.
          if (loop && (rect.bottom <= 0 || rect.top >= window.innerHeight)) {
              $el.removeClass('active');
          }
      });
  }).scroll();



   /* 회원가입 팝업 */
   $('.signup').click(function(e){
      e.preventDefault;
   $('.signuppopup').fadeIn();
   });
   $('.reset').click(function(e){
      e.preventDefault;
   $('form').each(function(){
      this.reset();
   });
   $('.signuppopup').fadeOut();
   });

    /* 로그인 팝업 */
    $('.login').click(function(e){
      e.preventDefault;
   $('.loginpopup').fadeIn();
   });
   $('.reset').click(function(e){
      e.preventDefault;
   $('form').each(function(){
      this.reset();
   });
   $('.loginpopup').fadeOut();
   });

   $('.slider-for').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: false,
      fade: true,
      speed : 800,
      asNavFor: '.slider-nav'
    });
    $('.slider-nav').slick({
      autoplay:true,
      slidesToShow: 5,
      slidesToScroll: 1,
      asNavFor: '.slider-for',
      centerPadding : '30px',
      dots: false,
      speed : 800,
      autoplaySpeed:3000,
      centerMode: true,
      focusOnSelect: true,
    });
    
    /*자동하이픈*/
document.getElementById('tel').addEventListener('input', function() {

    let value = this.value;
    
    value = value.replace(/[^0-9]/g, '');
    
    let formattedValue = '';
    for (let i = 0; i < value.length; i++) {
        if (i === 3 || i === 7) {
            formattedValue += '-';
        }
        formattedValue += value[i];
    }

    this.value = formattedValue;
});   


});


 /* 날짜 선택 */
    
 if(document.getElementById('s_t1')){
   document.getElementById('s_t1').value = document.getElementById('tmp_s_t1').value;
}
$(function() {
   var clareCalendar = {
       monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
       dayNamesMin: ['일','월','화','수','목','금','토'],
       weekHeader: 'Wk',
       dateFormat: 'yy-mm-dd', //형식(20120303)
       autoSize: false, //오토리사이즈(body등 상위태그의 설정에 따른다)
       changeMonth: true, //월변경가능
       changeYear: true, //년변경가능
       showMonthAfterYear: true, //년 뒤에 월 표시
       yearRange: '1920:2050' //1990년부터 2020년까지
   };
   $( '#datepicker' ).datepicker(clareCalendar);
   $( '#datepicker_s_v6_2' ).datepicker(clareCalendar);
});
setTimeout("create_iframe(0,'ok_frame');",100);
setTimeout("create_iframe(0,'ok_frame2');",100);

jQuery(function($) {
$('#horeserv_privacy_radio1').on('click',function() {
   $('#horeserv_privacy_chk').prop('checked',true);
})
$('#horeserv_privacy_radio2').on('click',function() {
   $('#horeserv_privacy_chk').prop('checked',false);
})
})










