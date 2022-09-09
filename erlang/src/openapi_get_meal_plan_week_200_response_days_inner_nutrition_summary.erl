-module(openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary).

-export([encode/1]).

-export_type([openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary/0]).

-type openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary() ::
    #{ 'nutrients' := openapi_set:openapi_set()
     }.

encode(#{ 'nutrients' := Nutrients
        }) ->
    #{ 'nutrients' => Nutrients
     }.
