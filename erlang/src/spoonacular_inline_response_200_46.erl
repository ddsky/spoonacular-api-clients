-module(spoonacular_inline_response_200_46).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_46/0]).

-type spoonacular_inline_response_200_46() ::
    #{ 'wineDescription' := binary()
     }.

encode(#{ 'wineDescription' := WineDescription
        }) ->
    #{ 'wineDescription' => WineDescription
     }.
