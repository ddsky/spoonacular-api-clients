-module(spoonacular_get_conversation_suggests_200_response_suggests___inner).

-export([encode/1]).

-export_type([spoonacular_get_conversation_suggests_200_response_suggests___inner/0]).

-type spoonacular_get_conversation_suggests_200_response_suggests___inner() ::
    #{ 'name' := binary()
     }.

encode(#{ 'name' := Name
        }) ->
    #{ 'name' => Name
     }.
