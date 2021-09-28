-module(spoonacular_inline_response_200_44).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_44/0]).

-type spoonacular_inline_response_200_44() ::
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
