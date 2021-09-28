-module(spoonacular_inline_object).

-export([encode/1]).

-export_type([spoonacular_inline_object/0]).

-type spoonacular_inline_object() ::
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
