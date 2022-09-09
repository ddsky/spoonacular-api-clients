-module(openapi_search_grocery_products_by_upc_200_response_nutrition).

-export([encode/1]).

-export_type([openapi_search_grocery_products_by_upc_200_response_nutrition/0]).

-type openapi_search_grocery_products_by_upc_200_response_nutrition() ::
    #{ 'nutrients' := openapi_set:openapi_set(),
       'caloricBreakdown' := openapi_parse_ingredients_200_response_inner_nutrition_caloric_breakdown:openapi_parse_ingredients_200_response_inner_nutrition_caloric_breakdown()
     }.

encode(#{ 'nutrients' := Nutrients,
          'caloricBreakdown' := CaloricBreakdown
        }) ->
    #{ 'nutrients' => Nutrients,
       'caloricBreakdown' => CaloricBreakdown
     }.
