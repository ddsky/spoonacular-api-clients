-module(spoonacular_recipe_information_wine_pairing).

-export([encode/1]).

-export_type([spoonacular_recipe_information_wine_pairing/0]).

-type spoonacular_recipe_information_wine_pairing() ::
    #{ 'pairedWines' => list(),
       'pairingText' => binary(),
       'productMatches' => spoonacular_set:spoonacular_set()
     }.

encode(#{ 'pairedWines' := PairedWines,
          'pairingText' := PairingText,
          'productMatches' := ProductMatches
        }) ->
    #{ 'pairedWines' => PairedWines,
       'pairingText' => PairingText,
       'productMatches' => ProductMatches
     }.
