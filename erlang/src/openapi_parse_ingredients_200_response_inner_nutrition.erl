-module(openapi_parse_ingredients_200_response_inner_nutrition).

-export([encode/1]).

-export_type([openapi_parse_ingredients_200_response_inner_nutrition/0]).

-type openapi_parse_ingredients_200_response_inner_nutrition() ::
    #{ 'nutrients' := openapi_set:openapi_set(),
       'properties' := openapi_set:openapi_set(),
       'flavonoids' := openapi_set:openapi_set(),
       'caloricBreakdown' := openapi_parse_ingredients_200_response_inner_nutrition_caloric_breakdown:openapi_parse_ingredients_200_response_inner_nutrition_caloric_breakdown(),
       'weightPerServing' := openapi_parse_ingredients_200_response_inner_nutrition_weight_per_serving:openapi_parse_ingredients_200_response_inner_nutrition_weight_per_serving()
     }.

encode(#{ 'nutrients' := Nutrients,
          'properties' := Properties,
          'flavonoids' := Flavonoids,
          'caloricBreakdown' := CaloricBreakdown,
          'weightPerServing' := WeightPerServing
        }) ->
    #{ 'nutrients' => Nutrients,
       'properties' => Properties,
       'flavonoids' => Flavonoids,
       'caloricBreakdown' => CaloricBreakdown,
       'weightPerServing' => WeightPerServing
     }.
