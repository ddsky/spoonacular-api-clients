-module(spoonacular_inline_response_200_55).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_55/0]).

-type spoonacular_inline_response_200_55() ::
    #{ 'text' := binary()
     }.

encode(#{ 'text' := Text
        }) ->
    #{ 'text' => Text
     }.
