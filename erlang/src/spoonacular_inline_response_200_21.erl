-module(spoonacular_inline_response_200_21).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_21/0]).

-type spoonacular_inline_response_200_21() ::
    #{ 'calories' := spoonacular_inline_response_200_21_calories:spoonacular_inline_response_200_21_calories(),
       'carbs' := spoonacular_inline_response_200_21_calories:spoonacular_inline_response_200_21_calories(),
       'fat' := spoonacular_inline_response_200_21_calories:spoonacular_inline_response_200_21_calories(),
       'protein' := spoonacular_inline_response_200_21_calories:spoonacular_inline_response_200_21_calories(),
       'recipesUsed' := integer()
     }.

encode(#{ 'calories' := Calories,
          'carbs' := Carbs,
          'fat' := Fat,
          'protein' := Protein,
          'recipesUsed' := RecipesUsed
        }) ->
    #{ 'calories' => Calories,
       'carbs' => Carbs,
       'fat' => Fat,
       'protein' => Protein,
       'recipesUsed' => RecipesUsed
     }.
