-module(spoonacular_inline_response_200_34).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_34/0]).

-type spoonacular_inline_response_200_34() ::
    #{ 'original' := binary(),
       'originalName' := binary(),
       'ingredientImage' := binary(),
       'meta' := list(),
       'products' := list()
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
