-module(spoonacular_inline_object_1).

-export([encode/1]).

-export_type([spoonacular_inline_object_1/0]).

-type spoonacular_inline_object_1() ::
    #{ 'title' := binary(),
       'upc' := binary(),
       'plu_code' := binary()
     }.

encode(#{ 'title' := Title,
          'upc' := Upc,
          'plu_code' := PluCode
        }) ->
    #{ 'title' => Title,
       'upc' => Upc,
       'plu_code' => PluCode
     }.
