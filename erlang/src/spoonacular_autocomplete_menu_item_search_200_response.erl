-module(spoonacular_autocomplete_menu_item_search_200_response).

-export([encode/1]).

-export_type([spoonacular_autocomplete_menu_item_search_200_response/0]).

-type spoonacular_autocomplete_menu_item_search_200_response() ::
    #{ 'results' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
