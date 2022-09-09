-module(openapi_get_recipe_information_200_response_wine_pairing).

-export([encode/1]).

-export_type([openapi_get_recipe_information_200_response_wine_pairing/0]).

-type openapi_get_recipe_information_200_response_wine_pairing() ::
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
