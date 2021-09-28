-module(spoonacular_inline_object_3).

-export([encode/1]).

-export_type([spoonacular_inline_object_3/0]).

-type spoonacular_inline_object_3() ::
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
