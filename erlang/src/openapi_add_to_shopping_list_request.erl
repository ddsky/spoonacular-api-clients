-module(openapi_add_to_shopping_list_request).

-export([encode/1]).

-export_type([openapi_add_to_shopping_list_request/0]).

-type openapi_add_to_shopping_list_request() ::
    #{ 'item' := binary(),
       'aisle' := binary(),
       'parse' := boolean()
     }.

encode(#{ 'item' := Item,
          'aisle' := Aisle,
          'parse' := Parse
        }) ->
    #{ 'item' => Item,
       'aisle' => Aisle,
       'parse' => Parse
     }.
