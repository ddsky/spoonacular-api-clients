-module(spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures).

-export([encode/1]).

-export_type([spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures/0]).

-type spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures() ::
    #{ 'original' := spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures_original:spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures_original(),
       'metric' := spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures_original:spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures_original(),
       'us' := spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures_original:spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures_original()
     }.

encode(#{ 'original' := Original,
          'metric' := Metric,
          'us' := Us
        }) ->
    #{ 'original' => Original,
       'metric' => Metric,
       'us' => Us
     }.
