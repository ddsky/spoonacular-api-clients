-module(spoonacular_search_site_content_200_response_articles_inner_data_points_inner).

-export([encode/1]).

-export_type([spoonacular_search_site_content_200_response_articles_inner_data_points_inner/0]).

-type spoonacular_search_site_content_200_response_articles_inner_data_points_inner() ::
    #{ 'key' := binary(),
       'value' := binary()
     }.

encode(#{ 'key' := Key,
          'value' := Value
        }) ->
    #{ 'key' => Key,
       'value' => Value
     }.
