-module(spoonacular_inline_object_7).

-export([encode/1]).

-export_type([spoonacular_inline_object_7/0]).

-type spoonacular_inline_object_7() ::
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
