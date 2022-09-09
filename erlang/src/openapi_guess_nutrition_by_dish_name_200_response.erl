-module(openapi_guess_nutrition_by_dish_name_200_response).

-export([encode/1]).

-export_type([openapi_guess_nutrition_by_dish_name_200_response/0]).

-type openapi_guess_nutrition_by_dish_name_200_response() ::
    #{ 'calories' := openapi_guess_nutrition_by_dish_name_200_response_calories:openapi_guess_nutrition_by_dish_name_200_response_calories(),
       'carbs' := openapi_guess_nutrition_by_dish_name_200_response_calories:openapi_guess_nutrition_by_dish_name_200_response_calories(),
       'fat' := openapi_guess_nutrition_by_dish_name_200_response_calories:openapi_guess_nutrition_by_dish_name_200_response_calories(),
       'protein' := openapi_guess_nutrition_by_dish_name_200_response_calories:openapi_guess_nutrition_by_dish_name_200_response_calories(),
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
