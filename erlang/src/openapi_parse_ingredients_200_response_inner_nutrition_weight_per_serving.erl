-module(openapi_parse_ingredients_200_response_inner_nutrition_weight_per_serving).

-export([encode/1]).

-export_type([openapi_parse_ingredients_200_response_inner_nutrition_weight_per_serving/0]).

-type openapi_parse_ingredients_200_response_inner_nutrition_weight_per_serving() ::
    #{ 'amount' := integer(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
