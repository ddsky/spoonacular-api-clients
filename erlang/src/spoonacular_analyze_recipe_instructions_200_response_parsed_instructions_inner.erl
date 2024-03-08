-module(spoonacular_analyze_recipe_instructions_200_response_parsed_instructions_inner).

-export([encode/1]).

-export_type([spoonacular_analyze_recipe_instructions_200_response_parsed_instructions_inner/0]).

-type spoonacular_analyze_recipe_instructions_200_response_parsed_instructions_inner() ::
    #{ 'name' := binary(),
       'steps' => spoonacular_set:spoonacular_set()
     }.

encode(#{ 'name' := Name,
          'steps' := Steps
        }) ->
    #{ 'name' => Name,
       'steps' => Steps
     }.
