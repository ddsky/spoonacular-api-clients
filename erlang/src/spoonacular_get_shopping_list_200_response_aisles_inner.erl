-module(spoonacular_get_shopping_list_200_response_aisles_inner).

-export([encode/1]).

-export_type([spoonacular_get_shopping_list_200_response_aisles_inner/0]).

-type spoonacular_get_shopping_list_200_response_aisles_inner() ::
    #{ 'aisle' := binary(),
       'items' => spoonacular_set:spoonacular_set()
     }.

encode(#{ 'aisle' := Aisle,
          'items' := Items
        }) ->
    #{ 'aisle' => Aisle,
       'items' => Items
     }.
