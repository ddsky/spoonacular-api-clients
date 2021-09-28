-module(spoonacular_inline_response_200_21_calories).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_21_calories/0]).

-type spoonacular_inline_response_200_21_calories() ::
    #{ 'confidenceRange95Percent' := spoonacular_inline_response_200_21_calories_confidence_range95_percent:spoonacular_inline_response_200_21_calories_confidence_range95_percent(),
       'standardDeviation' := integer(),
       'unit' := binary(),
       'value' := integer()
     }.

encode(#{ 'confidenceRange95Percent' := ConfidenceRange95Percent,
          'standardDeviation' := StandardDeviation,
          'unit' := Unit,
          'value' := Value
        }) ->
    #{ 'confidenceRange95Percent' => ConfidenceRange95Percent,
       'standardDeviation' => StandardDeviation,
       'unit' => Unit,
       'value' => Value
     }.
