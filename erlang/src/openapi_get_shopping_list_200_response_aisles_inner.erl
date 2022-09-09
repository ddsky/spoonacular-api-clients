-module(openapi_get_shopping_list_200_response_aisles_inner).

-export([encode/1]).

-export_type([openapi_get_shopping_list_200_response_aisles_inner/0]).

-type openapi_get_shopping_list_200_response_aisles_inner() ::
    #{ 'aisle' := binary(),
       'items' => openapi_set:openapi_set()
     }.

encode(#{ 'aisle' := Aisle,
          'items' := Items
        }) ->
    #{ 'aisle' => Aisle,
       'items' => Items
     }.
