-module(spoonacular_inline_response_200_8).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_8/0]).

-type spoonacular_inline_response_200_8() ::
    #{ 'sweetness' := integer(),
       'saltiness' := integer(),
       'sourness' := integer(),
       'bitterness' := integer(),
       'savoriness' := integer(),
       'fattiness' := integer(),
       'spiciness' := integer()
     }.

encode(#{ 'sweetness' := Sweetness,
          'saltiness' := Saltiness,
          'sourness' := Sourness,
          'bitterness' := Bitterness,
          'savoriness' := Savoriness,
          'fattiness' := Fattiness,
          'spiciness' := Spiciness
        }) ->
    #{ 'sweetness' => Sweetness,
       'saltiness' => Saltiness,
       'sourness' => Sourness,
       'bitterness' => Bitterness,
       'savoriness' => Savoriness,
       'fattiness' => Fattiness,
       'spiciness' => Spiciness
     }.
