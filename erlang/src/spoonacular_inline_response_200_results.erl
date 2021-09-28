-module(spoonacular_inline_response_200_results).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_results/0]).

-type spoonacular_inline_response_200_results() ::
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
