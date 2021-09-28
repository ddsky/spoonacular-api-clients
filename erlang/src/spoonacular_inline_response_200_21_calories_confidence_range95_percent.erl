-module(spoonacular_inline_response_200_21_calories_confidence_range95_percent).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_21_calories_confidence_range95_percent/0]).

-type spoonacular_inline_response_200_21_calories_confidence_range95_percent() ::
    #{ 'max' := integer(),
       'min' := integer()
     }.

encode(#{ 'max' := Max,
          'min' := Min
        }) ->
    #{ 'max' => Max,
       'min' => Min
     }.
