-module(openapi_image_classification_by_url_200_response).

-export([encode/1]).

-export_type([openapi_image_classification_by_url_200_response/0]).

-type openapi_image_classification_by_url_200_response() ::
    #{ 'category' := binary(),
       'probability' := integer()
     }.

encode(#{ 'category' := Category,
          'probability' := Probability
        }) ->
    #{ 'category' => Category,
       'probability' => Probability
     }.
