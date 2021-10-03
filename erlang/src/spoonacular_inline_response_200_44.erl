-module(spoonacular_inline_response_200_44).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_44/0]).

-type spoonacular_inline_response_200_44() ::
    #{ 'pairings' := list(),
       'text' := binary()
     }.

encode(#{ 'pairings' := Pairings,
          'text' := Text
        }) ->
    #{ 'pairings' => Pairings,
       'text' => Text
     }.
