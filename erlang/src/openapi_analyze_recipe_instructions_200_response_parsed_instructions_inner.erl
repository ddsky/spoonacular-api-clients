-module(openapi_analyze_recipe_instructions_200_response_parsed_instructions_inner).

-export([encode/1]).

-export_type([openapi_analyze_recipe_instructions_200_response_parsed_instructions_inner/0]).

-type openapi_analyze_recipe_instructions_200_response_parsed_instructions_inner() ::
    #{ 'name' := binary(),
       'steps' => openapi_set:openapi_set()
     }.

encode(#{ 'name' := Name,
          'steps' := Steps
        }) ->
    #{ 'name' => Name,
       'steps' => Steps
     }.
