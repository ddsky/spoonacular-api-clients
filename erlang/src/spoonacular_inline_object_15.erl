-module(spoonacular_inline_object_15).

-export([encode/1]).

-export_type([spoonacular_inline_object_15/0]).

-type spoonacular_inline_object_15() ::
    #{ 'username' := binary(),
       'id' := integer(),
       'hash' := binary()
     }.

encode(#{ 'username' := Username,
          'id' := Id,
          'hash' := Hash
        }) ->
    #{ 'username' => Username,
       'id' => Id,
       'hash' => Hash
     }.
