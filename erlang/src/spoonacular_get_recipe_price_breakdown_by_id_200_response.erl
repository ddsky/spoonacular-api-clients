-module(spoonacular_get_recipe_price_breakdown_by_id_200_response).

-export([encode/1]).

-export_type([spoonacular_get_recipe_price_breakdown_by_id_200_response/0]).

-type spoonacular_get_recipe_price_breakdown_by_id_200_response() ::
    #{ 'ingredients' := spoonacular_set:spoonacular_set(),
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
