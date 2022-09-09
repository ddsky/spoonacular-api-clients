-module(openapi_get_meal_plan_templates_200_response).

-export([encode/1]).

-export_type([openapi_get_meal_plan_templates_200_response/0]).

-type openapi_get_meal_plan_templates_200_response() ::
    #{ 'templates' := openapi_set:openapi_set()
     }.

encode(#{ 'templates' := Templates
        }) ->
    #{ 'templates' => Templates
     }.
