<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <%@ include file="../include/mainHeader.jsp" %>
  <title>Recipe</title>
<jsp:include page="../include/pluginpage.jsp"/>
<!-- furnace/recipeList -->
<link rel="stylesheet" href="/donghwa/css/furnace/recipeList/style.css">
</head>
<style>
   a,
   button,
   input,
   select,
   h1,
   h2,
   h3,
   h4,
   h5,
   * {
       box-sizing: border-box;
       margin: 0;
       padding: 0;
       border: none;
       text-decoration: none;
       background: none;
   
       -webkit-font-smoothing: antialiased;
   }
   
   menu, ol, ul {
       list-style-type: none;
       margin: 0;
       padding: 0;
   }
   

.row_select{
	background-color:#9ABCEA !important;
}   
   </style>
   
   
   
  <title>Document</title>
</head>
<body>
  <div class="recipe-list">
    <div class="global"></div>
	<div id="recipe_list" class="frame-1"></div>    
    <div class="recipe-list-footer"></div>
    <div class="new" style="cursor:pointer;" onclick="getRecipeNew();"></div>
    <div class="new2" style="cursor:pointer;" onclick="getRecipeNew();">New</div>
    <div class="delete" style="cursor:pointer;" onclick="getRecipeDelete();"></div>
    <div class="delete2" style="cursor:pointer;" onclick="getRecipeDelete();">Delete</div>
    <div class="copy-recipe" style="cursor:pointer;" onclick="getRecipeCopy();"></div>
    <div class="copy-recipe2" style="cursor:pointer;" onclick="getRecipeCopy();">Copy Recipe</div>
    <div class="show-recipe" style="cursor:pointer;" onclick="getRecipeSelect();"></div>
    <div class="show-recipe2" style="cursor:pointer;" onclick="getRecipeSelect();">Show Recipe</div>
    <div class="read-in" style="cursor:pointer;"></div>
    <div class="read-in2" style="cursor:pointer;">Read In</div>
  </div>
<script>
//전역변수
var recipeTable;
var selectIdx = 0;
var selectDataIdx = 0;
var selectNumber = 0;
var selectName = "";
var selectComment = "";

//로드
$(function(){
	getRecipeList();
})
//이벤트

//함수
	function getRecipeList(){
		
		recipeTable = new Tabulator("#recipe_list",{
		    height:"1030px",
		    layout:"fitColumns",
		    selectable:true,	//로우 선택설정
		    headerVisible:true,
		    headerHozAlign:"center",
		    ajaxConfig:"POST",
			ajaxProgressiveLoad:"scroll",
		    ajaxURL:"/donghwa/furnace/recipe/recipeList",			    			    			    
		    ajaxParams:{
		    	
		    },
		    placeholder:"데이터를 불러오는중입니다.....",
		    paginationSize:20,
			columns:[
				{title:"Number", field:"num", sorter:"string", width:100,
					hozAlign:"center"},
				{title:"Group", field:"r_group", sorter:"string", width:150,
					hozAlign:"center"},
				{title:"Name", field:"r_name", sorter:"string", width:150,
					hozAlign:"center"},
				{title:"Comment", field:"r_comment", sorter:"string", width:150,
					hozAlign:"center"},
				{title:"Date created", field:"r_createtime", sorter:"string", width:180,
					hozAlign:"center"},
				{title:"Last modified", field:"r_updatetime", sorter:"string", width:180,
					hozAlign:"center"},
				{title:"r_idx", field:"r_idx", sorter:"int", width:150,
					hozAlign:"center", visible:false},
				{title:"r_data_idx", field:"r_data_idx", sorter:"int", width:150,
					hozAlign:"center", visible:false},
			],
		    rowFormatter:function(row){
		    	row.getElement().style.backgroundColor = "#FFFFFF";
			},
			rowClick:function(e, row){
	
				$(".tabulator-table > .tabulator-row").each(function(index, item){
					
					if($(this).hasClass("row_select")){							
						$(this).removeClass('row_select');
						row.getElement().className += " row_select";
					}else{
						$("div.row_select").removeClass("row_select");
						row.getElement().className += " row_select";	
					}
				});
				
				var data = row.getData();
				
				selectIdx = data.r_idx;
				selectDataIdx = data.r_data_idx;
				selectNumber = data.num;
				selectName = data.r_name;
				selectComment = data.r_comment;
			},				
		    rowDblClick:function(e, row){
			    var data = row.getData();
				selectIdx = data.r_idx;
				selectDataIdx = data.r_data_idx;
				selectNumber = data.num;
				selectName = data.r_name;
				selectComment = data.r_comment;
				
				getRecipeSelect();
			}
			
		});	
	}

	function getRecipeSelect(){
		var r_idx = selectIdx;
		var r_data_idx = selectDataIdx;
		var r_number = selectNumber;
		var r_name = selectName;
		var r_comment = selectComment;


		$.ajax({
			url:"/donghwa/furnace/recipe/recipeData",
			type:"post",
			dataType:"json",
			data:{
				"r_idx":r_idx,
				"r_data_idx":r_data_idx,
				"r_number":r_number,
				"r_name":r_name,
				"r_comment":r_comment
			},
			success:function(result){

				location.href = result.page;
			}
		});

	}

	//새로운 레시피 생성
	function getRecipeNew(){
		$.ajax({
			url:"/donghwa/furnace/recipe/recipeNew",
			type:"POST",
			dataType:"json",
			data:{},
			success:function(result){
				getRecipeList();
			}
		});
	}
	
	//기존 레시피 복사
	function getRecipeCopy(){
		var r_idx = selectIdx;
		var r_data_idx = selectDataIdx;
		
		$.ajax({
			url:"/donghwa/furnace/recipe/recipeCopy",
			type:"POST",
			dataType:"json",
			data:{
				"r_idx":r_idx,
				"r_data_idx":r_data_idx
			},
			success:function(result){
				getRecipeList();
			}
		});
	}
	
	
	//레시피 삭제
	function getRecipeDelete(){
		var r_idx = selectIdx;
		var r_data_idx = selectDataIdx;
		
		$.ajax({
			url:"/donghwa/furnace/recipe/recipeDelete",
			type:"post",
			dataType:"json",
			data:{
				"r_idx":r_idx,
				"r_data_idx":r_data_idx
			},
			success:function(result){
				console.log(result);
				
				getRecipeList();
			}
		});
	}
//다이얼로그
</script>
</body>
</html>