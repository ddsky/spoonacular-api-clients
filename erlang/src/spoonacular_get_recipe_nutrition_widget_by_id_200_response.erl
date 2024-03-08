-module(spoonacular_get_recipe_nutrition_widget_by_id_200_response).

-export([encode/1]).

-export_type([spoonacular_get_recipe_nutrition_widget_by_id_200_response/0]).

-type spoonacular_get_recipe_nutrition_widget_by_id_200_response() ::
    #{ 'calories' := binary(),
       'carbs' := binary(),
       'fat' := binary(),
       'protein' := binary(),
       'bad' := spoonacular_set:spoonacular_set(),
       'good' := spoonacular_set:spoonacular_set()
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
