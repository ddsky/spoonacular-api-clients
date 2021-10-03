-module(spoonacular_inline_response_200_53).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_53/0]).

-type spoonacular_inline_response_200_53() ::
    #{ 'query' := binary(),
       'totalResults' := integer(),
       'limit' := integer(),
       'offset' := integer(),
       'searchResults' := list()
     }.

encode(#{ 'query' := Query,
          'totalResults' := TotalResults,
          'limit' := Limit,
          'offset' := Offset,
          'searchResults' := SearchResults
        }) ->
    #{ 'query' => Query,
       'totalResults' => TotalResults,
       'limit' => Limit,
       'offset' => Offset,
       'searchResults' => SearchResults
     }.
