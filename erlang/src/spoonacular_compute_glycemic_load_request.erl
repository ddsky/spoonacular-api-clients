-module(spoonacular_compute_glycemic_load_request).

-export([encode/1]).

-export_type([spoonacular_compute_glycemic_load_request/0]).

-type spoonacular_compute_glycemic_load_request() ::
    #{ 'ingredients' := list()
     }.

encode(#{ 'ingredients' := Ingredients
        }) ->
    #{ 'ingredients' => Ingredients
     }.
