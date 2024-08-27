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
	

}
