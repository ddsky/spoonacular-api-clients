-module(spoonacular_inline_response_200_48_nutrition).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_48_nutrition/0]).

-type spoonacular_inline_response_200_48_nutrition() ::
    #{ 'recipesUsed' := integer(),
       'calories' := spoonacular_inline_response_200_48_nutrition_calories:spoonacular_inline_response_200_48_nutrition_calories(),
       'fat' := spoonacular_inline_response_200_48_nutrition_calories:spoonacular_inline_response_200_48_nutrition_calories(),
       'protein' := spoonacular_inline_response_200_48_nutrition_calories:spoonacular_inline_response_200_48_nutrition_calories(),
       'carbs' := spoonacular_inline_response_200_48_nutrition_calories:spoonacular_inline_response_200_48_nutrition_calories()
     }.

encode(#{ 'recipesUsed' := RecipesUsed,
          'calories' := Calories,
          'fat' := Fat,
          'protein' := Protein,
          'carbs' := Carbs
        }) ->
    #{ 'recipesUsed' => RecipesUsed,
       'calories' => Calories,
       'fat' => Fat,
       'protein' => Protein,
       'carbs' => Carbs
     }.
