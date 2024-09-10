package com.ace.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ace.dao.AnalysisDao;
import com.ace.domain.Temper;

@Service
public class AnalysisServiceImpl implements AnalysisService{

	@Autowired
	private AnalysisDao analysisDao;
	

	@Override
	public List<String> historyTrendPenGroupSelect() {
		return analysisDao.historyTrendPenGroupSelect();
	}
	
	@Override
	public List<Temper> historyTrendPenGroupList(Temper temper) {
		return analysisDao.historyTrendPenGroupList(temper);
	}

	@Override
	public List<Temper> historyTrendPenGroupChart(Temper temper) {
		return analysisDao.historyTrendPenGroupChart(temper);
	}

	@Override
	public String historyTrendPenGroupChartGroupName(Temper temper) {
		return analysisDao.historyTrendPenGroupChartGroupName(temper);
	}



}
