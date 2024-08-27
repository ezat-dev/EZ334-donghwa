package com.ace.dao;

import java.util.List;

import com.ace.domain.Recipe;

public interface FurnaceDao {

	List<Recipe> getRecipeList();

	List<Recipe> getRecipeDataList(Recipe recipe);

	void recipeDataWrite(Recipe recipe);

}
