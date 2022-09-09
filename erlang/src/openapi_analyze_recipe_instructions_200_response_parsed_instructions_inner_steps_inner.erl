-module(openapi_analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner).

-export([encode/1]).

-export_type([openapi_analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner/0]).

-type openapi_analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner() ::
    #{ 'number' := integer(),
       'step' := binary(),
       'ingredients' => openapi_set:openapi_set(),
       'equipment' => openapi_set:openapi_set()
     }.

encode(#{ 'number' := Number,
          'step' := Step,
          'ingredients' := Ingredients,
          'equipment' := Equipment
        }) ->
    #{ 'number' => Number,
       'step' => Step,
       'ingredients' => Ingredients,
       'equipment' => Equipment
     }.
