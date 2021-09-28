-module(spoonacular_inline_response_200_7).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_7/0]).

-type spoonacular_inline_response_200_7() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'imageType' := binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'imageType' := ImageType
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'imageType' => ImageType
     }.
