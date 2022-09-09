-module(openapi_detect_food_in_text_200_response).

-export([encode/1]).

-export_type([openapi_detect_food_in_text_200_response/0]).

-type openapi_detect_food_in_text_200_response() ::
    #{ 'annotations' := openapi_set:openapi_set()
     }.

encode(#{ 'annotations' := Annotations
        }) ->
    #{ 'annotations' => Annotations
     }.
