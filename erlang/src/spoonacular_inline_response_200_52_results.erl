-module(spoonacular_inline_response_200_52_results).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_52_results/0]).

-type spoonacular_inline_response_200_52_results() ::
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
