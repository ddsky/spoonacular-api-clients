-module(spoonacular_inline_response_200_38_value).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_38_value/0]).

-type spoonacular_inline_response_200_38_value() ::
    #{ 'servings' := integer(),
       'id' := integer(),
       'title' := binary(),
       'imageType' := binary()
     }.

encode(#{ 'servings' := Servings,
          'id' := Id,
          'title' := Title,
          'imageType' := ImageType
        }) ->
    #{ 'servings' => Servings,
       'id' => Id,
       'title' => Title,
       'imageType' => ImageType
     }.
