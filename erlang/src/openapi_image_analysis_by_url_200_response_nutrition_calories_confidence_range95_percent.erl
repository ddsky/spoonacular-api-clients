-module(openapi_image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent).

-export([encode/1]).

-export_type([openapi_image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent/0]).

-type openapi_image_analysis_by_url_200_response_nutrition_calories_confidence_range95_percent() ::
    #{ 'min' := integer(),
       'max' := integer()
     }.

encode(#{ 'min' := Min,
          'max' := Max
        }) ->
    #{ 'min' => Min,
       'max' => Max
     }.
