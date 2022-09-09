-module(openapi_image_analysis_by_url_200_response_nutrition).

-export([encode/1]).

-export_type([openapi_image_analysis_by_url_200_response_nutrition/0]).

-type openapi_image_analysis_by_url_200_response_nutrition() ::
    #{ 'recipesUsed' := integer(),
       'calories' := openapi_image_analysis_by_url_200_response_nutrition_calories:openapi_image_analysis_by_url_200_response_nutrition_calories(),
       'fat' := openapi_image_analysis_by_url_200_response_nutrition_calories:openapi_image_analysis_by_url_200_response_nutrition_calories(),
       'protein' := openapi_image_analysis_by_url_200_response_nutrition_calories:openapi_image_analysis_by_url_200_response_nutrition_calories(),
       'carbs' := openapi_image_analysis_by_url_200_response_nutrition_calories:openapi_image_analysis_by_url_200_response_nutrition_calories()
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
