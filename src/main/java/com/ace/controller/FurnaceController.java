package com.ace.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletResponse;

import org.eclipse.milo.opcua.sdk.client.OpcUaClient;
import org.eclipse.milo.opcua.stack.core.UaException;
import org.eclipse.milo.opcua.stack.core.types.builtin.DataValue;
import org.eclipse.milo.opcua.stack.core.types.builtin.NodeId;
import org.eclipse.milo.opcua.stack.core.types.builtin.StatusCode;
import org.eclipse.milo.opcua.stack.core.types.builtin.Variant;
import org.eclipse.milo.opcua.stack.core.types.builtin.unsigned.UShort;
import org.eclipse.milo.opcua.stack.core.types.builtin.unsigned.Unsigned;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ace.domain.Recipe;
import com.ace.service.FurnaceService;
import com.ace.util.NodeMap;

@Controller
public class FurnaceController {

	private static int v_r_idx = 0;
	private static int v_r_data_idx = 0;

	
	@Autowired
	private FurnaceService furnaceService;
	

	
	//레시피 화면
	@RequestMapping(value = "/furnace/recipe", method = RequestMethod.GET)
	public String recipe(Model model) {
		return "/furnace/recipeList.jsp";
	}
	
	//레시피 리스트
	@RequestMapping(value = "/furnace/recipe/recipeList", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> recipeList(Model model) {
		Map<String, Object> rtnMap = new HashMap<String, Object>();
		List<Object> recipeList = new ArrayList<Object>();
		
		List<Recipe> getRecipeList = furnaceService.getRecipeList();
		
//		System.out.println(getRecipeList.size());
		
		for(int i=0; i<getRecipeList.size(); i++) {
			Map<String, Object> rowMap = new HashMap<String, Object>();
			rowMap.put("num", (i+1));
			rowMap.put("r_group", getRecipeList.get(i).getR_group());
			rowMap.put("r_name", getRecipeList.get(i).getR_name());
			rowMap.put("r_comment", getRecipeList.get(i).getR_comment());
			rowMap.put("r_createtime", getRecipeList.get(i).getR_createtime());
			rowMap.put("r_updatetime", getRecipeList.get(i).getR_updatetime());
			
			rowMap.put("r_idx", getRecipeList.get(i).getR_idx());
			rowMap.put("r_data_idx", getRecipeList.get(i).getR_data_idx());
			
			recipeList.add(rowMap);
		}
		
		rtnMap.put("last_page",1);
		rtnMap.put("data", recipeList);
		
		return rtnMap;
	}
	
	//레시피 상세보기
	@RequestMapping(value = "/furnace/recipe/recipeData", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> recipeData(
			@RequestParam(required = false) int r_idx,
			@RequestParam(required = false) int r_data_idx,
			@RequestParam(required = false) int r_number,
			@RequestParam(required = false) String r_name,
			@RequestParam(required = false) String r_comment,
			HttpServletResponse response) throws IOException {
		
		Map<String, Object> rtnMap = new HashMap<String, Object>();
		
		v_r_idx = r_idx;
		v_r_data_idx = r_data_idx;
		
//		System.out.println("v_r_idx : "+v_r_idx+"// v_r_data_idx : "+v_r_data_idx);
		

		rtnMap.put("page","/donghwa/furnace/recipe/recipeDataView");
		
		return rtnMap;		
	}	
	
	@RequestMapping(value = "/furnace/recipe/recipeDataView", method = RequestMethod.GET)
	public String recipeView(Model model) {
		String rtnPage = "";
		//선택한 행의 idx값이 없으면
		if(v_r_idx == 0 && v_r_data_idx == 0) {
			//전체 리스트로 이동
			rtnPage = "/furnace/recipeList.jsp";
		}else {
			rtnPage = "/furnace/recipeData.jsp";
		}		
		
		return rtnPage;
	}	
	
	//레시피 상세보기 값 조회
	@RequestMapping(value = "/furnace/recipe/recipeDataList", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> recipeDataList(Model model){
		Map<String, Object> rtnMap = new HashMap<String, Object>();
		List<Object> recipeList = new ArrayList<Object>();
		
		Recipe recipe = new Recipe();
		
		recipe.setR_idx(v_r_idx);
		recipe.setR_data_idx(v_r_data_idx);
		
		List<Recipe> recipeDataList = furnaceService.getRecipeDataList(recipe);
		
//		System.out.println("레시피의 데이터 수 : "+recipeDataList.size());
		
		for(int i=0; i<recipeDataList.size(); i++) {
			Map<String, Object> rowMap = new HashMap<String, Object>();
			
			rowMap.put("number", recipeDataList.get(i).getR_idx());
			rowMap.put("numberData", recipeDataList.get(i).getR_data_idx());
			rowMap.put("name", recipeDataList.get(i).getR_name());
			rowMap.put("comment", recipeDataList.get(i).getR_comment());
			
			rowMap.put("process-step-"+i,recipeDataList.get(i).getProcess_step());
			rowMap.put("time-"+i,recipeDataList.get(i).getTime());
			rowMap.put("temperature-"+i,recipeDataList.get(i).getTemper());
			rowMap.put("temperature-tc-"+i,recipeDataList.get(i).getTemper_tolerance_cont());
			rowMap.put("temperature-th-"+i,recipeDataList.get(i).getTemper_tolerance_hold());
			rowMap.put("hbth-"+i,recipeDataList.get(i).getHoldback_timeout_heating());
			rowMap.put("pressure-sv-"+i,recipeDataList.get(i).getPressure_set_value());
			rowMap.put("pressing-one-"+i,recipeDataList.get(i).getPressing_capacity_f1());
			rowMap.put("pressing-two-"+i,recipeDataList.get(i).getPressing_capacity_f2());
			rowMap.put("force-tol-"+i,recipeDataList.get(i).getForece_tolerance());
			rowMap.put("position-ab-"+i,recipeDataList.get(i).getPosition_abs());
			rowMap.put("position-rel-"+i,recipeDataList.get(i).getPosition_relative());
			rowMap.put("distance-"+i,recipeDataList.get(i).getDistance_tolerance());
			rowMap.put("holding-one-"+i,recipeDataList.get(i).getHolding_time1());
			rowMap.put("holding-two-"+i,recipeDataList.get(i).getHolding_time2());
			rowMap.put("number-loops-"+i,recipeDataList.get(i).getNumber_of_loops());
			rowMap.put("speed-plunger-"+i,recipeDataList.get(i).getSpeed_of_plunger());
			rowMap.put("gradient-force-"+i,recipeDataList.get(i).getGradient_of_force());
			rowMap.put("fastcooling-"+i,recipeDataList.get(i).getFastcooling());
			rowMap.put("gas-n-"+i,recipeDataList.get(i).getGas_n2());
			rowMap.put("gas-a-"+i,recipeDataList.get(i).getGas_ar());
			rowMap.put("spare-"+i,recipeDataList.get(i).getSpare());
			rowMap.put("hydrulic-off-"+i,recipeDataList.get(i).getHydraulic_unit_off());
			rowMap.put("press-capacity-"+i,recipeDataList.get(i).getPress_capacity_control());
			rowMap.put("press-position-"+i,recipeDataList.get(i).getPress_position_control());
			rowMap.put("press-distance-"+i,recipeDataList.get(i).getPress_distance_control());
			
			recipeList.add(rowMap);
		}
		
		rtnMap.put("data",recipeList);
		
		//선택한 레시피의 기준값 초기화
		return rtnMap;
	}
	
	//레시피값 PLC 쓰기
	@RequestMapping(value = "/furnace/recipe/plcWrite", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> recipePlcWrite(@RequestBody List<NodeValuePair> nodeValuePairs)
	        throws UaException, InterruptedException, ExecutionException {
		
	    Map<String, String> response = new HashMap<String, String>();
	    try {
	
	        UShort namespaceIndex = Unsigned.ushort(2);
	        boolean allGood = true;
	
	        int chunkSize = 50;
	        for (int i = 0; i < nodeValuePairs.size(); i += chunkSize) {
	            int end = Math.min(nodeValuePairs.size(), i + chunkSize);
	            List<NodeValuePair> chunk = nodeValuePairs.subList(i, end);
	
	            List<CompletableFuture<StatusCode>> futures = new ArrayList<CompletableFuture<StatusCode>>();
	
	            for (NodeValuePair pair : chunk) {
	                String nodeIdStr = pair.getNodeId();
	                short valueShort = pair.getValue();

	                	NodeId nodeId = new NodeId(namespaceIndex, nodeIdStr);
		                DataValue dataValue = new DataValue(new Variant(valueShort));
		                
		                futures.add(MainController.client.writeValue(nodeId, dataValue));
		                
	            }
	
	            for (CompletableFuture<StatusCode> future : futures) {
	                StatusCode statusCode = future.get();
	                if (!statusCode.isGood()) {
	                    allGood = false;
	                }
	            }
	        }
	
	        if (allGood) {
	            response.put("status", "success");
	            response.put("message", "All values written successfully");
	        } else {
	            response.put("status", "failure");
	            response.put("message", "Some values failed to write");
	        }
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
	
	    return response;
	}
	
	//레시피 이름, 코멘트 쓰기
	@RequestMapping(value = "/furnace/recipe/plcWriteString", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> recipePlcWriteString(@RequestBody List<NodeValuePair> nodeValuePairs)
	        throws UaException, InterruptedException, ExecutionException {
		
	    Map<String, String> response = new HashMap<String, String>();
	    try {
	
	        UShort namespaceIndex = Unsigned.ushort(2);
	        boolean allGood = true;
	
	        
            List<CompletableFuture<StatusCode>> futures = new ArrayList<CompletableFuture<StatusCode>>();

            for (NodeValuePair pair : nodeValuePairs) {
                String nodeIdStr = pair.getNodeId();
                String valueString = pair.getValueString();
                
                List<String> stringValueList = new ArrayList<String>();
                String stringNow = "";
                
                
                int len = valueString.length();
                	                
                for(int j=0; j<len; j++) {
                	
                	
                	if(j % 2 == 0) {
                		stringNow = valueString.substring(j, j+1);
                	}else {
                		stringNow += valueString.substring(j, j+1);
                		stringValueList.add(stringNow);
                		stringNow = "";
                	}
                }
                
                if("string_name".equals(nodeIdStr)) {
                	for(int k = 0; k<stringValueList.size(); k++) {
                		NodeId nodeId = new NodeId(namespaceIndex, "DONGHWA.PLC.RECIPE.NAME.NAME"+k);
                		DataValue dataValue = new DataValue(new Variant(stringValueList.get(k)));
                		
                		futures.add(MainController.client.writeValue(nodeId, dataValue));
                	}
                }else if("string_comment".equals(nodeIdStr)) {
                	for(int k = 0; k<stringValueList.size(); k++) {
                		NodeId nodeId = new NodeId(namespaceIndex, "DONGHWA.PLC.RECIPE.COMMENT.COMMENT"+k);
                		DataValue dataValue = new DataValue(new Variant(stringValueList.get(k)));
                		
                		futures.add(MainController.client.writeValue(nodeId, dataValue));
                	}
                }
            }
	        
	        if (allGood) {
	            response.put("status", "success");
	            response.put("message", "All values written successfully");
	        } else {
	            response.put("status", "failure");
	            response.put("message", "Some values failed to write");
	        }
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
	
	    return response;
	}
	
	
	//레시피값 DB 쓰기
	@RequestMapping(value = "/furnace/recipe/databaseWrite", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> recipeDataWrite(@RequestBody List<Map<String, Object>> dataList) {
		
	    Map<String, String> response = new HashMap<String, String>();
	    
//	    System.out.println(dataList.toString());
    
	    for(int i=0; i<dataList.size(); i++) {
	    	Map<String, Object> nowMap = dataList.get(i);
	    	
	    	Recipe recipe = new Recipe();
	    	
			recipe.setR_f_idx(v_r_idx);
			recipe.setR_f_data_idx(v_r_data_idx);
			recipe.setR_name(nowMap.get("name").toString());
			recipe.setR_comment(nowMap.get("comment").toString());
			recipe.setSegment(Short.parseShort(nowMap.get("segment").toString()));
			recipe.setProcess_step(Short.parseShort(nowMap.get("process_step").toString()));	    
			recipe.setTime(Short.parseShort(nowMap.get("time").toString()));	    
			recipe.setTemper(Short.parseShort(nowMap.get("temperature").toString()));	    
			recipe.setTemper_tolerance_cont(Short.parseShort(nowMap.get("temperature_tc").toString()));	    
			recipe.setTemper_tolerance_hold(Short.parseShort(nowMap.get("temperature_th").toString()));	    
			recipe.setHoldback_timeout_heating(Short.parseShort(nowMap.get("hbth").toString()));	    
			recipe.setPressure_set_value(Short.parseShort(nowMap.get("pressure_sv").toString()));	    
			recipe.setPressing_capacity_f1(Short.parseShort(nowMap.get("pressing_one").toString()));	    
			recipe.setPressing_capacity_f2(Short.parseShort(nowMap.get("pressing_two").toString()));	    
			recipe.setForece_tolerance(Short.parseShort(nowMap.get("force_tol").toString()));	    
			recipe.setPosition_abs(Short.parseShort(nowMap.get("position_ab").toString()));	    
			recipe.setPosition_relative(Short.parseShort(nowMap.get("position_rel").toString()));	    
			recipe.setDistance_tolerance(Short.parseShort(nowMap.get("distance").toString()));	    
			recipe.setHolding_time1(Short.parseShort(nowMap.get("holding_one").toString()));	    
			recipe.setHolding_time2(Short.parseShort(nowMap.get("holding_two").toString()));	    
			recipe.setNumber_of_loops(Short.parseShort(nowMap.get("number_loops").toString()));	    
			recipe.setSpeed_of_plunger(Short.parseShort(nowMap.get("speed_plunger").toString()));	    
			recipe.setGradient_of_force(Short.parseShort(nowMap.get("gradient_force").toString()));	    
			recipe.setFastcooling(Short.parseShort(nowMap.get("fastcooling").toString()));	    
			recipe.setGas_n2(Short.parseShort(nowMap.get("gas_n").toString()));	    
			recipe.setGas_ar(Short.parseShort(nowMap.get("gas_a").toString()));	    
			recipe.setSpare(Short.parseShort(nowMap.get("spare").toString()));
			recipe.setHydraulic_unit_off(Short.parseShort(nowMap.get("hydrulic_off").toString()));
			recipe.setPress_capacity_control(Short.parseShort(nowMap.get("press_capacity").toString()));
			recipe.setPress_position_control(Short.parseShort(nowMap.get("press_position").toString()));
			recipe.setPress_distance_control(Short.parseShort(nowMap.get("press_distance").toString()));
			
			
			//레시피
			furnaceService.recipeDataWrite(recipe);
		}

	    
	    
	    return response;
	}
	
	//레시피 - 새 레시피 추가
	@RequestMapping(value = "/furnace/recipe/recipeNew", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> recipeNew(Model model) {
		
	    Map<String, Object> rtnMap = new HashMap<String, Object>();
	    
	    
	    //새 레시피 추가
	    furnaceService.recipeNew();
	    
	    return rtnMap;
	}
	
	//레시피 - 기존레시피 복사
	@RequestMapping(value = "/furnace/recipe/recipeCopy", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> recipeCopy(Model model,
			@RequestParam(required = false)int r_idx,
			@RequestParam(required = false)int r_data_idx) {
		
	    Map<String, Object> rtnMap = new HashMap<String, Object>();

	    String recipeCheck = recipeCheck(r_idx, r_data_idx);
	    
	    if("registRecipe".equals(recipeCheck)) {
		    Recipe recipe = new Recipe();
		    recipe.setR_idx(r_idx);
		    recipe.setR_data_idx(r_data_idx);
		    
		    furnaceService.recipeCopy(recipe);
	    }
	    
	    rtnMap.put("status", recipeCheck);
	    
	    return rtnMap;
	}
	
	//레시피 - 레시피 삭제
	@RequestMapping(value = "/furnace/recipe/recipeDelete", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> recipeDelete(Model model,
			@RequestParam(required = false)int r_idx,
			@RequestParam(required = false)int r_data_idx) {
		
	    Map<String, Object> rtnMap = new HashMap<String, Object>();

	    String recipeCheck = recipeCheck(r_idx, r_data_idx);
	    
	    if("registRecipe".equals(recipeCheck)) {	    
		    Recipe recipe = new Recipe();
		    recipe.setR_idx(r_idx);
		    recipe.setR_data_idx(r_data_idx);
		    
		    furnaceService.recipeDelete(recipe);
	    }
	    
	    rtnMap.put("status", recipeCheck);	    
	    
	    return rtnMap;
	}
	
	public String recipeCheck(int r_idx, int r_data_idx) {
		String result = "";
		int recipeCount = 0;
		
		Recipe recipe = new Recipe();
		recipe.setR_idx(r_idx);
		recipe.setR_data_idx(r_data_idx);
		
		if(r_idx == 0 && r_data_idx == 0) {
			result = "noSelecrRow";
		}else {
			recipeCount = furnaceService.recipeCheck(recipe);
			
			if(recipeCount == 0) {
				result = "notRegistRecipe";
			}else {
				result = "registRecipe";
			}
		}
		
		
		return result;
	}
	
	
	//레시피 - 글로벌 파라미터 팝업창 열기
	@RequestMapping(value = "/furnace/recipe/globalParameter", method = RequestMethod.GET)
	public String globalParameter(Model model) {
		return "/furnace/globalParameter.jsp";
	}	
	
	public static class NodeValuePair {
	    private String nodeId;
	    private short value;
	    private String valueString;
	
	    public String getNodeId() {
	        return nodeId;
	    }
	
	    public void setNodeId(String nodeId) {
	        this.nodeId = nodeId;
	    }
	
	    public short getValue() {
	        return value;
	    }
	
	    public void setValue(short value) {
	        this.value = value;
	    }
	    
	    public String getValueString() {
	    	return valueString;
	    }
	    
	    public void setValueString(String valueString) {
	    	this.valueString = valueString;
	    }
	}
	
	//레시피 - 
	@RequestMapping(value = "/furnace/manualOperation", method = RequestMethod.GET)
	public String manualOperation(Model model) {
		System.out.println("자동/수동 조작팝업 이동");
		
		return "/furnace/manualOperation.jsp";
	}	
	
	//레시피 트렌드
	@RequestMapping(value = "/furnace/recipe/graphicalProcess", method = RequestMethod.GET)
	public String graphicalProcess(Model model) {
		
		String result = "/furnace/graphicalProcess.jsp";
		
		return result;
	}
	
	@RequestMapping(value = "/furnace/recipe/graphicalProcessTrend", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> graphicalProcessTrend(Model model,
			@RequestParam(required = false)int recipeNumber,
			@RequestParam(required = false)int recipeNumberData) {
		
		Map<String, Object> rtnMap = new HashMap<String, Object>();
		
		Recipe recipe = new Recipe();
		recipe.setR_f_idx(recipeNumber);
		recipe.setR_f_data_idx(recipeNumberData);
		
		
		List<Recipe> recipeDataList = furnaceService.graphicalProcessTrend(recipe);
		
		List<Object> segmentList = new ArrayList<Object>();
		
		List<Object> timeList = new ArrayList<Object>();
		List<Object> temperList = new ArrayList<Object>();
		List<Object> temperToleranceContList = new ArrayList<Object>();
		List<Object> temperToleranceHoldList = new ArrayList<Object>();
		List<Object> holdbackTimeoutHeatingList = new ArrayList<Object>();
		List<Object> pressureSetValueList = new ArrayList<Object>();
		List<Object> pressing_capacityF1List = new ArrayList<Object>();
		List<Object> pressing_capacityF2List = new ArrayList<Object>();
		List<Object> foreceToleranceList = new ArrayList<Object>();
		List<Object> positionAbsList = new ArrayList<Object>();
		List<Object> positionRelativeList = new ArrayList<Object>();
		List<Object> distanceToleranceList = new ArrayList<Object>();
		List<Object> holdingTime1List = new ArrayList<Object>();
		List<Object> holdingTime2List = new ArrayList<Object>();
		List<Object> numberOfLoopsList = new ArrayList<Object>();
		List<Object> speedOfPlungerList = new ArrayList<Object>();
		List<Object> gradientOfForceList = new ArrayList<Object>();
		
		for(int i=0; i<recipeDataList.size(); i++) {
			segmentList.add(recipeDataList.get(i).getSegment());
			
			List<Short> time = new ArrayList<Short>();
			time.add(recipeDataList.get(i).getSegment());
			time.add(recipeDataList.get(i).getTime());
			
			List<Short> temper = new ArrayList<Short>();
			temper.add(recipeDataList.get(i).getSegment());
			temper.add(recipeDataList.get(i).getTemper());
			
			List<Short> temperToleranceCont = new ArrayList<Short>();
			temperToleranceCont.add(recipeDataList.get(i).getSegment());
			temperToleranceCont.add(recipeDataList.get(i).getTemper_tolerance_cont());
			
			List<Short> temperToleranceHold = new ArrayList<Short>();
			temperToleranceHold.add(recipeDataList.get(i).getSegment());
			temperToleranceHold.add(recipeDataList.get(i).getTemper_tolerance_hold());
			
			List<Short> holdbackTimeoutHeating = new ArrayList<Short>();
			holdbackTimeoutHeating.add(recipeDataList.get(i).getSegment());
			holdbackTimeoutHeating.add(recipeDataList.get(i).getHoldback_timeout_heating());
			
			List<Short> pressureSetValue = new ArrayList<Short>();
			pressureSetValue.add(recipeDataList.get(i).getSegment());
			pressureSetValue.add(recipeDataList.get(i).getPressure_set_value());
			
			List<Short> pressing_capacityF1 = new ArrayList<Short>();
			pressing_capacityF1.add(recipeDataList.get(i).getSegment());
			pressing_capacityF1.add(recipeDataList.get(i).getPressing_capacity_f1());
			
			List<Short> pressing_capacityF2 = new ArrayList<Short>();
			pressing_capacityF2.add(recipeDataList.get(i).getSegment());
			pressing_capacityF2.add(recipeDataList.get(i).getPressing_capacity_f2());
			
			List<Short> foreceTolerance = new ArrayList<Short>();
			foreceTolerance.add(recipeDataList.get(i).getSegment());
			foreceTolerance.add(recipeDataList.get(i).getForece_tolerance());
			
			List<Short> positionAbs = new ArrayList<Short>();
			positionAbs.add(recipeDataList.get(i).getSegment());
			positionAbs.add(recipeDataList.get(i).getPosition_abs());
			
			List<Short> positionRelative = new ArrayList<Short>();
			positionRelative.add(recipeDataList.get(i).getSegment());
			positionRelative.add(recipeDataList.get(i).getPosition_relative());
			
			List<Short> distanceTolerance = new ArrayList<Short>();
			distanceTolerance.add(recipeDataList.get(i).getSegment());
			distanceTolerance.add(recipeDataList.get(i).getDistance_tolerance());
			
			List<Short> holdingTime1 = new ArrayList<Short>();
			holdingTime1.add(recipeDataList.get(i).getSegment());
			holdingTime1.add(recipeDataList.get(i).getHolding_time1());
			
			List<Short> holdingTime2 = new ArrayList<Short>();
			holdingTime2.add(recipeDataList.get(i).getSegment());
			holdingTime2.add(recipeDataList.get(i).getHolding_time2());
			
			List<Short> numberOfLoops = new ArrayList<Short>();
			numberOfLoops.add(recipeDataList.get(i).getSegment());
			numberOfLoops.add(recipeDataList.get(i).getNumber_of_loops());
			

			
			List<Short> gradientOfForce = new ArrayList<Short>();
			gradientOfForce.add(recipeDataList.get(i).getSegment());
			gradientOfForce.add(recipeDataList.get(i).getGradient_of_force());
			
			List<Short> speedOfPlunger = new ArrayList<Short>();
			speedOfPlunger.add(recipeDataList.get(i).getSegment());
			speedOfPlunger.add(recipeDataList.get(i).getSpeed_of_plunger());			

			
			//각 세그먼트의 값을 리스트에 담기
			timeList.add(time);
			temperList.add(temper);
			temperToleranceContList.add(temperToleranceCont);
			temperToleranceHoldList.add(temperToleranceHold);
			holdbackTimeoutHeatingList.add(holdbackTimeoutHeating);
			pressureSetValueList.add(pressureSetValue);
			pressing_capacityF1List.add(pressing_capacityF1);
			pressing_capacityF2List.add(pressing_capacityF2);
			foreceToleranceList.add(foreceTolerance);
			positionAbsList.add(positionAbs);
			positionRelativeList.add(positionRelative);
			distanceToleranceList.add(distanceTolerance);
			holdingTime1List.add(holdingTime1);
			holdingTime2List.add(holdingTime2);
			numberOfLoopsList.add(numberOfLoops);
			speedOfPlungerList.add(speedOfPlunger);
			gradientOfForceList.add(gradientOfForce);
		}
		
		//맵에 값 담기
		Map<String, Object> timeMap = new HashMap<String, Object>();
		Map<String, Object> temperMap = new HashMap<String, Object>();
		Map<String, Object> temperToleranceContMap = new HashMap<String, Object>();
		Map<String, Object> temperToleranceHoldMap = new HashMap<String, Object>();
		Map<String, Object> holdbackTimeoutHeatingMap = new HashMap<String, Object>();
		Map<String, Object> pressureSetValueMap = new HashMap<String, Object>();
		Map<String, Object> pressingCapacityF1Map = new HashMap<String, Object>();
		Map<String, Object> pressingCapacityF2Map = new HashMap<String, Object>();
		Map<String, Object> foreceToleranceMap = new HashMap<String, Object>();
		Map<String, Object> positionAbsMap = new HashMap<String, Object>();
		Map<String, Object> positionRelativeMap = new HashMap<String, Object>();
		Map<String, Object> distanceToleranceMap = new HashMap<String, Object>();
		Map<String, Object> holdingTime1Map = new HashMap<String, Object>();
		Map<String, Object> holdingTime2Map = new HashMap<String, Object>();
		Map<String, Object> numberOfLoopsMap = new HashMap<String, Object>();
		Map<String, Object> speedOfPlungerMap = new HashMap<String, Object>();
		Map<String, Object> gradientOfForceMap = new HashMap<String, Object>();
		
		
		timeMap.put("name", "time");
		timeMap.put("data", timeList);
		timeMap.put("step", "right");
//		timeMap.put("color", "#0000FF");
		
		temperMap.put("name", "temper");
		temperMap.put("data", temperList);
		temperMap.put("step", "right");
//		temperMap.put("color", "#00FF00");
		
		temperToleranceContMap.put("name", "temperToleranceCont");
		temperToleranceContMap.put("data", temperToleranceContList);
		temperToleranceContMap.put("step", "right");
//		temperToleranceContMap.put("color", "#0F0F0");
		
		temperToleranceHoldMap.put("name", "temperToleranceHold");
		temperToleranceHoldMap.put("data", temperToleranceHoldList);
		temperToleranceHoldMap.put("step", "right");
//		temperToleranceHoldMap.put("color", "#F0FF0");
		
		holdbackTimeoutHeatingMap.put("name", "holdbackTimeoutHeating");
		holdbackTimeoutHeatingMap.put("data", holdbackTimeoutHeatingList);
		holdbackTimeoutHeatingMap.put("step", "right");
//		holdbackTimeoutHeatingMap.put("color", "#AA0000");
		
		pressureSetValueMap.put("name", "pressureSetValue");
		pressureSetValueMap.put("data", pressureSetValueList);
		pressureSetValueMap.put("step", "right");
//		pressureSetValueMap.put("color", "#00AA00");
		
		pressingCapacityF1Map.put("name", "pressingCapacityF1");
		pressingCapacityF1Map.put("data", pressing_capacityF1List);
		pressingCapacityF1Map.put("step", "right");
//		pressingCapacityF1Map.put("color", "#F0FF0");
		
		pressingCapacityF2Map.put("name", "pressingCapacityF2");
		pressingCapacityF2Map.put("data", pressing_capacityF2List);
		pressingCapacityF2Map.put("step", "right");
//		pressingCapacityF2Map.put("color", "#F0FF0");
		
		foreceToleranceMap.put("name", "foreceTolerance");
		foreceToleranceMap.put("data", foreceToleranceList);
		foreceToleranceMap.put("step", "right");
//		foreceToleranceMap.put("color", "#F0FF0");
		
		positionAbsMap.put("name", "positionAbs");
		positionAbsMap.put("data", positionAbsList);
		positionAbsMap.put("step", "right");
//		positionAbsMap.put("color", "#F0FF0");
		
		positionRelativeMap.put("name", "positionRelative");
		positionRelativeMap.put("data", positionRelativeList);
		positionRelativeMap.put("step", "right");
//		positionRelativeMap.put("color", "#F0FF0");
		
		distanceToleranceMap.put("name", "distanceTolerance");
		distanceToleranceMap.put("data", distanceToleranceList);
		distanceToleranceMap.put("step", "right");
//		distanceToleranceMap.put("color", "#F0FF0");
		
		holdingTime1Map.put("name", "holdingTime1");
		holdingTime1Map.put("data", holdingTime1List);
		holdingTime1Map.put("step", "right");
//		holdingTime1Map.put("color", "#F0FF0");
		
		holdingTime2Map.put("name", "holdingTime2");
		holdingTime2Map.put("data", holdingTime2List);
		holdingTime2Map.put("step", "right");
//		holdingTime2Map.put("color", "#F0FF0");
		
		numberOfLoopsMap.put("name", "numberOfLoops");
		numberOfLoopsMap.put("data", numberOfLoopsList);
		numberOfLoopsMap.put("step", "right");
//		numberOfLoopsMap.put("color", "#F0FF0");
		
		speedOfPlungerMap.put("name", "speedOfPlunger");
		speedOfPlungerMap.put("data", speedOfPlungerList);
		speedOfPlungerMap.put("step", "right");
//		speedOfPlungerMap.put("color", "#F0FF0");
		
		gradientOfForceMap.put("name", "gradientOfForce");
		gradientOfForceMap.put("data", gradientOfForceList);
		gradientOfForceMap.put("step", "right");
//		gradientOfForceMap.put("color", "#F0FF0");
		
		
		rtnMap.put("segment", segmentList);
		
		rtnMap.put("time", timeMap);
		rtnMap.put("temper", temperMap);
		rtnMap.put("temperToleranceCont", temperToleranceContMap);
		rtnMap.put("temperToleranceHold", temperToleranceHoldMap);
		rtnMap.put("holdbackTimeoutHeating", holdbackTimeoutHeatingMap);
		rtnMap.put("pressureSetValue", pressureSetValueMap);
		rtnMap.put("pressingCapacityF1", pressingCapacityF1Map);
		rtnMap.put("pressingCapacityF2", pressingCapacityF2Map);
		rtnMap.put("foreceTolerance", foreceToleranceMap);
		rtnMap.put("positionAbs", positionAbsMap);
		rtnMap.put("positionRelative", positionRelativeMap);
		rtnMap.put("distanceTolerance", distanceToleranceMap);
		rtnMap.put("holdingTime1", holdingTime1Map);
		rtnMap.put("holdingTime2", holdingTime2Map);
		rtnMap.put("numberOfLoops", numberOfLoopsMap);
		rtnMap.put("speedOfPlunger", speedOfPlungerMap);
		rtnMap.put("gradientOfForce", gradientOfForceMap);
		
		return rtnMap;
	}
	
	 
}
