-module(spoonacular_get_similar_recipes_200_response_inner).

-export([encode/1]).

-export_type([spoonacular_get_similar_recipes_200_response_inner/0]).

-type spoonacular_get_similar_recipes_200_response_inner() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'imageType' := binary(),
       'readyInMinutes' := integer(),
       'servings' := integer(),
       'sourceUrl' := binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'imageType' := ImageType,
          'readyInMinutes' := ReadyInMinutes,
          'servings' := Servings,
          'sourceUrl' := SourceUrl
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'imageType' => ImageType,
       'readyInMinutes' => ReadyInMinutes,
       'servings' => Servings,
       'sourceUrl' => SourceUrl
     }.
