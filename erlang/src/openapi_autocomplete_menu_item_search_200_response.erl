-module(openapi_autocomplete_menu_item_search_200_response).

-export([encode/1]).

-export_type([openapi_autocomplete_menu_item_search_200_response/0]).

-type openapi_autocomplete_menu_item_search_200_response() ::
    #{ 'results' := openapi_set:openapi_set()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
