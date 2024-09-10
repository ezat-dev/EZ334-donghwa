<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>History Trend</title>

<link rel="shortcut icon" href="resources/image/KPF.jpg" type="image/x-icon" />
<!-- 하이차트 라이브러리 포함 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
 <script src="https://code.highcharts.com/modules/accessibility.js"></script>
 <%@ include file="../include/mainHeader.jsp" %>
  <title>Recipe</title>
<jsp:include page="../include/pluginpage.jsp"/>
<style>
/* HTML과 body의 높이를 100%로 설정 */
html, body {
    height: 100%;
    margin: 0; /* 기본 마진 제거 */
    font-family: Arial, sans-serif;
}

/* Flexbox 레이아웃 설정 */
.container {
    display: flex;
    height: 100%; /* 부모 요소의 높이를 100%로 설정 */
    padding: 30px; /* 좌우 여백 추가 */
}

/* 왼쪽 4칸 영역 */
.left {
    flex: 3;
    background-color: #f8f9fa; 
    border-right: 1px solid #c0c7cf; 
    box-sizing: border-box;
    display: flex;
    align-items: center; 
}

.left h2 {
    margin-top: 0;
    margin-bottom: 20px;
    color: #333;
    font-size: 18px;
}

.pen-settings {
    display: flex;
    flex-direction: column;
    width: 100%;
}

.pen-settings label {
    margin-bottom: 5px;
    font-weight: bold;
    color: #555;
    
}

.pen-settings input[type="text"],
.pen-settings select,
.pen-settings input[type="color"],
.pen-settings button {
    margin-bottom: 15px;
    padding: 8px;
    font-size: 14px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.pen-settings select {
    height: 380px;
}

.pen-settings input[type="color"],
.pen-settings button {
    width: 590px; 
    height: 40px; 
    margin-left: 5px;
    
}

.pen-settings button {
    background-color: white;
    color: black;
    border: 1px solid black;
    cursor: pointer;
    transition: background-color 0.3s;
}

.pen-settings button:hover {
    background-color: #f0f0f0;
}

/* 오른쪽 6칸 영역 */
.right {
    flex: 7;
     background-color: #f8f9fa; /* 밝은 회색 배경색 */
    padding: 10px;
    position: relative;
    display: flex;
    align-items: center; /* 수직 가운데 정렬 */
}

/* 차트 컨테이너를 오른쪽 정가운데에 배치 */
#container {
    width: 90%; /* 차트의 너비를 90%로 설정하여 줄였습니다 */
    height: 50%;
    margin: 0 auto; /* 차트를 중앙에 배치 */
}

.pen-group-settings {
    display: flex;
    align-items: center; /* 수직 가운데 정렬 */
    height: 80px; /* 높이 설정 */
    gap: 10px; /* 요소 간의 간격 */
}

.pen-group-settings label {
    margin: 0; /* 마진 제거 */
    font-weight: bold;

}

.pen-group-settings select {
    margin: 0; /* 마진 제거 */
    height: 36px;
     width: 150px;
}

.btn-container {
    display: flex;
    gap: 10px; /* 버튼 간의 간격 */
      height: 40px; /* 버튼 높이 설정 */
    width: 340px;
    margin-left: 5px;

}

.pen-group-settings button {
        font-size:12px;
         font-weight: bold;
}
#pen-list{
font-size:15px;
}
</style>
</head>
<body>
    <div class="container">
        <div class="left">
            <div class="pen-settings">
                <div class="pen-group-settings">
                    <label for="pen-group">Pen Group:</label>
                    <select id="pen-group">
                       
                    </select>
                    <div class="btn-container">
                        <button id="load-pen-group"><i class="fas fa-save"></i> LOAD PEN GROUP</button>
                        <button id="delete-pen-group"><i class="fas fa-trash"></i> DELETE PEN GROUP</button>
                    </div>
                </div>
                <h2>Pen Groups Settings</h2>
                <label for="pen-search">Search Pen:</label>
                <input type="text" id="pen-search" placeholder="Search Pen...">
                <label for="pen-list">Pen List:</label>
                <select id="pen-list" multiple></select>
                <label for="pen-color">Color:</label>
                <input type="color" id="pen-color" value="#ff0000">
                <button type="button" id="add-button">Add</button>
                <button type="button" id="all-button">ALL</button>
            </div>
        </div>
        <div class="right">
            <div id="container"></div>
        </div>
    </div>

    <script>
//로드
$(document).ready(function() {
    // 페이지 로드 시 펜 그룹 목록 초기화
//    loadPenGroups();


//    loadPenList(); // 페이지 로드 시 펜 목록 초기화

});



//이벤트
$('#pen-group').on('change', function() {
    var selectedGroup = $(this).val();
    if (selectedGroup) {
        $.ajax({
            url: '/donghwa/analysis/historyTrend/filteredDataByGroup',
            method: 'GET',
            data: { groupName: selectedGroup },
            dataType: 'json',
            success: function(data) {
                console.log('Fetched Data by Group:', data);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.error('Error fetching data:', textStatus, errorThrown);
            }
        });
    }
});

$('#all-button').on('click', function() {
    $.ajax({
        url: '/donghwa/analysis/historyTrend/all',
        method: 'GET',
        dataType: 'json',
        success: function(data) {
            console.log('Fetched Data:', data);

            // 데이터 변환
            var formattedData = data.map(item => {
                var utcDate = new Date(item.tdateISO);
                var kstDate = new Date(utcDate.getTime() + (9 * 60 * 60 * 1000)); // UTC+9

                return {
                    x: kstDate.getTime(), // X축에 사용할 밀리초 단위의 값
                    y: parseFloat(item.c1) // Y축에 사용할 값
                };
            });

            Highcharts.chart('container', {
                chart: {
                    type: 'line',
                    backgroundColor: '#ffffff'
                },
                title: {
                    text: 'Historical Trend'
                },
                xAxis: {
                    type: 'datetime',
                    title: {
                        text: 'Date'
                    },
                    labels: {
                        format: '{value:%m-%d %H:%M:%S}'
                    }
                },
                yAxis: {
                    title: {
                        text: 'Values'
                    }
                },
                series: [{
                    name: 'c1',
                    data: formattedData
                }, {
                    name: 'c2',
                    data: data.map(item => {
                        var utcDate = new Date(item.tdateISO);
                        var kstDate = new Date(utcDate.getTime() + (9 * 60 * 60 * 1000)); // UTC+9
                        return [kstDate.getTime(), parseFloat(item.c2)];
                    })
                }, {
                    name: 'c3',
                    data: data.map(item => {
                        var utcDate = new Date(item.tdateISO);
                        var kstDate = new Date(utcDate.getTime() + (9 * 60 * 60 * 1000)); // UTC+9
                        return [kstDate.getTime(), parseFloat(item.c3)];
                    })
                }, {
                    name: 'c4',
                    data: data.map(item => {
                        var utcDate = new Date(item.tdateISO);
                        var kstDate = new Date(utcDate.getTime() + (9 * 60 * 60 * 1000)); // UTC+9
                        return [kstDate.getTime(), parseFloat(item.c4)];
                    })
                }, {
                    name: 'c5',
                    data: data.map(item => {
                        var utcDate = new Date(item.tdateISO);
                        var kstDate = new Date(utcDate.getTime() + (9 * 60 * 60 * 1000)); // UTC+9
                        return [kstDate.getTime(), parseFloat(item.c5)];
                    })
                }, {
                    name: 'c6',
                    data: data.map(item => {
                        var utcDate = new Date(item.tdateISO);
                        var kstDate = new Date(utcDate.getTime() + (9 * 60 * 60 * 1000)); // UTC+9
                        return [kstDate.getTime(), parseFloat(item.c6)];
                    })
                }, {
                    name: 'c7',
                    data: data.map(item => {
                        var utcDate = new Date(item.tdateISO);
                        var kstDate = new Date(utcDate.getTime() + (9 * 60 * 60 * 1000)); // UTC+9
                        return [kstDate.getTime(), parseFloat(item.c7)];
                    })
                }, {
                    name: 'c8',
                    data: data.map(item => {
                        var utcDate = new Date(item.tdateISO);
                        var kstDate = new Date(utcDate.getTime() + (9 * 60 * 60 * 1000)); // UTC+9
                        return [kstDate.getTime(), parseFloat(item.c8)];
                    })
                }, {
                    name: 'c9',
                    data: data.map(item => {
                        var utcDate = new Date(item.tdateISO);
                        var kstDate = new Date(utcDate.getTime() + (9 * 60 * 60 * 1000)); // UTC+9
                        return [kstDate.getTime(), parseFloat(item.c9)];
                    })
                }]
            });
        },
        error: function(xhr, status, error) {
            console.error('Error fetching data:', error);
        }
    });
});

    
//함수
// 펜 그룹 목록 로드
function loadPenGroups() {
    $.ajax({
        url: '/donghwa/analysis/historyTrend/groupNames', // 실제 API 엔드포인트로 수정
        method: 'GET',
        dataType: 'json',
        success: function(data) {
            console.log('Fetched Pen Groups:', data);
            var penGroupSelect = $('#pen-group');
            penGroupSelect.empty(); // 현재 목록을 비웁니다.

            // 데이터가 문자열 배열이라면
            data.forEach(function(groupName) {
                penGroupSelect.append(new Option(groupName, groupName));
            });
        },
        error: function(xhr, status, error) {
            console.error('Error fetching pen groups:', error);
        }
    });
}


// 펜 목록 로드 함수 (기존 코드와 동일)
function loadPenList() {
    $.ajax({
        url: '/donghwa/analysis/historyTrend/penNames',
        method: 'GET',
        dataType: 'json',
        success: function(data) {
            console.log('Fetched Pen List:', data);
            var penList = $('#pen-list');
            penList.empty(); // 현재 목록을 비웁니다.

            // 데이터가 문자열 배열이라면
            data.forEach(function(penName) {
                penList.append(new Option(penName, penName));
            });
        },
        error: function(xhr, status, error) {
            console.error('Error fetching pen list:', error);
        }
    });
}
    
    </script>
</body>
</html>