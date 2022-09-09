-module(openapi_get_analyzed_recipe_instructions_200_response_parsed_instructions_inner_steps_inner_ingredients_inner).

-export([encode/1]).

-export_type([openapi_get_analyzed_recipe_instructions_200_response_parsed_instructions_inner_steps_inner_ingredients_inner/0]).

-type openapi_get_analyzed_recipe_instructions_200_response_parsed_instructions_inner_steps_inner_ingredients_inner() ::
    #{ 'id' := integer(),
       'name' := binary(),
       'localizedName' := binary(),
       'image' := binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'localizedName' := LocalizedName,
          'image' := Image
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'localizedName' => LocalizedName,
       'image' => Image
     }.
