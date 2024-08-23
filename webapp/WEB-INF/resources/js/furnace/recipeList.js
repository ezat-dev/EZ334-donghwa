//전역변수
var recipeTable;

//로드
$(function(){
	getRecipeList();
})
//이벤트

//함수
	function getRecipeList(){
		
		recipeTable = new Tabulator("#recipe_list",{
		    height:"650px",
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
				{title:"Date created", field:"r_createtime", sorter:"string", width:150,
					hozAlign:"center"},
				{title:"Last modified", field:"r_updatetime", sorter:"string", width:150,
					hozAlign:"center"},
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
			},				
		    rowDblClick:function(e, row){
			    var data = row.getData();
				getRecipeSelect(data);
			}
			
		});	
	}

	function getRecipeSelect(rowData){
		console.log(rowData);
		var r_idx = rowData.r_idx;
		var r_data_idx = rowData.r_data_idx;

		console.log("asd");

		$.ajax({
			url:"/donghwa/furnace/recipe/recipeData",
			type:"post",
			dataType:"json",
			data:{
				"r_idx":r_idx,
				"r_data_idx":r_data_idx
			},
			success:function(result){
				console.log(result);

				location.href = result.page;
			}
		});

	}

//다이얼로그