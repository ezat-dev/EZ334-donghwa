package com.ace.service;

import java.util.List;

import com.ace.domain.Recipe;

public interface FurnaceService {

	List<Recipe> getRecipeList();

	List<Recipe> getRecipeDataList(Recipe recipe);

	void recipeDataWrite(Recipe recipe);


}
