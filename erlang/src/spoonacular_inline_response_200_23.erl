-module(spoonacular_inline_response_200_23).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_23/0]).

-type spoonacular_inline_response_200_23() ::
    #{ 'totalGlycemicLoad' := integer(),
       'ingredients' := list()
     }.

encode(#{ 'totalGlycemicLoad' := TotalGlycemicLoad,
          'ingredients' := Ingredients
        }) ->
    #{ 'totalGlycemicLoad' => TotalGlycemicLoad,
       'ingredients' => Ingredients
     }.
