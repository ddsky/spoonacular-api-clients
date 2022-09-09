-module(openapi_get_analyzed_recipe_instructions_200_response).

-export([encode/1]).

-export_type([openapi_get_analyzed_recipe_instructions_200_response/0]).

-type openapi_get_analyzed_recipe_instructions_200_response() ::
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
