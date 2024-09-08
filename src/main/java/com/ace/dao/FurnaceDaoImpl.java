package com.ace.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ace.domain.Recipe;

@Repository
public class FurnaceDaoImpl implements FurnaceDao{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Recipe> getRecipeList() {
		return sqlSession.selectList("recipe.getRecipeList");
	}

	@Override
	public List<Recipe> getRecipeDataList(Recipe recipe) {
		return sqlSession.selectList("recipe.getRecipeDataList", recipe);
	}

	@Override
	public void recipeDataWrite(Recipe recipe) {
		sqlSession.insert("recipe.recipeDataWrite", recipe);
	}

	@Override
	public void recipeNew() {
		sqlSession.insert("recipe.recipeNew");
	}

	@Override
	public void recipeCopy(Recipe recipe) {
		sqlSession.insert("recipe.recipeCopy", recipe);
	}

	@Override
	public void recipeDelete(Recipe recipe) {
		sqlSession.update("recipe.recipeDelete",recipe);
	}

	@Override
	public int recipeCheck(Recipe recipe) {
		return sqlSession.selectOne("recipe.recipeCheck", recipe);
	}

	@Override
	public List<Recipe> graphicalProcessTrend(Recipe recipe) {
		return sqlSession.selectList("recipe.graphicalProcessTrend", recipe);
	}
	

}
