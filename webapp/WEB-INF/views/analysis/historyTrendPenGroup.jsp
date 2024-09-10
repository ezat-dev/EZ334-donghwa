<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>History Trend</title>

<!-- 하이차트 라이브러리 포함 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
            </div>
        </div>
        <div class="right">
            <div id="container"></div>
        </div>
    </div>

    <script>
//전역변수
var seriesArray = [];
    
//로드
$(document).ready(function() {
	getPenGroupSelect();
});



//이벤트

//로드 펜 그룹 클릭
$("#load-pen-group").on("click",function(){
	//펜 리스트에 펜이름 적용
	getPenGroupList();
	
	//트렌드에 적용
	getPenGroupChartData();
	
	setTimeout(function(){
		getPenGroupChart();
	},500);
});


$("#pen-list").on("click", function(e){
	console.log(e);
	
	
});

$("#add-button").on("click", function(){
	var penInfo = $("#pen-list").val();
	console.log(penInfo);
});

//함수
	function unix_timestamp(t){
	    var date = new Date(t*1000);
	    var year = date.getFullYear();
	    var month = "0" + (date.getMonth()+1);
	    var day = "0" + date.getDate();
	    var hour = "0" + date.getHours();
	    var minute = "0" + date.getMinutes();
	    var second = "0" + date.getSeconds();
	    return year + "-" + month.substr(-2) + "-" + day.substr(-2) + "</br> " + hour.substr(-2) + ":" + minute.substr(-2) + ":" + second.substr(-2);
	}
	
	function unix_timestamp_tooltip(t){
	    var date = new Date(t*1000);
	    var year = date.getFullYear();
	    var month = "0" + (date.getMonth()+1);
	    var day = "0" + date.getDate();
	    var hour = "0" + date.getHours();
	    var minute = "0" + date.getMinutes();
	    var second = "0" + date.getSeconds();
	    return year + "-" + month.substr(-2) + "-" + day.substr(-2) + " " + hour.substr(-2) + ":" + minute.substr(-2) + ":" + second.substr(-2);
	}	
	
	function unix_timestamp_onClick(t){
	    var date = new Date(t*1000);
	    var year = date.getFullYear();
	    var month = "0" + (date.getMonth()+1);
	    var day = "0" + date.getDate();
	    var hour = "0" + date.getHours();
	    var minute = "0" + date.getMinutes();
	    var second = "0" + date.getSeconds();
	    return year + "-" + month.substr(-2) + "-" + day.substr(-2) + " " + hour.substr(-2) + ":" + minute.substr(-2) + ":" + second.substr(-2);
	}	



//펜 select태그 로드
function getPenGroupSelect(){
    $.ajax({
        url: "/donghwa/analysis/historyTrendPenGroupSelect",
        method: "POST",
        data: {},
        dataType: "json",
        success: function(data) {
        	var result = data.result;
        	
        	var option = "";
        	$("#pen-group").empty();
        	
        	for(var i=0; i<result.length; i++){
        		option = "<option value='"+result[i]+"'>"+result[i]+"</option>";
        		$("#pen-group").append(option);
        	}
        }
    });
}

//펜 select태그의 펜 목록 조회(Pen List)
function getPenGroupList(){
	var selectedGroup = $("#pen-group").val();
    
    $.ajax({
        url: "/donghwa/analysis/historyTrendPenGroupList",
        method: "POST",
        data: {"pen_group_name": selectedGroup},
        dataType: "json",
        success: function(data) {
            var result = data.result;
            
            var option = "";
            $("#pen-list").empty();
            
            
            for(var i=0; i<result.length; i++){
            	if(result[i].pen_info_yn == 'Y'){
            		option = "<option value='"+result[i].pen_info_name+"' style='background-color:lightgray;'>"+result[i].pen_info_name+"</option>";
            	}else if(result[i].pen_info_yn == 'N'){
            		option = "<option value='"+result[i].pen_info_name+"'>"+result[i].pen_info_name+"</option>";
            	}
            	
            	$("#pen-list").append(option);	
            }
            
            
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.error('Error fetching data:', textStatus, errorThrown);
        }
    });
}

//선택한 펜의 차트 조회
function getPenGroupChartData(){
	//날짜, 시간은 추후 input태그로 변경
	var sdate = "2024-08-01";
	var stime = "00:00";
	var edate = "2024-09-12";
	var etime = "23:59";
	var selectedGroup = $("#pen-group").val();
	
	var sdateTime = sdate+" "+stime+":00";
	var edateTime = edate+" "+etime+":59";
	
	$.ajax({
		url:"/donghwa/analysis/historyTrendPenGroupChart",
		type:"post",
		dataType:"json",
		data:{
			"sdateTime":sdateTime,
			"edateTime":edateTime,
			"pen_group_name":selectedGroup
		},
		success:function(result){
			var data = result.data;			
			var groupConcatSplit = data.groupConcat.split(",");

			var dataKeys = Object.keys(data);
			var dataValues = Object.values(data);
			
			var idx = 0;
			var idx2 = 0;
			
			for(var i=0; i<dataKeys.length; i++){
				for(var j=0; j<groupConcatSplit.length; j++){
					if(dataKeys[i] == groupConcatSplit[j]){
						console.log(dataValues[i]);
						
						seriesArray[idx] = dataValues[i];
						idx++;
					}					
				}
			}
			
			var chart = $("#container").highcharts();
			
			if(typeof chart != "undefined"){
				for(var i=0; i<dataKeys.length; i++){
					for(var j=0; j<groupConcatSplit.length; j++){
						if(dataKeys[i] == groupConcatSplit[j]){
							seriesArray[idx2] = dataValues[i];
							idx2++;
						}					
					}
				}			
				chart.redraw();
			}			
			
		}
	});
	
}

//하이차트 설정
function getPenGroupChart(){
	
    const chart = Highcharts.chart('container', {
    	chart: {
    		type:"spline",        		
    		panning:true,
            panKey:"shift",
            zoomType:"x",
			styleMode: true        
    	},
    	time:{
    		timezone: "Asia/Seoul",
    		useUTC: false
    	},
        yAxis: [{
//        	className: 'highcharts-color-0',
        	crosshair:{
        		width:3,
        		color:'#5D5D5D',
        		zIndex:5
        	},
            title: {
                text: 'Temper(℃)'
            },
            labels:{
            	style:{
            		fontSize:"14pt"
            	}
            }
        }],
        xAxis: {
        	crosshair:{
        		width:3,
        		color:'#5D5D5D',
        		zIndex:5
        	},
//			tickAmount:11,
            	labels:{
            		//x축 날짜포맷
					formatter:function(){
            			return unix_timestamp(this.value);
            		},
            		style:{
            			fontSize:"11pt"
            		}
            	},
        	allowDecimals:false
//        	tickmarkPlacement:'on',
//        	max:datetimeJson[datetimeJson.length-1],
//        	startOnTick:false
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'middle'
        },
        plotOptions: {
            series: {
            	selected:true,
            	marker:{
                	radius:1
            	}
            }
        },
        tooltip:{
        	split:true,
/*
			formatter:function(){
				var tool;

				tool = '<span style=color:'+this.points[0].color+'><b>time :</b></span> <b>' + this.points[0].y + '</b></br>'+
	            '<span style=color:'+this.points[1].color+'><b>temper :</b></span> <b>' + this.points[1].y + '</b></br>'+
	            '<span style=color:'+this.points[2].color+'><b>temperToleCont :</b></span> <b>' + this.points[2].y + '</b></br>'+
	            '<span style=color:'+this.points[3].color+'><b>temperToleHold :</span> <b>' + this.points[3].y + '</b></br>'+
	            '<span style=color:'+this.points[4].color+'><b>holdbackTimeoutHeating :</span> <b>' + this.points[4].y + '</b></br>'+
	            '<span style=color:'+this.points[5].color+'><b>pressureSetValue :</span> <b>' + this.points[5].y + '</b></br>'+
	            '<span style=color:'+this.points[6].color+'><b>pressingCapacityF1 :</span> <b>' + this.points[6].y + '</b></br>'+
	            '<span style=color:'+this.points[7].color+'><b>pressingCapacityF2 :</span> <b>' + this.points[7].y + '</b></br>'+
	            '<span style=color:'+this.points[8].color+'><b>foreceTolerance :</span> <b>' + this.points[8].y + '</b></br>'+
                'Segment : <b>' + unix_timestamp_tooltip(this.x) + '</b>';
				
	            return tool;
                                    
			},
*/
	        shared: true,
//	        crosshairs:true,
    		style:{
    			fontSize:"14pt"
    		}
        },
        series: seriesArray,
        responsive: {
            rules: [{
                condition: {
                    maxWidth: 1200
                },
                chartOptions: {
                    legend: {
                        layout: 'horizontal',
                        align: 'center',
                        verticalAlign: 'bottom'
                    }
                }
            }]
        },
        exporting:{
            menuItemDefinitions: {
                // Custom definition
                label: {
                    onclick: function () {
                        this.renderer.label(
                            'You just clicked a custom menu item',
                            100,
                            100
                        )
                            .attr({
                                fill: '#a4edba',
                                r: 5,
                                padding: 10,
                                zIndex: 10
                            })
                            .css({
                                fontSize: '1.5em'
                            })
                            .add();
                    },
                    text: 'Show label'
                }
            },
            buttons: {
                contextButton: {
                    menuItems: ['downloadPNG', 'downloadPDF', 'downloadXLS', 'separator']
                }
            }
        },
        legend:{
            itemStyle:{
                fontSize: "11pt"
            }
		}
    });
    
}



</script>
</body>
</html>