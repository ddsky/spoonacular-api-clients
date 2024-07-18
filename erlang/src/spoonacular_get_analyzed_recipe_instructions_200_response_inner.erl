-module(spoonacular_get_analyzed_recipe_instructions_200_response_inner).

-export([encode/1]).

-export_type([spoonacular_get_analyzed_recipe_instructions_200_response_inner/0]).

-type spoonacular_get_analyzed_recipe_instructions_200_response_inner() ::
    #{ 'name' := binary(),
       'steps' => spoonacular_set:spoonacular_set()
     }.

encode(#{ 'name' := Name,
          'steps' := Steps
        }) ->
    #{ 'name' => Name,
       'steps' => Steps
     }.
