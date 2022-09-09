-module(openapi_connect_user_200_response).

-export([encode/1]).

-export_type([openapi_connect_user_200_response/0]).

-type openapi_connect_user_200_response() ::
    #{ 'username' := binary(),
       'hash' := binary()
     }.

encode(#{ 'username' := Username,
          'hash' := Hash
        }) ->
    #{ 'username' => Username,
       'hash' => Hash
     }.
