-module(spoonacular_inline_response_200_25_results).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_25_results/0]).

-type spoonacular_inline_response_200_25_results() ::
    #{ 'id' := integer(),
       'name' := binary(),
       'image' := binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'image' := Image
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'image' => Image
     }.
