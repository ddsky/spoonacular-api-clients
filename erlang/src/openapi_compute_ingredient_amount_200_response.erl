-module(openapi_compute_ingredient_amount_200_response).

-export([encode/1]).

-export_type([openapi_compute_ingredient_amount_200_response/0]).

-type openapi_compute_ingredient_amount_200_response() ::
    #{ 'amount' := integer(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
