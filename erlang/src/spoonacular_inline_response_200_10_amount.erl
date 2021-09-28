-module(spoonacular_inline_response_200_10_amount).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_10_amount/0]).

-type spoonacular_inline_response_200_10_amount() ::
    #{ 'metric' := spoonacular_inline_response_200_10_amount_metric:spoonacular_inline_response_200_10_amount_metric(),
       'us' := spoonacular_inline_response_200_10_amount_metric:spoonacular_inline_response_200_10_amount_metric()
     }.

encode(#{ 'metric' := Metric,
          'us' := Us
        }) ->
    #{ 'metric' => Metric,
       'us' => Us
     }.
