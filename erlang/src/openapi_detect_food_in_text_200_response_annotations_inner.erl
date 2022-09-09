-module(openapi_detect_food_in_text_200_response_annotations_inner).

-export([encode/1]).

-export_type([openapi_detect_food_in_text_200_response_annotations_inner/0]).

-type openapi_detect_food_in_text_200_response_annotations_inner() ::
    #{ 'annotation' := binary(),
       'image' := binary(),
       'tag' := binary()
     }.

encode(#{ 'annotation' := Annotation,
          'image' := Image,
          'tag' := Tag
        }) ->
    #{ 'annotation' => Annotation,
       'image' => Image,
       'tag' => Tag
     }.
