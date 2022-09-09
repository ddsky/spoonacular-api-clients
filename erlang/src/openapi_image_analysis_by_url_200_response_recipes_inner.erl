-module(openapi_image_analysis_by_url_200_response_recipes_inner).

-export([encode/1]).

-export_type([openapi_image_analysis_by_url_200_response_recipes_inner/0]).

-type openapi_image_analysis_by_url_200_response_recipes_inner() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'imageType' := binary(),
       'url' := binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'imageType' := ImageType,
          'url' := Url
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'imageType' => ImageType,
       'url' => Url
     }.
