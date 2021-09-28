-module(spoonacular_inline_response_200_2).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_2/0]).

-type spoonacular_inline_response_200_2() ::
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
