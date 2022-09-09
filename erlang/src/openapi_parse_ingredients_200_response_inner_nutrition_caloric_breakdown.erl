-module(openapi_parse_ingredients_200_response_inner_nutrition_caloric_breakdown).

-export([encode/1]).

-export_type([openapi_parse_ingredients_200_response_inner_nutrition_caloric_breakdown/0]).

-type openapi_parse_ingredients_200_response_inner_nutrition_caloric_breakdown() ::
    #{ 'percentProtein' := integer(),
       'percentFat' := integer(),
       'percentCarbs' := integer()
     }.

encode(#{ 'percentProtein' := PercentProtein,
          'percentFat' := PercentFat,
          'percentCarbs' := PercentCarbs
        }) ->
    #{ 'percentProtein' => PercentProtein,
       'percentFat' => PercentFat,
       'percentCarbs' => PercentCarbs
     }.
