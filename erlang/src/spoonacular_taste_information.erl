-module(spoonacular_taste_information).

-export([encode/1]).

-export_type([spoonacular_taste_information/0]).

-type spoonacular_taste_information() ::
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
