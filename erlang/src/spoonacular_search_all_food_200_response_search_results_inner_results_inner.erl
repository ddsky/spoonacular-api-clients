-module(spoonacular_search_all_food_200_response_search_results_inner_results_inner).

-export([encode/1]).

-export_type([spoonacular_search_all_food_200_response_search_results_inner_results_inner/0]).

-type spoonacular_search_all_food_200_response_search_results_inner_results_inner() ::
    #{ 'id' := binary(),
       'name' := binary(),
       'image' := binary(),
       'link' := binary(),
       'type' := binary(),
       'relevance' := integer(),
       'content' := binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'image' := Image,
          'link' := Link,
          'type' := Type,
          'relevance' := Relevance,
          'content' := Content
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'image' => Image,
       'link' => Link,
       'type' => Type,
       'relevance' => Relevance,
       'content' => Content
     }.
