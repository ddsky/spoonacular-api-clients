-module(openapi_add_to_meal_plan_request_1_value).

-export([encode/1]).

-export_type([openapi_add_to_meal_plan_request_1_value/0]).

-type openapi_add_to_meal_plan_request_1_value() ::
    #{ 'ingredients' := openapi_set:openapi_set()
     }.

encode(#{ 'ingredients' := Ingredients
        }) ->
    #{ 'ingredients' => Ingredients
     }.
