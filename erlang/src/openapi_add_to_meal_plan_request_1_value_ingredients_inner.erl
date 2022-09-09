-module(openapi_add_to_meal_plan_request_1_value_ingredients_inner).

-export([encode/1]).

-export_type([openapi_add_to_meal_plan_request_1_value_ingredients_inner/0]).

-type openapi_add_to_meal_plan_request_1_value_ingredients_inner() ::
    #{ 'name' := binary()
     }.

encode(#{ 'name' := Name
        }) ->
    #{ 'name' => Name
     }.
