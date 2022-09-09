-module(openapi_connect_user_request).

-export([encode/1]).

-export_type([openapi_connect_user_request/0]).

-type openapi_connect_user_request() ::
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
