-module(spoonacular_inline_response_200_45).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_45/0]).

-type spoonacular_inline_response_200_45() ::
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
