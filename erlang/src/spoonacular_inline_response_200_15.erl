-module(spoonacular_inline_response_200_15).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_15/0]).

-type spoonacular_inline_response_200_15() ::
    #{ 'url' := binary()
     }.

encode(#{ 'url' := Url
        }) ->
    #{ 'url' => Url
     }.
