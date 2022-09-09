-module(openapi_analyze_a_recipe_search_query_200_response_ingredients_inner).

-export([encode/1]).

-export_type([openapi_analyze_a_recipe_search_query_200_response_ingredients_inner/0]).

-type openapi_analyze_a_recipe_search_query_200_response_ingredients_inner() ::
    #{ 'image' := binary(),
       'include' := boolean(),
       'name' := binary()
     }.

encode(#{ 'image' := Image,
          'include' := Include,
          'name' := Name
        }) ->
    #{ 'image' => Image,
       'include' => Include,
       'name' => Name
     }.
