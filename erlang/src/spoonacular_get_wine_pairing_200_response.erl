-module(spoonacular_get_wine_pairing_200_response).

-export([encode/1]).

-export_type([spoonacular_get_wine_pairing_200_response/0]).

-type spoonacular_get_wine_pairing_200_response() ::
    #{ 'pairedWines' := list(),
       'pairingText' := binary(),
       'productMatches' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'pairedWines' := PairedWines,
          'pairingText' := PairingText,
          'productMatches' := ProductMatches
        }) ->
    #{ 'pairedWines' => PairedWines,
       'pairingText' => PairingText,
       'productMatches' => ProductMatches
     }.
