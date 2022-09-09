-module(openapi_get_conversation_suggests_200_response).

-export([encode/1]).

-export_type([openapi_get_conversation_suggests_200_response/0]).

-type openapi_get_conversation_suggests_200_response() ::
    #{ 'suggests' := openapi_get_conversation_suggests_200_response_suggests:openapi_get_conversation_suggests_200_response_suggests(),
       'words' := list()
     }.

encode(#{ 'suggests' := Suggests,
          'words' := Words
        }) ->
    #{ 'suggests' => Suggests,
       'words' => Words
     }.
