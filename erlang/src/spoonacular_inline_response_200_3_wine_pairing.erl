-module(spoonacular_inline_response_200_3_wine_pairing).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_3_wine_pairing/0]).

-type spoonacular_inline_response_200_3_wine_pairing() ::
    #{ 'pairedWines' := list(),
       'pairingText' := binary(),
       'productMatches' := list()
     }.

encode(#{ 'pairedWines' := PairedWines,
          'pairingText' := PairingText,
          'productMatches' := ProductMatches
        }) ->
    #{ 'pairedWines' => PairedWines,
       'pairingText' => PairingText,
       'productMatches' => ProductMatches
     }.
