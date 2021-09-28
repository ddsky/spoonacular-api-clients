-module(spoonacular_inline_response_200_13).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_13/0]).

-type spoonacular_inline_response_200_13() ::
    #{ 'parsedInstructions' := list(),
       'ingredients' := list(),
       'equipment' := list()
     }.

encode(#{ 'parsedInstructions' := ParsedInstructions,
          'ingredients' := Ingredients,
          'equipment' := Equipment
        }) ->
    #{ 'parsedInstructions' => ParsedInstructions,
       'ingredients' => Ingredients,
       'equipment' => Equipment
     }.
