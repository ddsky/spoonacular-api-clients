-module(spoonacular_map_ingredients_to_grocery_products_200_response_inner).

-export([encode/1]).

-export_type([spoonacular_map_ingredients_to_grocery_products_200_response_inner/0]).

-type spoonacular_map_ingredients_to_grocery_products_200_response_inner() ::
    #{ 'original' := binary(),
       'originalName' := binary(),
       'ingredientImage' := binary(),
       'meta' := list(),
       'products' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'original' := Original,
          'originalName' := OriginalName,
          'ingredientImage' := IngredientImage,
          'meta' := Meta,
          'products' := Products
        }) ->
    #{ 'original' => Original,
       'originalName' => OriginalName,
       'ingredientImage' => IngredientImage,
       'meta' => Meta,
       'products' => Products
     }.
