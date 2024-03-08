-module(spoonacular_map_ingredients_to_grocery_products_200_response_inner_products_inner).

-export([encode/1]).

-export_type([spoonacular_map_ingredients_to_grocery_products_200_response_inner_products_inner/0]).

-type spoonacular_map_ingredients_to_grocery_products_200_response_inner_products_inner() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'upc' := binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'upc' := Upc
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'upc' => Upc
     }.
