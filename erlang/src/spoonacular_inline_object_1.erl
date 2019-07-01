-module(spoonacular_inline_object_1).

-export([encode/1]).

-export_type([spoonacular_inline_object_1/0]).

-type spoonacular_inline_object_1() ::
    #{ 'ingredientList' := binary(),
       'servings' := integer(),
       'mode' => integer(),
       'defaultCss' => boolean(),
       'showBacklink' => boolean()
     }.

encode(#{ 'ingredientList' := IngredientList,
          'servings' := Servings,
          'mode' := Mode,
          'defaultCss' := DefaultCss,
          'showBacklink' := ShowBacklink
        }) ->
    #{ 'ingredientList' => IngredientList,
       'servings' => Servings,
       'mode' => Mode,
       'defaultCss' => DefaultCss,
       'showBacklink' => ShowBacklink
     }.
