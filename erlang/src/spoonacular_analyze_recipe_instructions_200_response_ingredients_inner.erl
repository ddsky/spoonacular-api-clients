-module(spoonacular_analyze_recipe_instructions_200_response_ingredients_inner).

-export([encode/1]).

-export_type([spoonacular_analyze_recipe_instructions_200_response_ingredients_inner/0]).

-type spoonacular_analyze_recipe_instructions_200_response_ingredients_inner() ::
    #{ 'id' := integer(),
       'name' := binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name
        }) ->
    #{ 'id' => Id,
       'name' => Name
     }.
