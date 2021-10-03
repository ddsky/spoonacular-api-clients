-module(spoonacular_inline_response_200_51).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_51/0]).

-type spoonacular_inline_response_200_51() ::
    #{ 'annotations' := list()
     }.

encode(#{ 'annotations' := Annotations
        }) ->
    #{ 'annotations' => Annotations
     }.
