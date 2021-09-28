-module(spoonacular_inline_response_200_52_search_results).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_52_search_results/0]).

-type spoonacular_inline_response_200_52_search_results() ::
    #{ 'name' := binary(),
       'totalResults' := integer(),
       'results' => list()
     }.

encode(#{ 'name' := Name,
          'totalResults' := TotalResults,
          'results' := Results
        }) ->
    #{ 'name' => Name,
       'totalResults' => TotalResults,
       'results' => Results
     }.
