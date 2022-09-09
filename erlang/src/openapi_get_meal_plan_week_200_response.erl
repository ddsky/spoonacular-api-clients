-module(openapi_get_meal_plan_week_200_response).

-export([encode/1]).

-export_type([openapi_get_meal_plan_week_200_response/0]).

-type openapi_get_meal_plan_week_200_response() ::
    #{ 'days' := openapi_set:openapi_set()
     }.

encode(#{ 'days' := Days
        }) ->
    #{ 'days' => Days
     }.
