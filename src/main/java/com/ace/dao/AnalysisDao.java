package com.ace.dao;

import java.util.List;

import com.ace.domain.Temper;

public interface AnalysisDao {

	List<Temper> historyTrendPenGroupList(Temper temper);

	List<String> historyTrendPenGroupSelect();

	List<Temper> historyTrendPenGroupChart(Temper temper);

	String historyTrendPenGroupChartGroupName(Temper temper);

}
