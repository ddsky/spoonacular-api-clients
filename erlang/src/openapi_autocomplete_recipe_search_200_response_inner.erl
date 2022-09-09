-module(openapi_autocomplete_recipe_search_200_response_inner).

-export([encode/1]).

-export_type([openapi_autocomplete_recipe_search_200_response_inner/0]).

-type openapi_autocomplete_recipe_search_200_response_inner() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'imageType' := binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'imageType' := ImageType
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'imageType' => ImageType
     }.
