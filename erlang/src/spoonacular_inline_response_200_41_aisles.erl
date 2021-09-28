-module(spoonacular_inline_response_200_41_aisles).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_41_aisles/0]).

-type spoonacular_inline_response_200_41_aisles() ::
    #{ 'aisle' := binary(),
       'items' => list()
     }.

encode(#{ 'aisle' := Aisle,
          'items' := Items
        }) ->
    #{ 'aisle' => Aisle,
       'items' => Items
     }.
