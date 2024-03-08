-module(spoonacular_search_menu_items_200_response).

-export([encode/1]).

-export_type([spoonacular_search_menu_items_200_response/0]).

-type spoonacular_search_menu_items_200_response() ::
    #{ 'menuItems' := spoonacular_set:spoonacular_set(),
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
