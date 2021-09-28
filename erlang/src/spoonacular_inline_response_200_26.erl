-module(spoonacular_inline_response_200_26).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_26/0]).

-type spoonacular_inline_response_200_26() ::
    #{ 'ingredient' := binary(),
       'substitutes' := list(),
       'message' := binary()
     }.

encode(#{ 'ingredient' := Ingredient,
          'substitutes' := Substitutes,
          'message' := Message
        }) ->
    #{ 'ingredient' => Ingredient,
       'substitutes' => Substitutes,
       'message' => Message
     }.
