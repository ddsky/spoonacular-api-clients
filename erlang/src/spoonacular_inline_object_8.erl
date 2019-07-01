-module(spoonacular_inline_object_8).

-export([encode/1]).

-export_type([spoonacular_inline_object_8/0]).

-type spoonacular_inline_object_8() ::
    #{ 'locale' => binary()
     }.

encode(#{ 'locale' := Locale
        }) ->
    #{ 'locale' => Locale
     }.
