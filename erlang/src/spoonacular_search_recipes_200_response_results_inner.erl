-module(spoonacular_search_recipes_200_response_results_inner).

-export([encode/1]).

-export_type([spoonacular_search_recipes_200_response_results_inner/0]).

-type spoonacular_search_recipes_200_response_results_inner() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'calories' := integer(),
       'carbs' := binary(),
       'fat' := binary(),
       'image' := binary(),
       'imageType' := binary(),
       'protein' := binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'calories' := Calories,
          'carbs' := Carbs,
          'fat' := Fat,
          'image' := Image,
          'imageType' := ImageType,
          'protein' := Protein
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'calories' => Calories,
       'carbs' => Carbs,
       'fat' => Fat,
       'image' => Image,
       'imageType' => ImageType,
       'protein' => Protein
     }.
