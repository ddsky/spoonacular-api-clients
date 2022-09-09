-module(openapi_search_recipes_200_response).

-export([encode/1]).

-export_type([openapi_search_recipes_200_response/0]).

-type openapi_search_recipes_200_response() ::
    #{ 'offset' := integer(),
       'number' := integer(),
       'results' := openapi_set:openapi_set(),
       'totalResults' := integer()
     }.

encode(#{ 'offset' := Offset,
          'number' := Number,
          'results' := Results,
          'totalResults' := TotalResults
        }) ->
    #{ 'offset' => Offset,
       'number' => Number,
       'results' => Results,
       'totalResults' => TotalResults
     }.
