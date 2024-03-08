-module(spoonacular_add_to_meal_plan_request_1).

-export([encode/1]).

-export_type([spoonacular_add_to_meal_plan_request_1/0]).

-type spoonacular_add_to_meal_plan_request_1() ::
    #{ 'date' := integer(),
       'slot' := integer(),
       'position' := integer(),
       'type' := binary(),
       'value' := spoonacular_add_to_meal_plan_request_1_value:spoonacular_add_to_meal_plan_request_1_value()
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
