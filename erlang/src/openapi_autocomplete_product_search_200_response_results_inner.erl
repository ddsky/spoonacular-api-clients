-module(openapi_autocomplete_product_search_200_response_results_inner).

-export([encode/1]).

-export_type([openapi_autocomplete_product_search_200_response_results_inner/0]).

-type openapi_autocomplete_product_search_200_response_results_inner() ::
    #{ 'id' := integer(),
       'title' := binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title
        }) ->
    #{ 'id' => Id,
       'title' => Title
     }.
