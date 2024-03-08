-module(spoonacular_generate_meal_plan_200_response).

-export([encode/1]).

-export_type([spoonacular_generate_meal_plan_200_response/0]).

-type spoonacular_generate_meal_plan_200_response() ::
    #{ 'meals' := spoonacular_set:spoonacular_set(),
       'nutrients' := spoonacular_generate_meal_plan_200_response_nutrients:spoonacular_generate_meal_plan_200_response_nutrients()
     }.

encode(#{ 'meals' := Meals,
          'nutrients' := Nutrients
        }) ->
    #{ 'meals' => Meals,
       'nutrients' => Nutrients
     }.
