-module(spoonacular_search_recipes_by_ingredients_200_response_inner).

-export([encode/1]).

-export_type([spoonacular_search_recipes_by_ingredients_200_response_inner/0]).

-type spoonacular_search_recipes_by_ingredients_200_response_inner() ::
    #{ 'id' := integer(),
       'image' := binary(),
       'imageType' := binary(),
       'likes' := integer(),
       'missedIngredientCount' := integer(),
       'missedIngredients' := spoonacular_set:spoonacular_set(),
       'title' := binary(),
       'unusedIngredients' := list(),
       'usedIngredientCount' := integer(),
       'usedIngredients' := spoonacular_set:spoonacular_set()
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
          'usedIngredients' := UsedIngredients
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
       'usedIngredients' => UsedIngredients
     }.
