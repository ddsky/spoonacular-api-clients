--[[
  spoonacular API

  The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

  The version of the OpenAPI document: 2.0.2
  Contact: mail@spoonacular.com
  Generated by: https://openapi-generator.tech
]]

-- get_meal_plan_template_200_response_days_inner class
local get_meal_plan_template_200_response_days_inner = {}
local get_meal_plan_template_200_response_days_inner_mt = {
	__name = "get_meal_plan_template_200_response_days_inner";
	__index = get_meal_plan_template_200_response_days_inner;
}

local function cast_get_meal_plan_template_200_response_days_inner(t)
	return setmetatable(t, get_meal_plan_template_200_response_days_inner_mt)
end

local function new_get_meal_plan_template_200_response_days_inner(nutrition_summary, nutrition_summary_breakfast, nutrition_summary_lunch, nutrition_summary_dinner, day, items)
	return cast_get_meal_plan_template_200_response_days_inner({
		["nutritionSummary"] = nutrition_summary;
		["nutritionSummaryBreakfast"] = nutrition_summary_breakfast;
		["nutritionSummaryLunch"] = nutrition_summary_lunch;
		["nutritionSummaryDinner"] = nutrition_summary_dinner;
		["day"] = day;
		["items"] = items;
	})
end

return {
	cast = cast_get_meal_plan_template_200_response_days_inner;
	new = new_get_meal_plan_template_200_response_days_inner;
}
