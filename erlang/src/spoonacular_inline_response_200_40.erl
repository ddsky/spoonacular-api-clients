-module(spoonacular_inline_response_200_40).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_40/0]).

-type spoonacular_inline_response_200_40() ::
    #{ 'id' := integer(),
       'name' := binary(),
       'days' := list()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'days' := Days
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'days' => Days
     }.
