-module(spoonacular_add_to_meal_plan_request_1_value_ingredients_inner).

-export([encode/1]).

-export_type([spoonacular_add_to_meal_plan_request_1_value_ingredients_inner/0]).

-type spoonacular_add_to_meal_plan_request_1_value_ingredients_inner() ::
    #{ 'name' := binary()
     }.

encode(#{ 'name' := Name
        }) ->
    #{ 'name' => Name
     }.
