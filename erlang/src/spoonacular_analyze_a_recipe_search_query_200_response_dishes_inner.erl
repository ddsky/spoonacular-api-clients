-module(spoonacular_analyze_a_recipe_search_query_200_response_dishes_inner).

-export([encode/1]).

-export_type([spoonacular_analyze_a_recipe_search_query_200_response_dishes_inner/0]).

-type spoonacular_analyze_a_recipe_search_query_200_response_dishes_inner() ::
    #{ 'image' := binary(),
       'name' := binary()
     }.

encode(#{ 'image' := Image,
          'name' := Name
        }) ->
    #{ 'image' => Image,
       'name' => Name
     }.
