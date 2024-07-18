-module(spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures_original).

-export([encode/1]).

-export_type([spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures_original/0]).

-type spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures_original() ::
    #{ 'amount' := integer(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
