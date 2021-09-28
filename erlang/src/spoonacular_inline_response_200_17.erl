-module(spoonacular_inline_response_200_17).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_17/0]).

-type spoonacular_inline_response_200_17() ::
    #{ 'cuisine' := binary(),
       'cuisines' := list(),
       'confidence' := integer()
     }.

encode(#{ 'cuisine' := Cuisine,
          'cuisines' := Cuisines,
          'confidence' := Confidence
        }) ->
    #{ 'cuisine' => Cuisine,
       'cuisines' => Cuisines,
       'confidence' => Confidence
     }.
