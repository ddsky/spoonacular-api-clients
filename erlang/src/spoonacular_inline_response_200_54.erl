-module(spoonacular_inline_response_200_54).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_54/0]).

-type spoonacular_inline_response_200_54() ::
    #{ 'text' := binary()
     }.

encode(#{ 'text' := Text
        }) ->
    #{ 'text' => Text
     }.
