package com.ace.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ace.domain.Temper;
import com.ace.service.AnalysisService;

@Controller
public class AnalysisController {

	@Autowired
	private AnalysisService analysisService;
	
	private static List<Temper> penListStatic = new ArrayList<Temper>();
	
	
	//히스토리트렌드(테스트용)
	@RequestMapping(value = "/analysis/historyTrend", method = RequestMethod.GET)
	public String historyTrend(Model model) {
		return "/analysis/historyTrendPenGroup.jsp";
	}
	
	//히스토리트렌드 펜그룹 설정
	@RequestMapping(value = "/analysis/historyTrendPenGroup", method = RequestMethod.GET)
	public String historyTrendPenGroup(Model model) {
		return "/analysis/historyTrendPenGroup.jsp";
	}

	//펜그룹의 태그목록 조회
	@RequestMapping(value = "/analysis/historyTrendPenGroupSelect", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> historyTrendPenGroupSelect(Model model){
		Map<String, Object> rtnMap = new HashMap<String, Object>();
		
		
		List<String> penList = analysisService.historyTrendPenGroupSelect();
		
		rtnMap.put("result", penList);
		
		return rtnMap;
	}	
	
	//펜그룹의 태그목록 조회
	//리스트에 표현
	@RequestMapping(value = "/analysis/historyTrendPenGroupList", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> historyTrendPenGroupList(Model model,
			@RequestParam(required = false) String pen_group_name){
		Map<String, Object> rtnMap = new HashMap<String, Object>();
		
		Temper temper = new Temper();
		temper.setPen_group_name(pen_group_name);
		
		List<Temper> penList = analysisService.historyTrendPenGroupList(temper);
		penListStatic = penList;
		
		rtnMap.put("result", penList);
		
		return rtnMap;
	}
	
	//차트데이터 조회
	@RequestMapping(value = "/analysis/historyTrendPenGroupChart", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> historyTrendPenGroupChart(Model model,
			@RequestParam(required = false) String pen_group_name,
			@RequestParam(required = false) String sdateTime,
			@RequestParam(required = false) String edateTime){
		Map<String, Object> rtnMap = new HashMap<String, Object>();
		
		Temper temper = new Temper();
		temper.setSdateTime(sdateTime);
		temper.setEdateTime(edateTime);
		temper.setPen_group_name(pen_group_name);
		
		String penGroupNameConcat = historyTrendPenGroupChartGroupName(pen_group_name);
		
		List<Temper> penList = analysisService.historyTrendPenGroupChart(temper);
		
		List<Object> tdateList = new ArrayList<Object>();
		
		List<Object> c1List = new ArrayList<Object>();
		List<Object> c2List = new ArrayList<Object>();
		List<Object> c3List = new ArrayList<Object>();
		List<Object> c4List = new ArrayList<Object>();
		List<Object> c5List = new ArrayList<Object>();
		List<Object> c6List = new ArrayList<Object>();
		List<Object> c7List = new ArrayList<Object>();
		List<Object> c8List = new ArrayList<Object>();
		List<Object> c9List = new ArrayList<Object>();
		
		for(int i=0; i<penList.size(); i++) {
			tdateList.add(Integer.parseInt(penList.get(i).getTdate()));
			
			List<Object> c1 = new ArrayList<Object>();
			c1.add(Integer.parseInt(penList.get(i).getTdate()));
			c1.add(Integer.parseInt(penList.get(i).getC1()));
			
			List<Object> c2 = new ArrayList<Object>();
			c2.add(Integer.parseInt(penList.get(i).getTdate()));
			c2.add(Integer.parseInt(penList.get(i).getC2()));
			
			List<Object> c3 = new ArrayList<Object>();
			c3.add(Integer.parseInt(penList.get(i).getTdate()));
			c3.add(Integer.parseInt(penList.get(i).getC3()));
			
			List<Object> c4 = new ArrayList<Object>();
			c4.add(Integer.parseInt(penList.get(i).getTdate()));
			c4.add(Integer.parseInt(penList.get(i).getC4()));
			
			List<Object> c5 = new ArrayList<Object>();
			c5.add(Integer.parseInt(penList.get(i).getTdate()));
			c5.add(Integer.parseInt(penList.get(i).getC5()));
			
			List<Object> c6 = new ArrayList<Object>();
			c6.add(Integer.parseInt(penList.get(i).getTdate()));
			c6.add(Integer.parseInt(penList.get(i).getC6()));
			
			List<Object> c7 = new ArrayList<Object>();
			c7.add(Integer.parseInt(penList.get(i).getTdate()));
			c7.add(Integer.parseInt(penList.get(i).getC7()));
			
			List<Object> c8 = new ArrayList<Object>();
			c8.add(Integer.parseInt(penList.get(i).getTdate()));
			c8.add(Integer.parseInt(penList.get(i).getC8()));
			
			List<Object> c9 = new ArrayList<Object>();
			c9.add(Integer.parseInt(penList.get(i).getTdate()));
			c9.add(Integer.parseInt(penList.get(i).getC9()));
			
			
			c1List.add(c1);
			c2List.add(c2);
			c3List.add(c3);
			c4List.add(c4);
			c5List.add(c5);
			c6List.add(c6);
			c7List.add(c7);
			c8List.add(c8);
			c9List.add(c9);
		}
		
		Map<String, Object> c1Map = new HashMap<String, Object>();
		Map<String, Object> c2Map = new HashMap<String, Object>();
		Map<String, Object> c3Map = new HashMap<String, Object>();
		Map<String, Object> c4Map = new HashMap<String, Object>();
		Map<String, Object> c5Map = new HashMap<String, Object>();
		Map<String, Object> c6Map = new HashMap<String, Object>();
		Map<String, Object> c7Map = new HashMap<String, Object>();
		Map<String, Object> c8Map = new HashMap<String, Object>();
		Map<String, Object> c9Map = new HashMap<String, Object>();
		
		c1Map.put("name","c1");
		c1Map.put("color","#FF0000");
		c1Map.put("data",c1List);
		
		c2Map.put("name","c2");
		c2Map.put("color","#F0F0F0");
		c2Map.put("data",c2List);
		
		c3Map.put("name","c3");
		c3Map.put("color","#ABF200");
		c3Map.put("data",c3List);
		
		c4Map.put("name","c4");
		c4Map.put("color","#FFB2D9");
		c4Map.put("data",c4List);
		
		c5Map.put("name","c5");
		c5Map.put("color","#FFC19E");
		c5Map.put("data",c5List);
		
		c6Map.put("name","c6");
		c6Map.put("color","#F15F5F");
		c6Map.put("data",c6List);
		
		c7Map.put("name","c7");
		c7Map.put("color","#5F00FF");
		c7Map.put("data",c7List);
		
		c8Map.put("name","c8");
		c8Map.put("color","#5CD1E5");
		c8Map.put("data",c8List);
		
		c9Map.put("name","c9");
		c9Map.put("color","#2F9D27");
		c9Map.put("data",c9List);
		
		rtnMap.put("tdate", tdateList);
		rtnMap.put("c1", c1Map);
		rtnMap.put("c2", c2Map);
		rtnMap.put("c3", c3Map);
		rtnMap.put("c4", c4Map);
		rtnMap.put("c5", c5Map);
		rtnMap.put("c6", c6Map);
		rtnMap.put("c7", c7Map);
		rtnMap.put("c8", c8Map);
		rtnMap.put("c9", c9Map);
		rtnMap.put("groupConcat", penGroupNameConcat);
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		resultMap.put("data", rtnMap);
		
		return resultMap;
	}
	
	//펜 리스트 group_concat으로
	public String historyTrendPenGroupChartGroupName(String pen_group_name) {
		String result = "";
		
		Temper temper = new Temper();
		temper.setPen_group_name(pen_group_name);
		
		result = analysisService.historyTrendPenGroupChartGroupName(temper);
		
		return result;
	}
	
	
	//추후 펜 그룹명, 펜명으로 펜의 색 리턴
	public String penColor(String pen_group_name, String pen_name) {
		String result = "";
		
		
		return result;
	}
	
}
