-module(spoonacular_search_site_content_200_response_articles_inner).

-export([encode/1]).

-export_type([spoonacular_search_site_content_200_response_articles_inner/0]).

-type spoonacular_search_site_content_200_response_articles_inner() ::
    #{ 'dataPoints' => list(),
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
