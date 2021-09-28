-module(spoonacular_inline_response_200_3_measures).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_3_measures/0]).

-type spoonacular_inline_response_200_3_measures() ::
    #{ 'metric' := spoonacular_inline_response_200_3_measures_metric:spoonacular_inline_response_200_3_measures_metric(),
       'us' := spoonacular_inline_response_200_3_measures_metric:spoonacular_inline_response_200_3_measures_metric()
     }.

encode(#{ 'metric' := Metric,
          'us' := Us
        }) ->
    #{ 'metric' => Metric,
       'us' => Us
     }.
