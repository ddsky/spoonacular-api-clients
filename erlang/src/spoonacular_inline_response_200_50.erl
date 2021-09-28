-module(spoonacular_inline_response_200_50).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_50/0]).

-type spoonacular_inline_response_200_50() ::
    #{ 'annotations' := list()
     }.

encode(#{ 'annotations' := Annotations
        }) ->
    #{ 'annotations' => Annotations
     }.
