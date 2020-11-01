-module(spoonacular_inline_object_10).

-export([encode/1]).

-export_type([spoonacular_inline_object_10/0]).

-type spoonacular_inline_object_10() ::
    #{ 'username' := binary(),
       'date' := binary(),
       'hash' := binary()
     }.

encode(#{ 'username' := Username,
          'date' := Date,
          'hash' := Hash
        }) ->
    #{ 'username' => Username,
       'date' => Date,
       'hash' => Hash
     }.
