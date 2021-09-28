-module(spoonacular_inline_response_200_32_results).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_32_results/0]).

-type spoonacular_inline_response_200_32_results() ::
    #{ 'id' := integer(),
       'title' := binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title
        }) ->
    #{ 'id' => Id,
       'title' => Title
     }.
