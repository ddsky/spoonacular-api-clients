-module(spoonacular_get_conversation_suggests_200_response).

-export([encode/1]).

-export_type([spoonacular_get_conversation_suggests_200_response/0]).

-type spoonacular_get_conversation_suggests_200_response() ::
    #{ 'suggests' := spoonacular_get_conversation_suggests_200_response_suggests:spoonacular_get_conversation_suggests_200_response_suggests(),
       'words' := list()
     }.

encode(#{ 'suggests' := Suggests,
          'words' := Words
        }) ->
    #{ 'suggests' => Suggests,
       'words' => Words
     }.
