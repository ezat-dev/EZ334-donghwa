package com.ace.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ace.dao.FurnaceDao;
import com.ace.domain.Recipe;

@Service
public class FurnaceServiceImpl implements FurnaceService{

	@Autowired
	private FurnaceDao furnaceDao;

	@Override
	public List<Recipe> getRecipeList() {
		return furnaceDao.getRecipeList();
	}

	@Override
	public List<Recipe> getRecipeDataList(Recipe recipe) {
		return furnaceDao.getRecipeDataList(recipe);
	}

	@Override
	public void recipeDataWrite(Recipe recipe) {
		furnaceDao.recipeDataWrite(recipe);
	}

	

}
