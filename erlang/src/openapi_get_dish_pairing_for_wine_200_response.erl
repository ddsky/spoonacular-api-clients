-module(openapi_get_dish_pairing_for_wine_200_response).

-export([encode/1]).

-export_type([openapi_get_dish_pairing_for_wine_200_response/0]).

-type openapi_get_dish_pairing_for_wine_200_response() ::
    #{ 'pairings' := list(),
       'text' := binary()
     }.

encode(#{ 'pairings' := Pairings,
          'text' := Text
        }) ->
    #{ 'pairings' => Pairings,
       'text' => Text
     }.
