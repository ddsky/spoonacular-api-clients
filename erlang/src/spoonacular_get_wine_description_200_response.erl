-module(spoonacular_get_wine_description_200_response).

-export([encode/1]).

-export_type([spoonacular_get_wine_description_200_response/0]).

-type spoonacular_get_wine_description_200_response() ::
    #{ 'wineDescription' := binary()
     }.

encode(#{ 'wineDescription' := WineDescription
        }) ->
    #{ 'wineDescription' => WineDescription
     }.
