-module(spoonacular_search_all_food_200_response).

-export([encode/1]).

-export_type([spoonacular_search_all_food_200_response/0]).

-type spoonacular_search_all_food_200_response() ::
    #{ 'query' := binary(),
       'totalResults' := integer(),
       'limit' := integer(),
       'offset' := integer(),
       'searchResults' := spoonacular_set:spoonacular_set()
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
