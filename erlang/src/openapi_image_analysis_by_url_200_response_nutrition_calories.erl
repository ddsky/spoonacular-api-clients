-module(openapi_image_analysis_by_url_200_response_nutrition_calories).

-export([encode/1]).

-export_type([openapi_image_analysis_by_url_200_response_nutrition_calories/0]).

-type openapi_image_analysis_by_url_200_response_nutrition_calories() ::
    #{ 'value' := integer(),
       'unit' := binary(),
       'confidenceRange95Percent' := openapi_image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent:openapi_image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent(),
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
