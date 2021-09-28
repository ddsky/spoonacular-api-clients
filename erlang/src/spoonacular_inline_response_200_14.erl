-module(spoonacular_inline_response_200_14).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_14/0]).

-type spoonacular_inline_response_200_14() ::
    #{ 'id' := integer(),
       'summary' := binary(),
       'title' := binary()
     }.

encode(#{ 'id' := Id,
          'summary' := Summary,
          'title' := Title
        }) ->
    #{ 'id' => Id,
       'summary' => Summary,
       'title' => Title
     }.
