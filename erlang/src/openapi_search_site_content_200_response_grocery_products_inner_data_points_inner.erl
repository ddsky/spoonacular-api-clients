-module(openapi_search_site_content_200_response_grocery_products_inner_data_points_inner).

-export([encode/1]).

-export_type([openapi_search_site_content_200_response_grocery_products_inner_data_points_inner/0]).

-type openapi_search_site_content_200_response_grocery_products_inner_data_points_inner() ::
    #{ 'key' := binary(),
       'value' := binary()
     }.

encode(#{ 'key' := Key,
          'value' := Value
        }) ->
    #{ 'key' => Key,
       'value' => Value
     }.
