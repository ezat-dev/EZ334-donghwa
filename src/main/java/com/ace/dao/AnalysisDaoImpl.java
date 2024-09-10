package com.ace.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ace.domain.Temper;

@Repository
public class AnalysisDaoImpl implements AnalysisDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Temper> historyTrendPenGroupList(Temper temper) {
		return sqlSession.selectList("temper.historyTrendPenGroupList", temper);
	}

	@Override
	public List<String> historyTrendPenGroupSelect() {
		return sqlSession.selectList("temper.historyTrendPenGroupSelect");
	}

	@Override
	public List<Temper> historyTrendPenGroupChart(Temper temper) {
		return sqlSession.selectList("temper.historyTrendPenGroupChart", temper);
	}

	@Override
	public String historyTrendPenGroupChartGroupName(Temper temper) {
		return sqlSession.selectOne("temper.historyTrendPenGroupChartGroupName",temper);
	}

}
