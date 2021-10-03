-module(spoonacular_inline_response_200_43).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_43/0]).

-type spoonacular_inline_response_200_43() ::
    #{ 'username' := binary(),
       'hash' := binary()
     }.

encode(#{ 'username' := Username,
          'hash' := Hash
        }) ->
    #{ 'username' => Username,
       'hash' => Hash
     }.
