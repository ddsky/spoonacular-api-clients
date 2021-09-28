-module(spoonacular_inline_response_200_10_amount_metric).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_10_amount_metric/0]).

-type spoonacular_inline_response_200_10_amount_metric() ::
    #{ 'unit' := binary(),
       'value' := integer()
     }.

encode(#{ 'unit' := Unit,
          'value' := Value
        }) ->
    #{ 'unit' => Unit,
       'value' => Value
     }.
