--[[
  spoonacular API

  The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

  The version of the OpenAPI document: 2.0.2
  Contact: mail@spoonacular.com
  Generated by: https://openapi-generator.tech
]]

-- image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent class
local image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent = {}
local image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent_mt = {
	__name = "image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent";
	__index = image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent;
}

local function cast_image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent(t)
	return setmetatable(t, image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent_mt)
end

local function new_image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent(min, max)
	return cast_image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent({
		["min"] = min;
		["max"] = max;
	})
end

return {
	cast = cast_image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent;
	new = new_image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent;
}
