--[[
  spoonacular API

  The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

  The version of the OpenAPI document: 2.0.2
  Contact: mail@spoonacular.com
  Generated by: https://openapi-generator.tech
]]

-- get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner class
local get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner = {}
local get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner_mt = {
	__name = "get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner";
	__index = get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner;
}

local function cast_get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner(t)
	return setmetatable(t, get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner_mt)
end

local function new_get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner(name, amount, unit, percent_daily_needs)
	return cast_get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner({
		["name"] = name;
		["amount"] = amount;
		["unit"] = unit;
		["percentDailyNeeds"] = percent_daily_needs;
	})
end

return {
	cast = cast_get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner;
	new = new_get_meal_plan_week_200_response_days_inner_nutrition_summary_nutrients_inner;
}
