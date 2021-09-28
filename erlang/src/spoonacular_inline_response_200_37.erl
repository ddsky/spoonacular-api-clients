-module(spoonacular_inline_response_200_37).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_37/0]).

-type spoonacular_inline_response_200_37() ::
    #{ 'meals' := list(),
       'nutrients' := spoonacular_inline_response_200_37_nutrients:spoonacular_inline_response_200_37_nutrients()
     }.

encode(#{ 'meals' := Meals,
          'nutrients' := Nutrients
        }) ->
    #{ 'meals' => Meals,
       'nutrients' => Nutrients
     }.
