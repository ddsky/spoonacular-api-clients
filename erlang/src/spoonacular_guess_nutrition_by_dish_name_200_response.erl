-module(spoonacular_guess_nutrition_by_dish_name_200_response).

-export([encode/1]).

-export_type([spoonacular_guess_nutrition_by_dish_name_200_response/0]).

-type spoonacular_guess_nutrition_by_dish_name_200_response() ::
    #{ 'calories' := spoonacular_guess_nutrition_by_dish_name_200_response_calories:spoonacular_guess_nutrition_by_dish_name_200_response_calories(),
       'carbs' := spoonacular_guess_nutrition_by_dish_name_200_response_calories:spoonacular_guess_nutrition_by_dish_name_200_response_calories(),
       'fat' := spoonacular_guess_nutrition_by_dish_name_200_response_calories:spoonacular_guess_nutrition_by_dish_name_200_response_calories(),
       'protein' := spoonacular_guess_nutrition_by_dish_name_200_response_calories:spoonacular_guess_nutrition_by_dish_name_200_response_calories(),
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
