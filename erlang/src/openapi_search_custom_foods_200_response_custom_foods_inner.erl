-module(openapi_search_custom_foods_200_response_custom_foods_inner).

-export([encode/1]).

-export_type([openapi_search_custom_foods_200_response_custom_foods_inner/0]).

-type openapi_search_custom_foods_200_response_custom_foods_inner() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'servings' := integer(),
       'imageUrl' := binary(),
       'price' := integer()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'servings' := Servings,
          'imageUrl' := ImageUrl,
          'price' := Price
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'servings' => Servings,
       'imageUrl' => ImageUrl,
       'price' => Price
     }.
