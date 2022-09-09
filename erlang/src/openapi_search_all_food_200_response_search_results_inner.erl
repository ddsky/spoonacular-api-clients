-module(openapi_search_all_food_200_response_search_results_inner).

-export([encode/1]).

-export_type([openapi_search_all_food_200_response_search_results_inner/0]).

-type openapi_search_all_food_200_response_search_results_inner() ::
    #{ 'name' := binary(),
       'totalResults' := integer(),
       'results' => openapi_set:openapi_set()
     }.

encode(#{ 'name' := Name,
          'totalResults' := TotalResults,
          'results' := Results
        }) ->
    #{ 'name' => Name,
       'totalResults' => TotalResults,
       'results' => Results
     }.
