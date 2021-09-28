-module(spoonacular_inline_response_200_10).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_10/0]).

-type spoonacular_inline_response_200_10() ::
    #{ 'ingredients' := list(),
       'totalCost' := integer(),
       'totalCostPerServing' := integer()
     }.

encode(#{ 'ingredients' := Ingredients,
          'totalCost' := TotalCost,
          'totalCostPerServing' := TotalCostPerServing
        }) ->
    #{ 'ingredients' => Ingredients,
       'totalCost' => TotalCost,
       'totalCostPerServing' => TotalCostPerServing
     }.
