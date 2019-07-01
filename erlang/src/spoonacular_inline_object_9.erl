-module(spoonacular_inline_object_9).

-export([encode/1]).

-export_type([spoonacular_inline_object_9/0]).

-type spoonacular_inline_object_9() ::
    #{ 'text' := binary()
     }.

encode(#{ 'text' := Text
        }) ->
    #{ 'text' => Text
     }.
