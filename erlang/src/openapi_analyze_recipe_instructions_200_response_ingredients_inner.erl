-module(openapi_analyze_recipe_instructions_200_response_ingredients_inner).

-export([encode/1]).

-export_type([openapi_analyze_recipe_instructions_200_response_ingredients_inner/0]).

-type openapi_analyze_recipe_instructions_200_response_ingredients_inner() ::
    #{ 'id' := integer(),
       'name' := binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name
        }) ->
    #{ 'id' => Id,
       'name' => Name
     }.
