-module(spoonacular_search_recipes_by_nutrients_200_response_inner).

-export([encode/1]).

-export_type([spoonacular_search_recipes_by_nutrients_200_response_inner/0]).

-type spoonacular_search_recipes_by_nutrients_200_response_inner() ::
    #{ 'calories' := integer(),
       'carbs' := binary(),
       'fat' := binary(),
       'id' := integer(),
       'image' := binary(),
       'imageType' := binary(),
       'protein' := binary(),
       'title' := binary()
     }.

encode(#{ 'calories' := Calories,
          'carbs' := Carbs,
          'fat' := Fat,
          'id' := Id,
          'image' := Image,
          'imageType' := ImageType,
          'protein' := Protein,
          'title' := Title
        }) ->
    #{ 'calories' => Calories,
       'carbs' => Carbs,
       'fat' => Fat,
       'id' => Id,
       'image' => Image,
       'imageType' => ImageType,
       'protein' => Protein,
       'title' => Title
     }.
