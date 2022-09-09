-module(openapi_add_meal_plan_template_200_response_items_inner).

-export([encode/1]).

-export_type([openapi_add_meal_plan_template_200_response_items_inner/0]).

-type openapi_add_meal_plan_template_200_response_items_inner() ::
    #{ 'day' := integer(),
       'slot' := integer(),
       'position' := integer(),
       'type' := binary(),
       'value' => openapi_add_meal_plan_template_200_response_items_inner_value:openapi_add_meal_plan_template_200_response_items_inner_value()
     }.

encode(#{ 'day' := Day,
          'slot' := Slot,
          'position' := Position,
          'type' := Type,
          'value' := Value
        }) ->
    #{ 'day' => Day,
       'slot' => Slot,
       'position' => Position,
       'type' => Type,
       'value' => Value
     }.
