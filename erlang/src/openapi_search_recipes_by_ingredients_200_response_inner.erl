-module(openapi_search_recipes_by_ingredients_200_response_inner).

-export([encode/1]).

-export_type([openapi_search_recipes_by_ingredients_200_response_inner/0]).

-type openapi_search_recipes_by_ingredients_200_response_inner() ::
    #{ 'id' := integer(),
       'image' := binary(),
       'imageType' := binary(),
       'likes' := integer(),
       'missedIngredientCount' := integer(),
       'missedIngredients' := openapi_set:openapi_set(),
       'title' := binary(),
       'unusedIngredients' := list(),
       'usedIngredientCount' := integer(),
       'usedIngredients' := openapi_set:openapi_set()
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
