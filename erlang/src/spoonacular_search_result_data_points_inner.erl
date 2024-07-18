-module(spoonacular_search_result_data_points_inner).

-export([encode/1]).

-export_type([spoonacular_search_result_data_points_inner/0]).

-type spoonacular_search_result_data_points_inner() ::
    #{ 'key' := binary(),
       'value' := spoonacular_any_type:spoonacular_any_type(),
       'show' => boolean()
     }.

encode(#{ 'key' := Key,
          'value' := Value,
          'show' := Show
        }) ->
    #{ 'key' => Key,
       'value' => Value,
       'show' => Show
     }.
