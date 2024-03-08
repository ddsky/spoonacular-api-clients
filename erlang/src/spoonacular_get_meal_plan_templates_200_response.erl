-module(spoonacular_get_meal_plan_templates_200_response).

-export([encode/1]).

-export_type([spoonacular_get_meal_plan_templates_200_response/0]).

-type spoonacular_get_meal_plan_templates_200_response() ::
    #{ 'templates' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'templates' := Templates
        }) ->
    #{ 'templates' => Templates
     }.
