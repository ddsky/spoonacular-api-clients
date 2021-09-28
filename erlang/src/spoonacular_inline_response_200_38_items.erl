-module(spoonacular_inline_response_200_38_items).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_38_items/0]).

-type spoonacular_inline_response_200_38_items() ::
    #{ 'id' := integer(),
       'slot' := integer(),
       'position' := integer(),
       'type' := binary(),
       'value' => spoonacular_inline_response_200_38_value:spoonacular_inline_response_200_38_value()
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
