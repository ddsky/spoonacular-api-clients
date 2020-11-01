-module(spoonacular_inline_object_6).

-export([encode/1]).

-export_type([spoonacular_inline_object_6/0]).

-type spoonacular_inline_object_6() ::
    #{ 'title' := binary(),
       'ingredientList' := binary()
     }.

encode(#{ 'title' := Title,
          'ingredientList' := IngredientList
        }) ->
    #{ 'title' => Title,
       'ingredientList' => IngredientList
     }.
