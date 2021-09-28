-module(spoonacular_inline_response_200_13_steps).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_13_steps/0]).

-type spoonacular_inline_response_200_13_steps() ::
    #{ 'number' := integer(),
       'step' := binary(),
       'ingredients' => list(),
       'equipment' => list()
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
