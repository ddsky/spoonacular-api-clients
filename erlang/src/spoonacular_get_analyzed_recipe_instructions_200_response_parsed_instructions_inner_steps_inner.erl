-module(spoonacular_get_analyzed_recipe_instructions_200_response_parsed_instructions_inner_steps_inner).

-export([encode/1]).

-export_type([spoonacular_get_analyzed_recipe_instructions_200_response_parsed_instructions_inner_steps_inner/0]).

-type spoonacular_get_analyzed_recipe_instructions_200_response_parsed_instructions_inner_steps_inner() ::
    #{ 'number' := integer(),
       'step' := binary(),
       'ingredients' => spoonacular_set:spoonacular_set(),
       'equipment' => spoonacular_set:spoonacular_set()
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
