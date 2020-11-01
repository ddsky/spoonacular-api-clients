-module(spoonacular_inline_object).

-export([encode/1]).

-export_type([spoonacular_inline_object/0]).

-type spoonacular_inline_object() ::
    #{ 'ingredientList' := binary()
     }.

encode(#{ 'ingredientList' := IngredientList
        }) ->
    #{ 'ingredientList' => IngredientList
     }.
