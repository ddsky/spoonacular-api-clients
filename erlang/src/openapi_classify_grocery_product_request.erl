-module(openapi_classify_grocery_product_request).

-export([encode/1]).

-export_type([openapi_classify_grocery_product_request/0]).

-type openapi_classify_grocery_product_request() ::
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
