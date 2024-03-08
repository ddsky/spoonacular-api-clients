-module(spoonacular_generate_meal_plan_200_response_nutrients).

-export([encode/1]).

-export_type([spoonacular_generate_meal_plan_200_response_nutrients/0]).

-type spoonacular_generate_meal_plan_200_response_nutrients() ::
    #{ 'calories' := integer(),
       'carbohydrates' := integer(),
       'fat' := integer(),
       'protein' := integer()
     }.

encode(#{ 'calories' := Calories,
          'carbohydrates' := Carbohydrates,
          'fat' := Fat,
          'protein' := Protein
        }) ->
    #{ 'calories' => Calories,
       'carbohydrates' => Carbohydrates,
       'fat' => Fat,
       'protein' => Protein
     }.
