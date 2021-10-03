-module(spoonacular_inline_response_200_42_aisles).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_42_aisles/0]).

-type spoonacular_inline_response_200_42_aisles() ::
    #{ 'aisle' := binary(),
       'items' => list()
     }.

encode(#{ 'aisle' := Aisle,
          'items' := Items
        }) ->
    #{ 'aisle' => Aisle,
       'items' => Items
     }.
