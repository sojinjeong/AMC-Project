$(function() {
    var clareCalendar = {
        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        dayNamesMin: ['일','월','화','수','목','금','토'],
        weekHeader: 'Wk',
        dateFormat: 'yy-mm-dd', // 형식(20120303)
        autoSize: false, // 오토리사이즈(body등 상위태그의 설정에 따른다)
        showMonthAfterYear: true, // 년 뒤에 월 표시
        yearRange: '1920:2050', // 1990년부터 2020년까지
        showButtonPanel: true,
        closeText: '닫기',
        onSelect: function(dateString) {
            // 선택된 날짜 가져오기
            var selectedDate = $(this).datepicker('getDate');

            // 다음 달로 설정하기
            selectedDate.setMonth(selectedDate.getMonth() + 1);

            // datePicker_s_v6_2의 값이 존재하고, datePicker_s_v6_1의 날짜가 변경된 경우에만 처리
            if ($('#datepicker_s_v6_2').val() != null && $(this).attr('id') === 'datepicker_s_v6_1') {
                // datePicker_s_v6_2 초기화하기
                $('#datepicker_s_v6_2').val('').datepicker('hide');
                // datePicker_s_v6_2의 달력을 열 때 datePicker_s_v6_1에서 선택된 달의 다음 달로 설정
                $('#datepicker_s_v6_2').datepicker('option', 'defaultDate', selectedDate);
            }
        },
        // 시작 날짜와 끝나는 날짜 설정
        minDate: new Date(), // 오늘부터 선택 가능
        defaultDate: new Date()
    };

    // datePicker_s_v6_1 설정
    $('#datepicker_s_v6_1').datepicker(clareCalendar);

    // datePicker_s_v6_2 설정
    $('#datepicker_s_v6_2').datepicker(clareCalendar);

    $('#datepicker_s_v6_2').on('click', function() {
        if ($('#datepicker_s_v6_1').val() === '') {
            alert('먼저 시작 날짜를 선택하세요.');
            $('#datepicker_s_v6_1').focus();
        }
    });
});s