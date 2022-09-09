-module(openapi_add_to_meal_plan_request_1).

-export([encode/1]).

-export_type([openapi_add_to_meal_plan_request_1/0]).

-type openapi_add_to_meal_plan_request_1() ::
    #{ 'date' := integer(),
       'slot' := integer(),
       'position' := integer(),
       'type' := binary(),
       'value' := openapi_add_to_meal_plan_request_1_value:openapi_add_to_meal_plan_request_1_value()
     }.

encode(#{ 'date' := Date,
          'slot' := Slot,
          'position' := Position,
          'type' := Type,
          'value' := Value
        }) ->
    #{ 'date' => Date,
       'slot' => Slot,
       'position' => Position,
       'type' => Type,
       'value' => Value
     }.
