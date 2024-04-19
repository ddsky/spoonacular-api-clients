-module(spoonacular_add_to_meal_plan_request_value).

-export([encode/1]).

-export_type([spoonacular_add_to_meal_plan_request_value/0]).

-type spoonacular_add_to_meal_plan_request_value() ::
    #{ 'ingredients' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'ingredients' := Ingredients
        }) ->
    #{ 'ingredients' => Ingredients
     }.
