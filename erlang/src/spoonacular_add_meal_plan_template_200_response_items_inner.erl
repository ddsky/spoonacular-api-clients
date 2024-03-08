-module(spoonacular_add_meal_plan_template_200_response_items_inner).

-export([encode/1]).

-export_type([spoonacular_add_meal_plan_template_200_response_items_inner/0]).

-type spoonacular_add_meal_plan_template_200_response_items_inner() ::
    #{ 'day' := integer(),
       'slot' := integer(),
       'position' := integer(),
       'type' := binary(),
       'value' => spoonacular_add_meal_plan_template_200_response_items_inner_value:spoonacular_add_meal_plan_template_200_response_items_inner_value()
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
