package = "spoonacular"
version = "1.0.0-1"
source = {
	url = "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
}

description = {
	summary = "API client genreated by OpenAPI Generator",
	detailed = [[
The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 80,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.]],
	homepage = "https://openapi-generator.tech",
	license = "Unlicense",
	maintainer = "OpenAPI Generator contributors",
}

dependencies = {
	"lua >= 5.2",
	"http",
	"dkjson",
	"basexx"
}

build = {
	type = "builtin",
	modules = {
		["spoonacular.api.default_api"] = "spoonacular/api/default_api.lua";
		["spoonacular.model.inline_object"] = "spoonacular/model/inline_object.lua";
		["spoonacular.model.inline_object_1"] = "spoonacular/model/inline_object_1.lua";
		["spoonacular.model.inline_object_10"] = "spoonacular/model/inline_object_10.lua";
		["spoonacular.model.inline_object_11"] = "spoonacular/model/inline_object_11.lua";
		["spoonacular.model.inline_object_12"] = "spoonacular/model/inline_object_12.lua";
		["spoonacular.model.inline_object_13"] = "spoonacular/model/inline_object_13.lua";
		["spoonacular.model.inline_object_14"] = "spoonacular/model/inline_object_14.lua";
		["spoonacular.model.inline_object_2"] = "spoonacular/model/inline_object_2.lua";
		["spoonacular.model.inline_object_3"] = "spoonacular/model/inline_object_3.lua";
		["spoonacular.model.inline_object_4"] = "spoonacular/model/inline_object_4.lua";
		["spoonacular.model.inline_object_5"] = "spoonacular/model/inline_object_5.lua";
		["spoonacular.model.inline_object_6"] = "spoonacular/model/inline_object_6.lua";
		["spoonacular.model.inline_object_7"] = "spoonacular/model/inline_object_7.lua";
		["spoonacular.model.inline_object_8"] = "spoonacular/model/inline_object_8.lua";
		["spoonacular.model.inline_object_9"] = "spoonacular/model/inline_object_9.lua";
	}
}
