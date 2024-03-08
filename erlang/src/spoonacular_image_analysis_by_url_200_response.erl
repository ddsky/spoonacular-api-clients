-module(spoonacular_image_analysis_by_url_200_response).

-export([encode/1]).

-export_type([spoonacular_image_analysis_by_url_200_response/0]).

-type spoonacular_image_analysis_by_url_200_response() ::
    #{ 'nutrition' := spoonacular_image_analysis_by_url_200_response_nutrition:spoonacular_image_analysis_by_url_200_response_nutrition(),
       'category' := spoonacular_image_analysis_by_url_200_response_category:spoonacular_image_analysis_by_url_200_response_category(),
       'recipes' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'nutrition' := Nutrition,
          'category' := Category,
          'recipes' := Recipes
        }) ->
    #{ 'nutrition' => Nutrition,
       'category' => Category,
       'recipes' => Recipes
     }.
