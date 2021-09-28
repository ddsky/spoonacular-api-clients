-module(spoonacular_inline_response_200_42).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_42/0]).

-type spoonacular_inline_response_200_42() ::
    #{ 'username' := binary(),
       'hash' := binary()
     }.

encode(#{ 'username' := Username,
          'hash' := Hash
        }) ->
    #{ 'username' => Username,
       'hash' => Hash
     }.
