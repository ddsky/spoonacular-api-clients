-module(spoonacular_inline_response_200_37_nutrients).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_37_nutrients/0]).

-type spoonacular_inline_response_200_37_nutrients() ::
    #{ 'calories' := integer(),
       'carbohydrates' := integer(),
       'fat' := integer(),
       'protein' := integer()
     }.

encode(#{ 'calories' := Calories,
          'carbohydrates' := Carbohydrates,
          'fat' := Fat,
          'protein' := Protein
        }) ->
    #{ 'calories' => Calories,
       'carbohydrates' => Carbohydrates,
       'fat' => Fat,
       'protein' => Protein
     }.
