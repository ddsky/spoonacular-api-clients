-module(spoonacular_inline_response_200_49_recipes).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_49_recipes/0]).

-type spoonacular_inline_response_200_49_recipes() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'imageType' := binary(),
       'url' := binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'imageType' := ImageType,
          'url' := Url
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'imageType' => ImageType,
       'url' => Url
     }.
