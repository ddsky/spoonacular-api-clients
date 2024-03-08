-module(spoonacular_search_site_content_200_response_grocery_products_inner).

-export([encode/1]).

-export_type([spoonacular_search_site_content_200_response_grocery_products_inner/0]).

-type spoonacular_search_site_content_200_response_grocery_products_inner() ::
    #{ 'dataPoints' => spoonacular_set:spoonacular_set(),
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
