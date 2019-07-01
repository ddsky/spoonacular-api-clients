-module(spoonacular_inline_object_6).

-export([encode/1]).

-export_type([spoonacular_inline_object_6/0]).

-type spoonacular_inline_object_6() ::
    #{ 'ingredientList' := binary(),
       'servings' := integer(),
       'includeNutrition' => boolean()
     }.

encode(#{ 'ingredientList' := IngredientList,
          'servings' := Servings,
          'includeNutrition' := IncludeNutrition
        }) ->
    #{ 'ingredientList' => IngredientList,
       'servings' => Servings,
       'includeNutrition' => IncludeNutrition
     }.
