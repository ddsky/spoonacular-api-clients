-module(openapi_search_site_content_200_response_grocery_products_inner).

-export([encode/1]).

-export_type([openapi_search_site_content_200_response_grocery_products_inner/0]).

-type openapi_search_site_content_200_response_grocery_products_inner() ::
    #{ 'dataPoints' => openapi_set:openapi_set(),
       'image' := binary(),
       'link' := binary(),
       'name' := binary()
     }.

encode(#{ 'dataPoints' := DataPoints,
          'image' := Image,
          'link' := Link,
          'name' := Name
        }) ->
    #{ 'dataPoints' => DataPoints,
       'image' => Image,
       'link' => Link,
       'name' => Name
     }.
