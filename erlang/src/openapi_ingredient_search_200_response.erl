-module(openapi_ingredient_search_200_response).

-export([encode/1]).

-export_type([openapi_ingredient_search_200_response/0]).

-type openapi_ingredient_search_200_response() ::
    #{ 'results' := openapi_set:openapi_set(),
       'offset' := integer(),
       'number' := integer(),
       'totalResults' := integer()
     }.

encode(#{ 'results' := Results,
          'offset' := Offset,
          'number' := Number,
          'totalResults' := TotalResults
        }) ->
    #{ 'results' => Results,
       'offset' => Offset,
       'number' => Number,
       'totalResults' => TotalResults
     }.
