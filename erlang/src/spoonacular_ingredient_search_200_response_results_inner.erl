-module(spoonacular_ingredient_search_200_response_results_inner).

-export([encode/1]).

-export_type([spoonacular_ingredient_search_200_response_results_inner/0]).

-type spoonacular_ingredient_search_200_response_results_inner() ::
    #{ 'id' := integer(),
       'name' := binary(),
       'image' := binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'image' := Image
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'image' => Image
     }.
