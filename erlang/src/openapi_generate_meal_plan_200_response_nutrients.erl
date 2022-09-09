-module(openapi_generate_meal_plan_200_response_nutrients).

-export([encode/1]).

-export_type([openapi_generate_meal_plan_200_response_nutrients/0]).

-type openapi_generate_meal_plan_200_response_nutrients() ::
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
