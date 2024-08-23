function validateNumberInput(event) {
    const input = event.target;
    input.value = input.value.replace(/[^0-9]/g, '');

    const inputId = input.id;
    const inputValue = input.value;
    const inputIdNumber = parseInt(inputId.replace('id', ''), 10);

    //id가 id로 시작하는 전체태그 배열
    const allInputs = document.querySelectorAll('input[id^="id"]');

    if (inputIdNumber % 22 == 0) {
        console.log("inputIdNumber : "+inputIdNumber);
        
        //process_step에서 입력된 값이 0
    	if (inputValue == "0") {
            allInputs.forEach(field => {
                const fieldId = field.id;
                const fieldIdNumber = parseInt(fieldId.replace('id', ''), 10);
                if (fieldIdNumber > inputIdNumber+22) {
                    field.disabled = true;
                    field.value = "";  // 비활성화될 때 값도 초기화합니다.
                }
            });        	
    	}else if(inputValue == "4"){
            
            allInputs.forEach(field => {
                const fieldId = field.id;
                const fieldIdNumber = parseInt(fieldId.replace('id', ''), 10);
                
            	if (fieldIdNumber >= (inputIdNumber+18) && fieldIdNumber <= (inputIdNumber+22)) {
                    if (fieldId) {
                    	field.disabled = false;
                    }                	
				}
            });
        }else if(inputValue == "1" || inputValue == "2" || inputValue == "3"){
            //1,2,3일때
            allInputs.forEach(field => {
                const fieldId = field.id;
                const fieldIdNumber = parseInt(fieldId.replace('id', ''), 10);
                
            	if (fieldIdNumber >= (inputIdNumber) && fieldIdNumber < (inputIdNumber+22)) {
                	console.log("123 : "+fieldId);
                	console.log("123 : "+fieldIdNumber);
                	field.disabled = false;
				}
            });
        }
    }
}



  $(document).ready(function(){
      $("#readValuesBtn").click(function(){
          $.ajax({
              url: "/donghwa/opc",
              method: "GET",
              success: function(data) {
                  $("#readValuesResult").html(JSON.stringify(data, null, 2));
              },
              error: function(error) {
                  $("#readValuesResult").html("Error: " + error.responseText);
              }
          });
      });


      $("#readSingleValueBtn").click(function(){
          $.ajax({
              url: "/",
              method: "GET",
              success: function(data) {
                  $("#readSingleValueResult").html(data);
              },
              error: function(error) {
                  $("#readSingleValueResult").html("Error: " + error.responseText);
              }
          });
      });


  });


$(document).ready(function() {
    // 버튼 클릭 이벤트 핸들러 설정
    $('.save-to-plc').click(function() {
        const data = [];

        // 모든 입력 필드를 순회하며 데이터 배열에 추가
        $('.input-text').each(function() {
            const inputField = $(this);
            const value = inputField.val(); // 입력된 값
            const nodeId = inputField.attr('name'); // name 속성 값

            data.push({
                nodeId: nodeId,
                value: value
            });
        });

        // 모든 체크박스를 순회하며 데이터 배열에 추가
        $('.input-checkbox').each(function() {
            const inputField = $(this);
            const value = inputField.is(':checked') ? 1 : 0; // 체크 상태 확인
            const nodeId = inputField.attr('name'); // name 속성 값

            data.push({
                nodeId: nodeId,
                value: value
            });
        });

        // AJAX 요청을 통해 데이터 전송
        sendAjax(data);
    });

    //레시피 초기데이터 조회
    getRecipeDataList();
});

        function sendAjax(data) {
            $.ajax({
                url: "/donghwa/furnace/recipe/plcWrite",
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8", // JSON 데이터를 전송할 경우 필요
                data: JSON.stringify(data), // 데이터를 JSON 문자열로 변환하여 전송
                success: function(response) {
                    console.log('서버 응답:', response);
                },
                error: function(xhr, status, error) {
                    console.error('AJAX 에러:', status, error);
                }
            });
        }

        //레시피 데이터 조회
        function getRecipeDataList(){
            console.log("ddd");

            $.ajax({
                url:"/donghwa/furnace/recipe/recipeDataList",
                type:"post",
                dataType:"json",
                data:{},
                success:function(result){
                    var data = result.data;
                    console.log(data.length);
                    
                    
                    
                }
            });
        }
