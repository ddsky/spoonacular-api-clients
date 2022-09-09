-module(openapi_map_ingredients_to_grocery_products_200_response_inner).

-export([encode/1]).

-export_type([openapi_map_ingredients_to_grocery_products_200_response_inner/0]).

-type openapi_map_ingredients_to_grocery_products_200_response_inner() ::
    #{ 'original' := binary(),
       'originalName' := binary(),
       'ingredientImage' := binary(),
       'meta' := list(),
       'products' := openapi_set:openapi_set()
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
