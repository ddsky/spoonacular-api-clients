--[[
  spoonacular API

  The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

  The version of the OpenAPI document: 1.1
  Contact: mail@spoonacular.com
  Generated by: https://openapi-generator.tech
]]

-- get_recipe_nutrition_widget_by_id_200_response_good_inner class
local get_recipe_nutrition_widget_by_id_200_response_good_inner = {}
local get_recipe_nutrition_widget_by_id_200_response_good_inner_mt = {
	__name = "get_recipe_nutrition_widget_by_id_200_response_good_inner";
	__index = get_recipe_nutrition_widget_by_id_200_response_good_inner;
}

local function cast_get_recipe_nutrition_widget_by_id_200_response_good_inner(t)
	return setmetatable(t, get_recipe_nutrition_widget_by_id_200_response_good_inner_mt)
end

local function new_get_recipe_nutrition_widget_by_id_200_response_good_inner(amount, indented, percent_of_daily_needs, name)
	return cast_get_recipe_nutrition_widget_by_id_200_response_good_inner({
		["amount"] = amount;
		["indented"] = indented;
		["percentOfDailyNeeds"] = percent_of_daily_needs;
		["name"] = name;
	})
end

return {
	cast = cast_get_recipe_nutrition_widget_by_id_200_response_good_inner;
	new = new_get_recipe_nutrition_widget_by_id_200_response_good_inner;
}