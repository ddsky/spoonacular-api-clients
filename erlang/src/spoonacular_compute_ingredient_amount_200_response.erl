-module(spoonacular_compute_ingredient_amount_200_response).

-export([encode/1]).

-export_type([spoonacular_compute_ingredient_amount_200_response/0]).

-type spoonacular_compute_ingredient_amount_200_response() ::
    #{ 'amount' := integer(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
