-module(openapi_get_wine_description_200_response).

-export([encode/1]).

-export_type([openapi_get_wine_description_200_response/0]).

-type openapi_get_wine_description_200_response() ::
    #{ 'wineDescription' := binary()
     }.

encode(#{ 'wineDescription' := WineDescription
        }) ->
    #{ 'wineDescription' => WineDescription
     }.
