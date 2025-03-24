--[[
  spoonacular API

  The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

  The version of the OpenAPI document: 2.0.2
  Contact: mail@spoonacular.com
  Generated by: https://openapi-generator.tech
]]

-- analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner class
local analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner = {}
local analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner_mt = {
	__name = "analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner";
	__index = analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner;
}

local function cast_analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner(t)
	return setmetatable(t, analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner_mt)
end

local function new_analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner(Number_, step, ingredients, equipment)
	return cast_analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner({
		["number"] = Number_;
		["step"] = step;
		["ingredients"] = ingredients;
		["equipment"] = equipment;
	})
end

return {
	cast = cast_analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner;
	new = new_analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner;
}
