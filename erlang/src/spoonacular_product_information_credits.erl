-module(spoonacular_product_information_credits).

-export([encode/1]).

-export_type([spoonacular_product_information_credits/0]).

-type spoonacular_product_information_credits() ::
    #{ 'text' => binary(),
       'link' => binary(),
       'image' => binary(),
       'imageLink' => binary()
     }.

encode(#{ 'text' := Text,
          'link' := Link,
          'image' := Image,
          'imageLink' := ImageLink
        }) ->
    #{ 'text' => Text,
       'link' => Link,
       'image' => Image,
       'imageLink' => ImageLink
     }.
