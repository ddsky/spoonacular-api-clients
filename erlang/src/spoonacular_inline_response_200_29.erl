-module(spoonacular_inline_response_200_29).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_29/0]).

-type spoonacular_inline_response_200_29() ::
    #{ 'customFoods' := list(),
       'type' := binary(),
       'offset' := integer(),
       'number' := integer()
     }.

encode(#{ 'customFoods' := CustomFoods,
          'type' := Type,
          'offset' := Offset,
          'number' := Number
        }) ->
    #{ 'customFoods' => CustomFoods,
       'type' => Type,
       'offset' => Offset,
       'number' => Number
     }.
