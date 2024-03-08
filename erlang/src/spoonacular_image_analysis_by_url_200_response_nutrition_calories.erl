-module(spoonacular_image_analysis_by_url_200_response_nutrition_calories).

-export([encode/1]).

-export_type([spoonacular_image_analysis_by_url_200_response_nutrition_calories/0]).

-type spoonacular_image_analysis_by_url_200_response_nutrition_calories() ::
    #{ 'value' := integer(),
       'unit' := binary(),
       'confidenceRange95Percent' := spoonacular_image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent:spoonacular_image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent(),
       'standardDeviation' := integer()
     }.

encode(#{ 'value' := Value,
          'unit' := Unit,
          'confidenceRange95Percent' := ConfidenceRange95Percent,
          'standardDeviation' := StandardDeviation
        }) ->
    #{ 'value' => Value,
       'unit' => Unit,
       'confidenceRange95Percent' => ConfidenceRange95Percent,
       'standardDeviation' => StandardDeviation
     }.
