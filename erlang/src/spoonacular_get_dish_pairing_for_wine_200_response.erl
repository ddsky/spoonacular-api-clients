-module(spoonacular_get_dish_pairing_for_wine_200_response).

-export([encode/1]).

-export_type([spoonacular_get_dish_pairing_for_wine_200_response/0]).

-type spoonacular_get_dish_pairing_for_wine_200_response() ::
    #{ 'pairings' := list(),
       'text' := binary()
     }.

encode(#{ 'pairings' := Pairings,
          'text' := Text
        }) ->
    #{ 'pairings' => Pairings,
       'text' => Text
     }.
