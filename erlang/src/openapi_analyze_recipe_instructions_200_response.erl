-module(openapi_analyze_recipe_instructions_200_response).

-export([encode/1]).

-export_type([openapi_analyze_recipe_instructions_200_response/0]).

-type openapi_analyze_recipe_instructions_200_response() ::
    #{ 'parsedInstructions' := openapi_set:openapi_set(),
       'ingredients' := openapi_set:openapi_set(),
       'equipment' := openapi_set:openapi_set()
     }.

encode(#{ 'parsedInstructions' := ParsedInstructions,
          'ingredients' := Ingredients,
          'equipment' := Equipment
        }) ->
    #{ 'parsedInstructions' => ParsedInstructions,
       'ingredients' => Ingredients,
       'equipment' => Equipment
     }.
