-module(openapi_get_meal_plan_template_200_response_days_inner_items_inner).

-export([encode/1]).

-export_type([openapi_get_meal_plan_template_200_response_days_inner_items_inner/0]).

-type openapi_get_meal_plan_template_200_response_days_inner_items_inner() ::
    #{ 'id' := integer(),
       'slot' := integer(),
       'position' := integer(),
       'type' := binary(),
       'value' => openapi_get_meal_plan_template_200_response_days_inner_items_inner_value:openapi_get_meal_plan_template_200_response_days_inner_items_inner_value()
     }.

encode(#{ 'id' := Id,
          'slot' := Slot,
          'position' := Position,
          'type' := Type,
          'value' := Value
        }) ->
    #{ 'id' => Id,
       'slot' => Slot,
       'position' => Position,
       'type' => Type,
       'value' => Value
     }.
