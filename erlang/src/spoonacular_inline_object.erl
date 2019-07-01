-module(spoonacular_inline_object).

-export([encode/1]).

-export_type([spoonacular_inline_object/0]).

-type spoonacular_inline_object() ::
    #{ 'ingredientList' := binary(),
       'servings' := integer(),
       'defaultCss' => boolean(),
       'showBacklink' => boolean()
     }.

encode(#{ 'ingredientList' := IngredientList,
          'servings' := Servings,
          'defaultCss' := DefaultCss,
          'showBacklink' := ShowBacklink
        }) ->
    #{ 'ingredientList' => IngredientList,
       'servings' => Servings,
       'defaultCss' => DefaultCss,
       'showBacklink' => ShowBacklink
     }.
