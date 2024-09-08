<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Recipe</title>
<jsp:include page="../include/pluginpage.jsp"/>
</head>
<style>


</style>


<body>

<div id="container" style="width:1900px; height:1000px;"></div>

<script>
//전역변수
var recipeNumber;
var recipeNumberData;

var bcf1;		//1호기 차트변수
var bcf1Data;	//1호기 차트데이터

var timeInterval;
var bcf1_inteval;

var segmentJson, timeJson, temperJson, temperToleranceContJson, temperToleranceHoldJson;
var holdbackTimeoutHeatingJson, pressureSetValueJson;
var pressingCapacityF1Json, pressingCapacityF2Json;
var foreceToleranceJson, positionAbsJson;
var positionRelativeJson, distanceToleranceJson;
var holdingTime1Json, holdingTime2Json;
var numberOfLoopsJson, speedOfPlungerJson, gradientOfForceJson;

var seriesArray = [];

//로드
$(function(){
	recipeNumber = sessionStorage.getItem("recipeNumber");
	recipeNumberData = sessionStorage.getItem("recipeNumberData");
	
	getGraphicalRecipe();
	
	setTimeout(function(){
		getGraphicalRecipeChart();		
	},500);
	
	
});
//이벤트

//함수

	//하이차트 설정
	function getGraphicalRecipeChart(){
		
        const chart = Highcharts.chart('container', {
        	chart: {
        		type:"line",        		
        		panning:true,
                panKey:"shift",
                zoomType:"x",
				styleMode: true        
        	},
        	time:{
        		timezone: "Asia/Seoul",
        		useUTC: false
        	},
            title: {
                text: 'Solar Employment Growth by Sector, 2010-2016'
            },
            subtitle: {
                text: 'Source: thesolarfoundation.com'
            },
            yAxis: [{
//            	className: 'highcharts-color-0',
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
//				tickAmount:11,
            	labels:{
            		style:{
            			fontSize:"11pt"
            		}
            	},
            	allowDecimals:false
//            	tickmarkPlacement:'on',
//            	max:datetimeJson[datetimeJson.length-1],
//            	startOnTick:false
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
    	            '<span style=color:'+this.points[9].color+'><b>positionAbs :</span> <b>' + this.points[9].y + '</b></br>'+
    	            '<span style=color:'+this.points[10].color+'><b>positionRelative :</span> <b>' + this.points[10].y + '</b></br>'+
    	            '<span style=color:'+this.points[11].color+'><b>distanceTolerance :</span> <b>' + this.points[11].y + '</b></br>'+
    	            '<span style=color:'+this.points[12].color+'><b>holdingTime1 :</span> <b>' + this.points[12].y + '</b></br>'+
    	            '<span style=color:'+this.points[13].color+'><b>holdingTime2 :</span> <b>' + this.points[13].y + '</b></br>'+
    	            '<span style=color:'+this.points[14].color+'><b>numberOfLoops :</span> <b>' + this.points[14].y + '</b></br>'+
    	            '<span style=color:'+this.points[15].color+'><b>speedOfPlunger :</span> <b>' + this.points[15].y + '</b></br>'+
    	            '<span style=color:'+this.points[16].color+'><b>gradientOfForce :</span> <b>' + this.points[16].y + '</b></br>'+
                    'Segment : <b>' + this.x + '</b>';   						
    				
    	            return tool;
                                        
    			},
    	        shared: true,
//    	        crosshairs:true,
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

	//차트값 조회
function getGraphicalRecipe(){
	$.ajax({
		url:"/donghwa/furnace/recipe/graphicalProcessTrend",
		type:"post",
		dataType:"json",
		data:{
			"recipeNumber":recipeNumber,
			"recipeNumberData":recipeNumberData
		},
		success:function(result){
			
			segmentJson = result.segment;
			timeJson = result.time;
			temperJson = result.temper;
			temperToleranceContJson = result.temperToleranceCont;
			temperToleranceHoldJson = result.temperToleranceHold;
			holdbackTimeoutHeatingJson = result.holdbackTimeoutHeating;
			pressureSetValueJson = result.pressureSetValue;
			pressingCapacityF1Json = result.pressingCapacityF1;
			pressingCapacityF2Json = result.pressingCapacityF2;
			foreceToleranceJson = result.foreceTolerance;
			positionAbsJson = result.positionAbs;
			positionRelativeJson = result.positionRelative;
			distanceToleranceJson = result.distanceTolerance;
			holdingTime1Json = result.holdingTime1;
			holdingTime2Json = result.holdingTime2;
			numberOfLoopsJson = result.numberOfLoops;
			speedOfPlungerJson = result.speedOfPlunger;
			gradientOfForceJson = result.gradientOfForce;

			seriesArray[0] = timeJson;
			seriesArray[1] = temperJson;
			seriesArray[2] = temperToleranceContJson;
			seriesArray[3] = temperToleranceHoldJson;
			seriesArray[4] = holdbackTimeoutHeatingJson;
			seriesArray[5] = pressureSetValueJson;
			seriesArray[6] = pressingCapacityF1Json;
			seriesArray[7] = pressingCapacityF2Json;
			seriesArray[8] = foreceToleranceJson;
			seriesArray[9] = positionAbsJson;
			seriesArray[10] = positionRelativeJson;
			seriesArray[11] = distanceToleranceJson;
			seriesArray[12] = holdingTime1Json;
			seriesArray[13] = holdingTime2Json;
			seriesArray[14] = numberOfLoopsJson;
			seriesArray[15] = speedOfPlungerJson;
			seriesArray[16] = gradientOfForceJson;
			
			var chart = $("#chart").highcharts();
			
			if(typeof chart != "undefined"){
				chart.series[0].update(timeJson,false);
				chart.series[1].update(temperJson,false);
				chart.series[2].update(temperToleranceContJson,false);
				chart.series[3].update(temperToleranceHoldJson,false);
				chart.series[4].update(holdbackTimeoutHeatingJson,false);
				chart.series[5].update(pressureSetValueJson,false);
				chart.series[6].update(pressingCapacityF1Json,false);
				chart.series[7].update(pressingCapacityF2Json,false);
				chart.series[8].update(foreceToleranceJson,false);
				chart.series[9].update(positionAbsJson,false);
				chart.series[10].update(positionRelativeJson,false);
				chart.series[11].update(distanceToleranceJson,false);
				chart.series[12].update(holdingTime1Json,false);
				chart.series[13].update(holdingTime2Json,false);
				chart.series[14].update(numberOfLoopsJson,false);
				chart.series[15].update(speedOfPlungerJson,false);
				chart.series[16].update(gradientOfForceJson,false);
				
				chart.redraw();
			}
			
		}
	});
}


</script>
</body>

</html>