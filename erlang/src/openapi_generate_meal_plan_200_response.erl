-module(openapi_generate_meal_plan_200_response).

-export([encode/1]).

-export_type([openapi_generate_meal_plan_200_response/0]).

-type openapi_generate_meal_plan_200_response() ::
    #{ 'meals' := openapi_set:openapi_set(),
       'nutrients' := openapi_generate_meal_plan_200_response_nutrients:openapi_generate_meal_plan_200_response_nutrients()
     }.

encode(#{ 'meals' := Meals,
          'nutrients' := Nutrients
        }) ->
    #{ 'meals' => Meals,
       'nutrients' => Nutrients
     }.
