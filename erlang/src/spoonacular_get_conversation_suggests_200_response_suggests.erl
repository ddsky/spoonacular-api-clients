-module(spoonacular_get_conversation_suggests_200_response_suggests).

-export([encode/1]).

-export_type([spoonacular_get_conversation_suggests_200_response_suggests/0]).

-type spoonacular_get_conversation_suggests_200_response_suggests() ::
    #{ 'Underscore' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'Underscore' := Underscore
        }) ->
    #{ '_' => Underscore
     }.
