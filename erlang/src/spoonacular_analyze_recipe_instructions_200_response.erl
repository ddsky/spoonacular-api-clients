-module(spoonacular_analyze_recipe_instructions_200_response).

-export([encode/1]).

-export_type([spoonacular_analyze_recipe_instructions_200_response/0]).

-type spoonacular_analyze_recipe_instructions_200_response() ::
    #{ 'parsedInstructions' := spoonacular_set:spoonacular_set(),
       'ingredients' := spoonacular_set:spoonacular_set(),
       'equipment' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'parsedInstructions' := ParsedInstructions,
          'ingredients' := Ingredients,
          'equipment' := Equipment
        }) ->
    #{ 'parsedInstructions' => ParsedInstructions,
       'ingredients' => Ingredients,
       'equipment' => Equipment
     }.
