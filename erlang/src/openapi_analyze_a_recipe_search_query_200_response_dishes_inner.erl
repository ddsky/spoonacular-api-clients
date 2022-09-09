-module(openapi_analyze_a_recipe_search_query_200_response_dishes_inner).

-export([encode/1]).

-export_type([openapi_analyze_a_recipe_search_query_200_response_dishes_inner/0]).

-type openapi_analyze_a_recipe_search_query_200_response_dishes_inner() ::
    #{ 'image' := binary(),
       'name' := binary()
     }.

encode(#{ 'image' := Image,
          'name' := Name
        }) ->
    #{ 'image' => Image,
       'name' => Name
     }.
