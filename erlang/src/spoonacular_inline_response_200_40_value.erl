-module(spoonacular_inline_response_200_40_value).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_40_value/0]).

-type spoonacular_inline_response_200_40_value() ::
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
