-module(spoonacular_inline_response_200_5).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_5/0]).

-type spoonacular_inline_response_200_5() ::
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
