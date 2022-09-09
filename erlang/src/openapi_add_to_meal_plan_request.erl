-module(openapi_add_to_meal_plan_request).

-export([encode/1]).

-export_type([openapi_add_to_meal_plan_request/0]).

-type openapi_add_to_meal_plan_request() ::
    #{ 'username' := binary(),
       'hash' := binary()
     }.

encode(#{ 'username' := Username,
          'hash' := Hash
        }) ->
    #{ 'username' => Username,
       'hash' => Hash
     }.
