-module(spoonacular_connect_user_request).

-export([encode/1]).

-export_type([spoonacular_connect_user_request/0]).

-type spoonacular_connect_user_request() ::
    #{ 'username' := binary(),
       'firstName' := binary(),
       'lastName' := binary(),
       'email' := binary()
     }.

encode(#{ 'username' := Username,
          'firstName' := FirstName,
          'lastName' := LastName,
          'email' := Email
        }) ->
    #{ 'username' => Username,
       'firstName' => FirstName,
       'lastName' => LastName,
       'email' => Email
     }.
