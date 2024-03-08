-module(spoonacular_image_analysis_by_url_200_response_nutrition).

-export([encode/1]).

-export_type([spoonacular_image_analysis_by_url_200_response_nutrition/0]).

-type spoonacular_image_analysis_by_url_200_response_nutrition() ::
    #{ 'recipesUsed' := integer(),
       'calories' := spoonacular_image_analysis_by_url_200_response_nutrition_calories:spoonacular_image_analysis_by_url_200_response_nutrition_calories(),
       'fat' := spoonacular_image_analysis_by_url_200_response_nutrition_calories:spoonacular_image_analysis_by_url_200_response_nutrition_calories(),
       'protein' := spoonacular_image_analysis_by_url_200_response_nutrition_calories:spoonacular_image_analysis_by_url_200_response_nutrition_calories(),
       'carbs' := spoonacular_image_analysis_by_url_200_response_nutrition_calories:spoonacular_image_analysis_by_url_200_response_nutrition_calories()
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
