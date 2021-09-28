-module(spoonacular_inline_response_200_1).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_1/0]).

-type spoonacular_inline_response_200_1() ::
    #{ 'id' := integer(),
       'image' := binary(),
       'imageType' := binary(),
       'likes' := integer(),
       'missedIngredientCount' := integer(),
       'missedIngredients' := list(),
       'title' := binary(),
       'unusedIngredients' := list(),
       'usedIngredientCount' := integer(),
       'usedIngredients' := list(),
       '' => binary()
     }.

encode(#{ 'id' := Id,
          'image' := Image,
          'imageType' := ImageType,
          'likes' := Likes,
          'missedIngredientCount' := MissedIngredientCount,
          'missedIngredients' := MissedIngredients,
          'title' := Title,
          'unusedIngredients' := UnusedIngredients,
          'usedIngredientCount' := UsedIngredientCount,
          'usedIngredients' := UsedIngredients,
          '' := 
        }) ->
    #{ 'id' => Id,
       'image' => Image,
       'imageType' => ImageType,
       'likes' => Likes,
       'missedIngredientCount' => MissedIngredientCount,
       'missedIngredients' => MissedIngredients,
       'title' => Title,
       'unusedIngredients' => UnusedIngredients,
       'usedIngredientCount' => UsedIngredientCount,
       'usedIngredients' => UsedIngredients,
       '' => 
     }.
