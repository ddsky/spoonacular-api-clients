-module(spoonacular_inline_response_200_40_items).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_40_items/0]).

-type spoonacular_inline_response_200_40_items() ::
    #{ 'id' := integer(),
       'slot' := integer(),
       'position' := integer(),
       'type' := binary(),
       'value' => spoonacular_inline_response_200_40_value:spoonacular_inline_response_200_40_value()
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
