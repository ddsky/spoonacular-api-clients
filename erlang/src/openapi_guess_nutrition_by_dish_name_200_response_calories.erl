-module(openapi_guess_nutrition_by_dish_name_200_response_calories).

-export([encode/1]).

-export_type([openapi_guess_nutrition_by_dish_name_200_response_calories/0]).

-type openapi_guess_nutrition_by_dish_name_200_response_calories() ::
    #{ 'confidenceRange95Percent' := openapi_guess_nutrition_by_dish_name_200_response_calories_confidence_range95_percent:openapi_guess_nutrition_by_dish_name_200_response_calories_confidence_range95_percent(),
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
