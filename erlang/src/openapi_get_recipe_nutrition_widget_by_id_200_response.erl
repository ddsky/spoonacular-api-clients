-module(openapi_get_recipe_nutrition_widget_by_id_200_response).

-export([encode/1]).

-export_type([openapi_get_recipe_nutrition_widget_by_id_200_response/0]).

-type openapi_get_recipe_nutrition_widget_by_id_200_response() ::
    #{ 'calories' := binary(),
       'carbs' := binary(),
       'fat' := binary(),
       'protein' := binary(),
       'bad' := openapi_set:openapi_set(),
       'good' := openapi_set:openapi_set()
     }.

encode(#{ 'calories' := Calories,
          'carbs' := Carbs,
          'fat' := Fat,
          'protein' := Protein,
          'bad' := Bad,
          'good' := Good
        }) ->
    #{ 'calories' => Calories,
       'carbs' => Carbs,
       'fat' => Fat,
       'protein' => Protein,
       'bad' => Bad,
       'good' => Good
     }.
