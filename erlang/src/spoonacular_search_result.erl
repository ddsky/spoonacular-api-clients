-module(spoonacular_search_result).

-export([encode/1]).

-export_type([spoonacular_search_result/0]).

-type spoonacular_search_result() ::
    #{ 'image' => binary(),
       'link' => binary(),
       'name' := binary(),
       'type' => binary(),
       'kvtable' => binary(),
       'content' => binary(),
       'id' => integer(),
       'relevance' => integer()
     }.

encode(#{ 'image' := Image,
          'link' := Link,
          'name' := Name,
          'type' := Type,
          'kvtable' := Kvtable,
          'content' := Content,
          'id' := Id,
          'relevance' := Relevance
        }) ->
    #{ 'image' => Image,
       'link' => Link,
       'name' => Name,
       'type' => Type,
       'kvtable' => Kvtable,
       'content' => Content,
       'id' => Id,
       'relevance' => Relevance
     }.
