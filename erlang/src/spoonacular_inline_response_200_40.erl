-module(spoonacular_inline_response_200_40).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_40/0]).

-type spoonacular_inline_response_200_40() ::
    #{ 'name' := binary(),
       'items' := list(),
       'publishAsPublic' := boolean()
     }.

encode(#{ 'name' := Name,
          'items' := Items,
          'publishAsPublic' := PublishAsPublic
        }) ->
    #{ 'name' => Name,
       'items' => Items,
       'publishAsPublic' => PublishAsPublic
     }.
