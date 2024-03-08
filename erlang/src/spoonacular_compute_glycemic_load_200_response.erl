-module(spoonacular_compute_glycemic_load_200_response).

-export([encode/1]).

-export_type([spoonacular_compute_glycemic_load_200_response/0]).

-type spoonacular_compute_glycemic_load_200_response() ::
    #{ 'totalGlycemicLoad' := integer(),
       'ingredients' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'totalGlycemicLoad' := TotalGlycemicLoad,
          'ingredients' := Ingredients
        }) ->
    #{ 'totalGlycemicLoad' => TotalGlycemicLoad,
       'ingredients' => Ingredients
     }.
