-module(spoonacular_connect_user_200_response).

-export([encode/1]).

-export_type([spoonacular_connect_user_200_response/0]).

-type spoonacular_connect_user_200_response() ::
    #{ 'username' := binary(),
       'hash' := binary()
     }.

encode(#{ 'username' := Username,
          'hash' := Hash
        }) ->
    #{ 'username' => Username,
       'hash' => Hash
     }.
