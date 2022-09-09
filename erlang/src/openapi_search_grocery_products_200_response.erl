-module(openapi_search_grocery_products_200_response).

-export([encode/1]).

-export_type([openapi_search_grocery_products_200_response/0]).

-type openapi_search_grocery_products_200_response() ::
    #{ 'products' := openapi_set:openapi_set(),
       'totalProducts' := integer(),
       'type' := binary(),
       'offset' := integer(),
       'number' := integer()
     }.

encode(#{ 'products' := Products,
          'totalProducts' := TotalProducts,
          'type' := Type,
          'offset' := Offset,
          'number' := Number
        }) ->
    #{ 'products' => Products,
       'totalProducts' => TotalProducts,
       'type' => Type,
       'offset' => Offset,
       'number' => Number
     }.
