//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/default_api.dart';
part 'api/ingredients_api.dart';
part 'api/meal_planning_api.dart';
part 'api/menu_items_api.dart';
part 'api/misc_api.dart';
part 'api/products_api.dart';
part 'api/recipes_api.dart';
part 'api/wine_api.dart';

part 'model/add_meal_plan_template200_response.dart';
part 'model/add_meal_plan_template200_response_items_inner.dart';
part 'model/add_meal_plan_template200_response_items_inner_value.dart';
part 'model/add_to_meal_plan_request.dart';
part 'model/add_to_meal_plan_request_value.dart';
part 'model/add_to_meal_plan_request_value_ingredients_inner.dart';
part 'model/add_to_shopping_list_request.dart';
part 'model/analyze_a_recipe_search_query200_response.dart';
part 'model/analyze_a_recipe_search_query200_response_dishes_inner.dart';
part 'model/analyze_a_recipe_search_query200_response_ingredients_inner.dart';
part 'model/analyze_recipe_instructions200_response.dart';
part 'model/analyze_recipe_instructions200_response_ingredients_inner.dart';
part 'model/analyze_recipe_instructions200_response_parsed_instructions_inner.dart';
part 'model/analyze_recipe_instructions200_response_parsed_instructions_inner_steps_inner.dart';
part 'model/analyze_recipe_instructions200_response_parsed_instructions_inner_steps_inner_ingredients_inner.dart';
part 'model/analyze_recipe_request.dart';
part 'model/autocomplete_ingredient_search200_response_inner.dart';
part 'model/autocomplete_product_search200_response.dart';
part 'model/autocomplete_product_search200_response_results_inner.dart';
part 'model/autocomplete_recipe_search200_response_inner.dart';
part 'model/classify_cuisine200_response.dart';
part 'model/classify_grocery_product200_response.dart';
part 'model/classify_grocery_product_bulk200_response_inner.dart';
part 'model/classify_grocery_product_bulk_request_inner.dart';
part 'model/classify_grocery_product_request.dart';
part 'model/comparable_product.dart';
part 'model/compute_glycemic_load200_response.dart';
part 'model/compute_glycemic_load200_response_ingredients_inner.dart';
part 'model/compute_glycemic_load_request.dart';
part 'model/compute_ingredient_amount200_response.dart';
part 'model/connect_user200_response.dart';
part 'model/connect_user_request.dart';
part 'model/convert_amounts200_response.dart';
part 'model/create_recipe_card200_response.dart';
part 'model/detect_food_in_text200_response.dart';
part 'model/detect_food_in_text200_response_annotations_inner.dart';
part 'model/generate_meal_plan200_response.dart';
part 'model/generate_meal_plan200_response_nutrients.dart';
part 'model/get_a_random_food_joke200_response.dart';
part 'model/get_analyzed_recipe_instructions200_response_inner.dart';
part 'model/get_analyzed_recipe_instructions200_response_inner_steps_inner.dart';
part 'model/get_analyzed_recipe_instructions200_response_inner_steps_inner_ingredients_inner.dart';
part 'model/get_comparable_products200_response.dart';
part 'model/get_comparable_products200_response_comparable_products.dart';
part 'model/get_conversation_suggests200_response.dart';
part 'model/get_conversation_suggests200_response_suggests.dart';
part 'model/get_conversation_suggests200_response_suggests_inner.dart';
part 'model/get_dish_pairing_for_wine200_response.dart';
part 'model/get_ingredient_substitutes200_response.dart';
part 'model/get_meal_plan_template200_response.dart';
part 'model/get_meal_plan_template200_response_days_inner.dart';
part 'model/get_meal_plan_template200_response_days_inner_items_inner.dart';
part 'model/get_meal_plan_template200_response_days_inner_items_inner_value.dart';
part 'model/get_meal_plan_templates200_response.dart';
part 'model/get_meal_plan_templates200_response_templates_inner.dart';
part 'model/get_meal_plan_week200_response.dart';
part 'model/get_meal_plan_week200_response_days_inner.dart';
part 'model/get_meal_plan_week200_response_days_inner_items_inner.dart';
part 'model/get_meal_plan_week200_response_days_inner_items_inner_value.dart';
part 'model/get_meal_plan_week200_response_days_inner_nutrition_summary.dart';
part 'model/get_meal_plan_week200_response_days_inner_nutrition_summary_nutrients_inner.dart';
part 'model/get_random_recipes200_response.dart';
part 'model/get_recipe_equipment_by_id200_response.dart';
part 'model/get_recipe_equipment_by_id200_response_equipment_inner.dart';
part 'model/get_recipe_ingredients_by_id200_response.dart';
part 'model/get_recipe_ingredients_by_id200_response_ingredients_inner.dart';
part 'model/get_recipe_nutrition_widget_by_id200_response.dart';
part 'model/get_recipe_nutrition_widget_by_id200_response_bad_inner.dart';
part 'model/get_recipe_nutrition_widget_by_id200_response_good_inner.dart';
part 'model/get_recipe_price_breakdown_by_id200_response.dart';
part 'model/get_recipe_price_breakdown_by_id200_response_ingredients_inner.dart';
part 'model/get_recipe_price_breakdown_by_id200_response_ingredients_inner_amount.dart';
part 'model/get_recipe_price_breakdown_by_id200_response_ingredients_inner_amount_metric.dart';
part 'model/get_shopping_list200_response.dart';
part 'model/get_shopping_list200_response_aisles_inner.dart';
part 'model/get_shopping_list200_response_aisles_inner_items_inner.dart';
part 'model/get_shopping_list200_response_aisles_inner_items_inner_measures.dart';
part 'model/get_shopping_list200_response_aisles_inner_items_inner_measures_original.dart';
part 'model/get_similar_recipes200_response_inner.dart';
part 'model/get_wine_description200_response.dart';
part 'model/get_wine_pairing200_response.dart';
part 'model/get_wine_pairing200_response_product_matches_inner.dart';
part 'model/get_wine_recommendation200_response.dart';
part 'model/get_wine_recommendation200_response_recommended_wines_inner.dart';
part 'model/guess_nutrition_by_dish_name200_response.dart';
part 'model/guess_nutrition_by_dish_name200_response_calories.dart';
part 'model/guess_nutrition_by_dish_name200_response_calories_confidence_range95_percent.dart';
part 'model/image_analysis_by_url200_response.dart';
part 'model/image_analysis_by_url200_response_category.dart';
part 'model/image_analysis_by_url200_response_nutrition.dart';
part 'model/image_analysis_by_url200_response_nutrition_calories.dart';
part 'model/image_analysis_by_url200_response_nutrition_calories_confidence_range95_percent.dart';
part 'model/image_analysis_by_url200_response_recipes_inner.dart';
part 'model/image_classification_by_url200_response.dart';
part 'model/ingredient_basics.dart';
part 'model/ingredient_information.dart';
part 'model/ingredient_information_estimated_cost.dart';
part 'model/ingredient_information_nutrition.dart';
part 'model/ingredient_information_nutrition_properties_inner.dart';
part 'model/ingredient_search200_response.dart';
part 'model/ingredient_search200_response_results_inner.dart';
part 'model/map_ingredients_to_grocery_products200_response_inner.dart';
part 'model/map_ingredients_to_grocery_products200_response_inner_products_inner.dart';
part 'model/map_ingredients_to_grocery_products_request.dart';
part 'model/menu_item.dart';
part 'model/menu_item_servings.dart';
part 'model/product_information.dart';
part 'model/product_information_credits.dart';
part 'model/quick_answer200_response.dart';
part 'model/recipe_information.dart';
part 'model/recipe_information_extended_ingredients_inner.dart';
part 'model/recipe_information_extended_ingredients_inner_measures.dart';
part 'model/recipe_information_extended_ingredients_inner_measures_metric.dart';
part 'model/recipe_information_wine_pairing.dart';
part 'model/recipe_information_wine_pairing_product_matches_inner.dart';
part 'model/search_all_food200_response.dart';
part 'model/search_all_food200_response_search_results_inner.dart';
part 'model/search_custom_foods200_response.dart';
part 'model/search_custom_foods200_response_custom_foods_inner.dart';
part 'model/search_food_videos200_response.dart';
part 'model/search_food_videos200_response_videos_inner.dart';
part 'model/search_grocery_products200_response.dart';
part 'model/search_grocery_products_by_upc200_response.dart';
part 'model/search_grocery_products_by_upc200_response_nutrition.dart';
part 'model/search_grocery_products_by_upc200_response_nutrition_caloric_breakdown.dart';
part 'model/search_grocery_products_by_upc200_response_nutrition_nutrients_inner.dart';
part 'model/search_grocery_products_by_upc200_response_servings.dart';
part 'model/search_menu_items200_response.dart';
part 'model/search_recipes200_response.dart';
part 'model/search_recipes200_response_results_inner.dart';
part 'model/search_recipes_by_ingredients200_response_inner.dart';
part 'model/search_recipes_by_ingredients200_response_inner_missed_ingredients_inner.dart';
part 'model/search_recipes_by_nutrients200_response_inner.dart';
part 'model/search_restaurants200_response.dart';
part 'model/search_restaurants200_response_restaurants_inner.dart';
part 'model/search_restaurants200_response_restaurants_inner_address.dart';
part 'model/search_restaurants200_response_restaurants_inner_local_hours.dart';
part 'model/search_restaurants200_response_restaurants_inner_local_hours_operational.dart';
part 'model/search_result.dart';
part 'model/search_site_content200_response.dart';
part 'model/summarize_recipe200_response.dart';
part 'model/talk_to_chatbot200_response.dart';
part 'model/talk_to_chatbot200_response_media_inner.dart';
part 'model/taste_information.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
