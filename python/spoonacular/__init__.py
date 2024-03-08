# coding: utf-8

# flake8: noqa

"""
    spoonacular API

    The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

    The version of the OpenAPI document: 1.1
    Contact: mail@spoonacular.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


__version__ = "1.1.1"

# import apis into sdk package
from spoonacular.api.default_api import DefaultApi
from spoonacular.api.ingredients_api import IngredientsApi
from spoonacular.api.meal_planning_api import MealPlanningApi
from spoonacular.api.menu_items_api import MenuItemsApi
from spoonacular.api.misc_api import MiscApi
from spoonacular.api.products_api import ProductsApi
from spoonacular.api.recipes_api import RecipesApi
from spoonacular.api.wine_api import WineApi

# import ApiClient
from spoonacular.api_response import ApiResponse
from spoonacular.api_client import ApiClient
from spoonacular.configuration import Configuration
from spoonacular.exceptions import OpenApiException
from spoonacular.exceptions import ApiTypeError
from spoonacular.exceptions import ApiValueError
from spoonacular.exceptions import ApiKeyError
from spoonacular.exceptions import ApiAttributeError
from spoonacular.exceptions import ApiException

# import models into sdk package
from spoonacular.models.add_meal_plan_template200_response import AddMealPlanTemplate200Response
from spoonacular.models.add_meal_plan_template200_response_items_inner import AddMealPlanTemplate200ResponseItemsInner
from spoonacular.models.add_meal_plan_template200_response_items_inner_value import AddMealPlanTemplate200ResponseItemsInnerValue
from spoonacular.models.add_to_meal_plan_request import AddToMealPlanRequest
from spoonacular.models.add_to_meal_plan_request1 import AddToMealPlanRequest1
from spoonacular.models.add_to_meal_plan_request1_value import AddToMealPlanRequest1Value
from spoonacular.models.add_to_meal_plan_request1_value_ingredients_inner import AddToMealPlanRequest1ValueIngredientsInner
from spoonacular.models.add_to_shopping_list_request import AddToShoppingListRequest
from spoonacular.models.analyze_a_recipe_search_query200_response import AnalyzeARecipeSearchQuery200Response
from spoonacular.models.analyze_a_recipe_search_query200_response_dishes_inner import AnalyzeARecipeSearchQuery200ResponseDishesInner
from spoonacular.models.analyze_a_recipe_search_query200_response_ingredients_inner import AnalyzeARecipeSearchQuery200ResponseIngredientsInner
from spoonacular.models.analyze_recipe_instructions200_response import AnalyzeRecipeInstructions200Response
from spoonacular.models.analyze_recipe_instructions200_response_ingredients_inner import AnalyzeRecipeInstructions200ResponseIngredientsInner
from spoonacular.models.analyze_recipe_instructions200_response_parsed_instructions_inner import AnalyzeRecipeInstructions200ResponseParsedInstructionsInner
from spoonacular.models.analyze_recipe_instructions200_response_parsed_instructions_inner_steps_inner import AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner
from spoonacular.models.analyze_recipe_instructions200_response_parsed_instructions_inner_steps_inner_ingredients_inner import AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner
from spoonacular.models.analyze_recipe_request import AnalyzeRecipeRequest
from spoonacular.models.analyze_recipe_request1 import AnalyzeRecipeRequest1
from spoonacular.models.autocomplete_ingredient_search200_response_inner import AutocompleteIngredientSearch200ResponseInner
from spoonacular.models.autocomplete_menu_item_search200_response import AutocompleteMenuItemSearch200Response
from spoonacular.models.autocomplete_product_search200_response import AutocompleteProductSearch200Response
from spoonacular.models.autocomplete_product_search200_response_results_inner import AutocompleteProductSearch200ResponseResultsInner
from spoonacular.models.autocomplete_recipe_search200_response_inner import AutocompleteRecipeSearch200ResponseInner
from spoonacular.models.classify_cuisine200_response import ClassifyCuisine200Response
from spoonacular.models.classify_grocery_product200_response import ClassifyGroceryProduct200Response
from spoonacular.models.classify_grocery_product_bulk200_response_inner import ClassifyGroceryProductBulk200ResponseInner
from spoonacular.models.classify_grocery_product_bulk_request_inner import ClassifyGroceryProductBulkRequestInner
from spoonacular.models.classify_grocery_product_request import ClassifyGroceryProductRequest
from spoonacular.models.clear_meal_plan_day_request import ClearMealPlanDayRequest
from spoonacular.models.compute_glycemic_load200_response import ComputeGlycemicLoad200Response
from spoonacular.models.compute_glycemic_load200_response_ingredients_inner import ComputeGlycemicLoad200ResponseIngredientsInner
from spoonacular.models.compute_glycemic_load_request import ComputeGlycemicLoadRequest
from spoonacular.models.compute_ingredient_amount200_response import ComputeIngredientAmount200Response
from spoonacular.models.connect_user200_response import ConnectUser200Response
from spoonacular.models.connect_user_request import ConnectUserRequest
from spoonacular.models.convert_amounts200_response import ConvertAmounts200Response
from spoonacular.models.create_recipe_card200_response import CreateRecipeCard200Response
from spoonacular.models.delete_from_meal_plan_request import DeleteFromMealPlanRequest
from spoonacular.models.detect_food_in_text200_response import DetectFoodInText200Response
from spoonacular.models.detect_food_in_text200_response_annotations_inner import DetectFoodInText200ResponseAnnotationsInner
from spoonacular.models.generate_meal_plan200_response import GenerateMealPlan200Response
from spoonacular.models.generate_meal_plan200_response_nutrients import GenerateMealPlan200ResponseNutrients
from spoonacular.models.generate_shopping_list200_response import GenerateShoppingList200Response
from spoonacular.models.generate_shopping_list_request import GenerateShoppingListRequest
from spoonacular.models.get_a_random_food_joke200_response import GetARandomFoodJoke200Response
from spoonacular.models.get_analyzed_recipe_instructions200_response import GetAnalyzedRecipeInstructions200Response
from spoonacular.models.get_analyzed_recipe_instructions200_response_ingredients_inner import GetAnalyzedRecipeInstructions200ResponseIngredientsInner
from spoonacular.models.get_analyzed_recipe_instructions200_response_parsed_instructions_inner import GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInner
from spoonacular.models.get_analyzed_recipe_instructions200_response_parsed_instructions_inner_steps_inner import GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInner
from spoonacular.models.get_analyzed_recipe_instructions200_response_parsed_instructions_inner_steps_inner_ingredients_inner import GetAnalyzedRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner
from spoonacular.models.get_comparable_products200_response import GetComparableProducts200Response
from spoonacular.models.get_comparable_products200_response_comparable_products import GetComparableProducts200ResponseComparableProducts
from spoonacular.models.get_comparable_products200_response_comparable_products_protein_inner import GetComparableProducts200ResponseComparableProductsProteinInner
from spoonacular.models.get_conversation_suggests200_response import GetConversationSuggests200Response
from spoonacular.models.get_conversation_suggests200_response_suggests import GetConversationSuggests200ResponseSuggests
from spoonacular.models.get_conversation_suggests200_response_suggests_inner import GetConversationSuggests200ResponseSuggestsInner
from spoonacular.models.get_dish_pairing_for_wine200_response import GetDishPairingForWine200Response
from spoonacular.models.get_ingredient_information200_response import GetIngredientInformation200Response
from spoonacular.models.get_ingredient_information200_response_nutrition import GetIngredientInformation200ResponseNutrition
from spoonacular.models.get_ingredient_substitutes200_response import GetIngredientSubstitutes200Response
from spoonacular.models.get_meal_plan_template200_response import GetMealPlanTemplate200Response
from spoonacular.models.get_meal_plan_template200_response_days_inner import GetMealPlanTemplate200ResponseDaysInner
from spoonacular.models.get_meal_plan_template200_response_days_inner_items_inner import GetMealPlanTemplate200ResponseDaysInnerItemsInner
from spoonacular.models.get_meal_plan_template200_response_days_inner_items_inner_value import GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue
from spoonacular.models.get_meal_plan_templates200_response import GetMealPlanTemplates200Response
from spoonacular.models.get_meal_plan_week200_response import GetMealPlanWeek200Response
from spoonacular.models.get_meal_plan_week200_response_days_inner import GetMealPlanWeek200ResponseDaysInner
from spoonacular.models.get_meal_plan_week200_response_days_inner_items_inner import GetMealPlanWeek200ResponseDaysInnerItemsInner
from spoonacular.models.get_meal_plan_week200_response_days_inner_items_inner_value import GetMealPlanWeek200ResponseDaysInnerItemsInnerValue
from spoonacular.models.get_meal_plan_week200_response_days_inner_nutrition_summary import GetMealPlanWeek200ResponseDaysInnerNutritionSummary
from spoonacular.models.get_meal_plan_week200_response_days_inner_nutrition_summary_nutrients_inner import GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner
from spoonacular.models.get_menu_item_information200_response import GetMenuItemInformation200Response
from spoonacular.models.get_product_information200_response import GetProductInformation200Response
from spoonacular.models.get_product_information200_response_ingredients_inner import GetProductInformation200ResponseIngredientsInner
from spoonacular.models.get_random_food_trivia200_response import GetRandomFoodTrivia200Response
from spoonacular.models.get_random_recipes200_response import GetRandomRecipes200Response
from spoonacular.models.get_random_recipes200_response_recipes_inner import GetRandomRecipes200ResponseRecipesInner
from spoonacular.models.get_recipe_equipment_by_id200_response import GetRecipeEquipmentByID200Response
from spoonacular.models.get_recipe_equipment_by_id200_response_equipment_inner import GetRecipeEquipmentByID200ResponseEquipmentInner
from spoonacular.models.get_recipe_information200_response import GetRecipeInformation200Response
from spoonacular.models.get_recipe_information200_response_extended_ingredients_inner import GetRecipeInformation200ResponseExtendedIngredientsInner
from spoonacular.models.get_recipe_information200_response_extended_ingredients_inner_measures import GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures
from spoonacular.models.get_recipe_information200_response_extended_ingredients_inner_measures_metric import GetRecipeInformation200ResponseExtendedIngredientsInnerMeasuresMetric
from spoonacular.models.get_recipe_information200_response_wine_pairing import GetRecipeInformation200ResponseWinePairing
from spoonacular.models.get_recipe_information200_response_wine_pairing_product_matches_inner import GetRecipeInformation200ResponseWinePairingProductMatchesInner
from spoonacular.models.get_recipe_information_bulk200_response_inner import GetRecipeInformationBulk200ResponseInner
from spoonacular.models.get_recipe_ingredients_by_id200_response import GetRecipeIngredientsByID200Response
from spoonacular.models.get_recipe_ingredients_by_id200_response_ingredients_inner import GetRecipeIngredientsByID200ResponseIngredientsInner
from spoonacular.models.get_recipe_nutrition_widget_by_id200_response import GetRecipeNutritionWidgetByID200Response
from spoonacular.models.get_recipe_nutrition_widget_by_id200_response_bad_inner import GetRecipeNutritionWidgetByID200ResponseBadInner
from spoonacular.models.get_recipe_nutrition_widget_by_id200_response_good_inner import GetRecipeNutritionWidgetByID200ResponseGoodInner
from spoonacular.models.get_recipe_price_breakdown_by_id200_response import GetRecipePriceBreakdownByID200Response
from spoonacular.models.get_recipe_price_breakdown_by_id200_response_ingredients_inner import GetRecipePriceBreakdownByID200ResponseIngredientsInner
from spoonacular.models.get_recipe_price_breakdown_by_id200_response_ingredients_inner_amount import GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount
from spoonacular.models.get_recipe_price_breakdown_by_id200_response_ingredients_inner_amount_metric import GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric
from spoonacular.models.get_recipe_taste_by_id200_response import GetRecipeTasteByID200Response
from spoonacular.models.get_shopping_list200_response import GetShoppingList200Response
from spoonacular.models.get_shopping_list200_response_aisles_inner import GetShoppingList200ResponseAislesInner
from spoonacular.models.get_shopping_list200_response_aisles_inner_items_inner import GetShoppingList200ResponseAislesInnerItemsInner
from spoonacular.models.get_shopping_list200_response_aisles_inner_items_inner_measures import GetShoppingList200ResponseAislesInnerItemsInnerMeasures
from spoonacular.models.get_similar_recipes200_response_inner import GetSimilarRecipes200ResponseInner
from spoonacular.models.get_wine_description200_response import GetWineDescription200Response
from spoonacular.models.get_wine_pairing200_response import GetWinePairing200Response
from spoonacular.models.get_wine_pairing200_response_product_matches_inner import GetWinePairing200ResponseProductMatchesInner
from spoonacular.models.get_wine_recommendation200_response import GetWineRecommendation200Response
from spoonacular.models.get_wine_recommendation200_response_recommended_wines_inner import GetWineRecommendation200ResponseRecommendedWinesInner
from spoonacular.models.guess_nutrition_by_dish_name200_response import GuessNutritionByDishName200Response
from spoonacular.models.guess_nutrition_by_dish_name200_response_calories import GuessNutritionByDishName200ResponseCalories
from spoonacular.models.guess_nutrition_by_dish_name200_response_calories_confidence_range95_percent import GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent
from spoonacular.models.image_analysis_by_url200_response import ImageAnalysisByURL200Response
from spoonacular.models.image_analysis_by_url200_response_category import ImageAnalysisByURL200ResponseCategory
from spoonacular.models.image_analysis_by_url200_response_nutrition import ImageAnalysisByURL200ResponseNutrition
from spoonacular.models.image_analysis_by_url200_response_nutrition_calories import ImageAnalysisByURL200ResponseNutritionCalories
from spoonacular.models.image_analysis_by_url200_response_nutrition_calories_confidence_range95_percent import ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent
from spoonacular.models.image_analysis_by_url200_response_recipes_inner import ImageAnalysisByURL200ResponseRecipesInner
from spoonacular.models.image_classification_by_url200_response import ImageClassificationByURL200Response
from spoonacular.models.ingredient_search200_response import IngredientSearch200Response
from spoonacular.models.ingredient_search200_response_results_inner import IngredientSearch200ResponseResultsInner
from spoonacular.models.map_ingredients_to_grocery_products200_response_inner import MapIngredientsToGroceryProducts200ResponseInner
from spoonacular.models.map_ingredients_to_grocery_products200_response_inner_products_inner import MapIngredientsToGroceryProducts200ResponseInnerProductsInner
from spoonacular.models.map_ingredients_to_grocery_products_request import MapIngredientsToGroceryProductsRequest
from spoonacular.models.parse_ingredients200_response_inner import ParseIngredients200ResponseInner
from spoonacular.models.parse_ingredients200_response_inner_estimated_cost import ParseIngredients200ResponseInnerEstimatedCost
from spoonacular.models.parse_ingredients200_response_inner_nutrition import ParseIngredients200ResponseInnerNutrition
from spoonacular.models.parse_ingredients200_response_inner_nutrition_caloric_breakdown import ParseIngredients200ResponseInnerNutritionCaloricBreakdown
from spoonacular.models.parse_ingredients200_response_inner_nutrition_nutrients_inner import ParseIngredients200ResponseInnerNutritionNutrientsInner
from spoonacular.models.parse_ingredients200_response_inner_nutrition_properties_inner import ParseIngredients200ResponseInnerNutritionPropertiesInner
from spoonacular.models.parse_ingredients200_response_inner_nutrition_weight_per_serving import ParseIngredients200ResponseInnerNutritionWeightPerServing
from spoonacular.models.quick_answer200_response import QuickAnswer200Response
from spoonacular.models.search_all_food200_response import SearchAllFood200Response
from spoonacular.models.search_all_food200_response_search_results_inner import SearchAllFood200ResponseSearchResultsInner
from spoonacular.models.search_all_food200_response_search_results_inner_results_inner import SearchAllFood200ResponseSearchResultsInnerResultsInner
from spoonacular.models.search_custom_foods200_response import SearchCustomFoods200Response
from spoonacular.models.search_custom_foods200_response_custom_foods_inner import SearchCustomFoods200ResponseCustomFoodsInner
from spoonacular.models.search_food_videos200_response import SearchFoodVideos200Response
from spoonacular.models.search_food_videos200_response_videos_inner import SearchFoodVideos200ResponseVideosInner
from spoonacular.models.search_grocery_products200_response import SearchGroceryProducts200Response
from spoonacular.models.search_grocery_products_by_upc200_response import SearchGroceryProductsByUPC200Response
from spoonacular.models.search_grocery_products_by_upc200_response_ingredients_inner import SearchGroceryProductsByUPC200ResponseIngredientsInner
from spoonacular.models.search_grocery_products_by_upc200_response_nutrition import SearchGroceryProductsByUPC200ResponseNutrition
from spoonacular.models.search_grocery_products_by_upc200_response_servings import SearchGroceryProductsByUPC200ResponseServings
from spoonacular.models.search_menu_items200_response import SearchMenuItems200Response
from spoonacular.models.search_menu_items200_response_menu_items_inner import SearchMenuItems200ResponseMenuItemsInner
from spoonacular.models.search_recipes200_response import SearchRecipes200Response
from spoonacular.models.search_recipes200_response_results_inner import SearchRecipes200ResponseResultsInner
from spoonacular.models.search_recipes_by_ingredients200_response_inner import SearchRecipesByIngredients200ResponseInner
from spoonacular.models.search_recipes_by_ingredients200_response_inner_missed_ingredients_inner import SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner
from spoonacular.models.search_recipes_by_nutrients200_response_inner import SearchRecipesByNutrients200ResponseInner
from spoonacular.models.search_restaurants200_response import SearchRestaurants200Response
from spoonacular.models.search_restaurants200_response_restaurants_inner import SearchRestaurants200ResponseRestaurantsInner
from spoonacular.models.search_restaurants200_response_restaurants_inner_address import SearchRestaurants200ResponseRestaurantsInnerAddress
from spoonacular.models.search_restaurants200_response_restaurants_inner_local_hours import SearchRestaurants200ResponseRestaurantsInnerLocalHours
from spoonacular.models.search_restaurants200_response_restaurants_inner_local_hours_operational import SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
from spoonacular.models.search_site_content200_response import SearchSiteContent200Response
from spoonacular.models.search_site_content200_response_articles_inner import SearchSiteContent200ResponseArticlesInner
from spoonacular.models.search_site_content200_response_grocery_products_inner import SearchSiteContent200ResponseGroceryProductsInner
from spoonacular.models.search_site_content200_response_grocery_products_inner_data_points_inner import SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner
from spoonacular.models.summarize_recipe200_response import SummarizeRecipe200Response
from spoonacular.models.talk_to_chatbot200_response import TalkToChatbot200Response
