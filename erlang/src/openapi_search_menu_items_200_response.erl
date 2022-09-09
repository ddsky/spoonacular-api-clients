-module(openapi_search_menu_items_200_response).

-export([encode/1]).

-export_type([openapi_search_menu_items_200_response/0]).

-type openapi_search_menu_items_200_response() ::
    #{ 'menuItems' := openapi_set:openapi_set(),
       'totalMenuItems' := integer(),
       'type' := binary(),
       'offset' := integer(),
       'number' := integer()
     }.

encode(#{ 'menuItems' := MenuItems,
          'totalMenuItems' := TotalMenuItems,
          'type' := Type,
          'offset' := Offset,
          'number' := Number
        }) ->
    #{ 'menuItems' => MenuItems,
       'totalMenuItems' => TotalMenuItems,
       'type' => Type,
       'offset' => Offset,
       'number' => Number
     }.
