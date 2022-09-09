-module(openapi_image_analysis_by_url_200_response).

-export([encode/1]).

-export_type([openapi_image_analysis_by_url_200_response/0]).

-type openapi_image_analysis_by_url_200_response() ::
    #{ 'nutrition' := openapi_image_analysis_by_url_200_response_nutrition:openapi_image_analysis_by_url_200_response_nutrition(),
       'category' := openapi_image_analysis_by_url_200_response_category:openapi_image_analysis_by_url_200_response_category(),
       'recipes' := openapi_set:openapi_set()
     }.

encode(#{ 'nutrition' := Nutrition,
          'category' := Category,
          'recipes' := Recipes
        }) ->
    #{ 'nutrition' => Nutrition,
       'category' => Category,
       'recipes' => Recipes
     }.
