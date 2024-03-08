=begin comment

spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

The version of the OpenAPI document: 1.1
Contact: mail@spoonacular.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::IngredientsApi');

my $api = WWW::OpenAPIClient::IngredientsApi->new();
isa_ok($api, 'WWW::OpenAPIClient::IngredientsApi');

#
# autocomplete_ingredient_search test
#
# uncomment below and update the test
#my $autocomplete_ingredient_search_query = undef; # replace NULL with a proper value
#my $autocomplete_ingredient_search_number = undef; # replace NULL with a proper value
#my $autocomplete_ingredient_search_meta_information = undef; # replace NULL with a proper value
#my $autocomplete_ingredient_search_intolerances = undef; # replace NULL with a proper value
#my $autocomplete_ingredient_search_language = undef; # replace NULL with a proper value
#my $autocomplete_ingredient_search_result = $api->autocomplete_ingredient_search(query => $autocomplete_ingredient_search_query, number => $autocomplete_ingredient_search_number, meta_information => $autocomplete_ingredient_search_meta_information, intolerances => $autocomplete_ingredient_search_intolerances, language => $autocomplete_ingredient_search_language);

#
# compute_ingredient_amount test
#
# uncomment below and update the test
#my $compute_ingredient_amount_id = undef; # replace NULL with a proper value
#my $compute_ingredient_amount_nutrient = undef; # replace NULL with a proper value
#my $compute_ingredient_amount_target = undef; # replace NULL with a proper value
#my $compute_ingredient_amount_unit = undef; # replace NULL with a proper value
#my $compute_ingredient_amount_result = $api->compute_ingredient_amount(id => $compute_ingredient_amount_id, nutrient => $compute_ingredient_amount_nutrient, target => $compute_ingredient_amount_target, unit => $compute_ingredient_amount_unit);

#
# get_ingredient_information test
#
# uncomment below and update the test
#my $get_ingredient_information_id = undef; # replace NULL with a proper value
#my $get_ingredient_information_amount = undef; # replace NULL with a proper value
#my $get_ingredient_information_unit = undef; # replace NULL with a proper value
#my $get_ingredient_information_result = $api->get_ingredient_information(id => $get_ingredient_information_id, amount => $get_ingredient_information_amount, unit => $get_ingredient_information_unit);

#
# get_ingredient_substitutes test
#
# uncomment below and update the test
#my $get_ingredient_substitutes_ingredient_name = undef; # replace NULL with a proper value
#my $get_ingredient_substitutes_result = $api->get_ingredient_substitutes(ingredient_name => $get_ingredient_substitutes_ingredient_name);

#
# get_ingredient_substitutes_by_id test
#
# uncomment below and update the test
#my $get_ingredient_substitutes_by_id_id = undef; # replace NULL with a proper value
#my $get_ingredient_substitutes_by_id_result = $api->get_ingredient_substitutes_by_id(id => $get_ingredient_substitutes_by_id_id);

#
# ingredient_search test
#
# uncomment below and update the test
#my $ingredient_search_query = undef; # replace NULL with a proper value
#my $ingredient_search_add_children = undef; # replace NULL with a proper value
#my $ingredient_search_min_protein_percent = undef; # replace NULL with a proper value
#my $ingredient_search_max_protein_percent = undef; # replace NULL with a proper value
#my $ingredient_search_min_fat_percent = undef; # replace NULL with a proper value
#my $ingredient_search_max_fat_percent = undef; # replace NULL with a proper value
#my $ingredient_search_min_carbs_percent = undef; # replace NULL with a proper value
#my $ingredient_search_max_carbs_percent = undef; # replace NULL with a proper value
#my $ingredient_search_meta_information = undef; # replace NULL with a proper value
#my $ingredient_search_intolerances = undef; # replace NULL with a proper value
#my $ingredient_search_sort = undef; # replace NULL with a proper value
#my $ingredient_search_sort_direction = undef; # replace NULL with a proper value
#my $ingredient_search_offset = undef; # replace NULL with a proper value
#my $ingredient_search_number = undef; # replace NULL with a proper value
#my $ingredient_search_language = undef; # replace NULL with a proper value
#my $ingredient_search_result = $api->ingredient_search(query => $ingredient_search_query, add_children => $ingredient_search_add_children, min_protein_percent => $ingredient_search_min_protein_percent, max_protein_percent => $ingredient_search_max_protein_percent, min_fat_percent => $ingredient_search_min_fat_percent, max_fat_percent => $ingredient_search_max_fat_percent, min_carbs_percent => $ingredient_search_min_carbs_percent, max_carbs_percent => $ingredient_search_max_carbs_percent, meta_information => $ingredient_search_meta_information, intolerances => $ingredient_search_intolerances, sort => $ingredient_search_sort, sort_direction => $ingredient_search_sort_direction, offset => $ingredient_search_offset, number => $ingredient_search_number, language => $ingredient_search_language);

#
# ingredients_by_id_image test
#
# uncomment below and update the test
#my $ingredients_by_id_image_id = undef; # replace NULL with a proper value
#my $ingredients_by_id_image_measure = undef; # replace NULL with a proper value
#my $ingredients_by_id_image_result = $api->ingredients_by_id_image(id => $ingredients_by_id_image_id, measure => $ingredients_by_id_image_measure);

#
# map_ingredients_to_grocery_products test
#
# uncomment below and update the test
#my $map_ingredients_to_grocery_products_map_ingredients_to_grocery_products_request = undef; # replace NULL with a proper value
#my $map_ingredients_to_grocery_products_result = $api->map_ingredients_to_grocery_products(map_ingredients_to_grocery_products_request => $map_ingredients_to_grocery_products_map_ingredients_to_grocery_products_request);

#
# visualize_ingredients test
#
# uncomment below and update the test
#my $visualize_ingredients_content_type = undef; # replace NULL with a proper value
#my $visualize_ingredients_language = undef; # replace NULL with a proper value
#my $visualize_ingredients_accept = undef; # replace NULL with a proper value
#my $visualize_ingredients_result = $api->visualize_ingredients(content_type => $visualize_ingredients_content_type, language => $visualize_ingredients_language, accept => $visualize_ingredients_accept);


done_testing();
