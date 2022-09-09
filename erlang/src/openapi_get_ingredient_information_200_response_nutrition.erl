-module(openapi_get_ingredient_information_200_response_nutrition).

-export([encode/1]).

-export_type([openapi_get_ingredient_information_200_response_nutrition/0]).

-type openapi_get_ingredient_information_200_response_nutrition() ::
    #{ 'nutrients' := openapi_set:openapi_set(),
       'properties' := openapi_set:openapi_set(),
       'caloricBreakdown' := openapi_parse_ingredients_200_response_inner_nutrition_caloric_breakdown:openapi_parse_ingredients_200_response_inner_nutrition_caloric_breakdown(),
       'weightPerServing' := openapi_parse_ingredients_200_response_inner_nutrition_weight_per_serving:openapi_parse_ingredients_200_response_inner_nutrition_weight_per_serving()
     }.

encode(#{ 'nutrients' := Nutrients,
          'properties' := Properties,
          'caloricBreakdown' := CaloricBreakdown,
          'weightPerServing' := WeightPerServing
        }) ->
    #{ 'nutrients' => Nutrients,
       'properties' => Properties,
       'caloricBreakdown' => CaloricBreakdown,
       'weightPerServing' => WeightPerServing
     }.
