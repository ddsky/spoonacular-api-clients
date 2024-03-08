-module(spoonacular_classify_grocery_product_bulk_request_inner).

-export([encode/1]).

-export_type([spoonacular_classify_grocery_product_bulk_request_inner/0]).

-type spoonacular_classify_grocery_product_bulk_request_inner() ::
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
