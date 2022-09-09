-module(openapi_add_meal_plan_template_200_response).

-export([encode/1]).

-export_type([openapi_add_meal_plan_template_200_response/0]).

-type openapi_add_meal_plan_template_200_response() ::
    #{ 'name' := binary(),
       'items' := openapi_set:openapi_set(),
       'publishAsPublic' := boolean()
     }.

encode(#{ 'name' := Name,
          'items' := Items,
          'publishAsPublic' := PublishAsPublic
        }) ->
    #{ 'name' => Name,
       'items' => Items,
       'publishAsPublic' => PublishAsPublic
     }.
