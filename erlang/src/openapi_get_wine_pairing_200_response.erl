-module(openapi_get_wine_pairing_200_response).

-export([encode/1]).

-export_type([openapi_get_wine_pairing_200_response/0]).

-type openapi_get_wine_pairing_200_response() ::
    #{ 'pairedWines' := list(),
       'pairingText' := binary(),
       'productMatches' := openapi_set:openapi_set()
     }.

encode(#{ 'pairedWines' := PairedWines,
          'pairingText' := PairingText,
          'productMatches' := ProductMatches
        }) ->
    #{ 'pairedWines' => PairedWines,
       'pairingText' => PairingText,
       'productMatches' => ProductMatches
     }.
