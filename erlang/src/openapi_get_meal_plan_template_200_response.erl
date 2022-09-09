-module(openapi_get_meal_plan_template_200_response).

-export([encode/1]).

-export_type([openapi_get_meal_plan_template_200_response/0]).

-type openapi_get_meal_plan_template_200_response() ::
    #{ 'id' := integer(),
       'name' := binary(),
       'days' := openapi_set:openapi_set()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'days' := Days
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'days' => Days
     }.
