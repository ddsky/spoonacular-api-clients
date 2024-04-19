-module(spoonacular_add_to_meal_plan_request).

-export([encode/1]).

-export_type([spoonacular_add_to_meal_plan_request/0]).

-type spoonacular_add_to_meal_plan_request() ::
    #{ 'date' := integer(),
       'slot' := integer(),
       'position' := integer(),
       'type' := binary(),
       'value' := spoonacular_add_to_meal_plan_request_value:spoonacular_add_to_meal_plan_request_value()
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
