-module(spoonacular_search_grocery_products_by_upc_200_response_servings).

-export([encode/1]).

-export_type([spoonacular_search_grocery_products_by_upc_200_response_servings/0]).

-type spoonacular_search_grocery_products_by_upc_200_response_servings() ::
    #{ 'number' := integer(),
       'size' := integer(),
       'unit' := binary()
     }.

encode(#{ 'number' := Number,
          'size' := Size,
          'unit' := Unit
        }) ->
    #{ 'number' => Number,
       'size' => Size,
       'unit' => Unit
     }.
