-module(spoonacular_inline_response_200_28_servings).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_28_servings/0]).

-type spoonacular_inline_response_200_28_servings() ::
    #{ 'number' := integer(),
       'size' := integer(),
       'unit' := binary()
     }.

encode(#{ 'number' := Number,
          'size' := Size,
          'unit' := Unit
        }) ->
    #{ 'number' => Number,
       'size' => Size,
       'unit' => Unit
     }.
