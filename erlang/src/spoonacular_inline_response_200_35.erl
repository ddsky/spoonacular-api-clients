-module(spoonacular_inline_response_200_35).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_35/0]).

-type spoonacular_inline_response_200_35() ::
    #{ 'menuItems' := list(),
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
