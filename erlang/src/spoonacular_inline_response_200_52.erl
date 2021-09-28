-module(spoonacular_inline_response_200_52).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_52/0]).

-type spoonacular_inline_response_200_52() ::
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
