-module(spoonacular_inline_object_16).

-export([encode/1]).

-export_type([spoonacular_inline_object_16/0]).

-type spoonacular_inline_object_16() ::
    #{ 'text' := binary()
     }.

encode(#{ 'text' := Text
        }) ->
    #{ 'text' => Text
     }.
