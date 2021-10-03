-module(spoonacular_inline_response_200_41_value).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_41_value/0]).

-type spoonacular_inline_response_200_41_value() ::
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
