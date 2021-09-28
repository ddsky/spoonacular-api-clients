-module(spoonacular_inline_response_200_16).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_16/0]).

-type spoonacular_inline_response_200_16() ::
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
