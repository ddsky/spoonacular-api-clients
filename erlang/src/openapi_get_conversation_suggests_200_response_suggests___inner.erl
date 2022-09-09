-module(openapi_get_conversation_suggests_200_response_suggests___inner).

-export([encode/1]).

-export_type([openapi_get_conversation_suggests_200_response_suggests___inner/0]).

-type openapi_get_conversation_suggests_200_response_suggests___inner() ::
    #{ 'name' := binary()
     }.

encode(#{ 'name' := Name
        }) ->
    #{ 'name' => Name
     }.
