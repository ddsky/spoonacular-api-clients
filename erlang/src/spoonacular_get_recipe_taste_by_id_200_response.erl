-module(spoonacular_get_recipe_taste_by_id_200_response).

-export([encode/1]).

-export_type([spoonacular_get_recipe_taste_by_id_200_response/0]).

-type spoonacular_get_recipe_taste_by_id_200_response() ::
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
