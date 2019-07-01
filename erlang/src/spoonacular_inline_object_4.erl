-module(spoonacular_inline_object_4).

-export([encode/1]).

-export_type([spoonacular_inline_object_4/0]).

-type spoonacular_inline_object_4() ::
    #{ 'instructions' := binary()
     }.

encode(#{ 'instructions' := Instructions
        }) ->
    #{ 'instructions' => Instructions
     }.
