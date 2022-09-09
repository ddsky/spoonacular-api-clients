-module(openapi_search_grocery_products_by_upc_200_response_servings).

-export([encode/1]).

-export_type([openapi_search_grocery_products_by_upc_200_response_servings/0]).

-type openapi_search_grocery_products_by_upc_200_response_servings() ::
    #{ 'number' := integer(),
       'size' := integer(),
       'unit' := binary()
     }.

encode(#{ 'number' := Number,
          'size' := Size,
          'unit' := Unit
        }) ->
    #{ 'number' => Number,
       'size' => Size,
       'unit' => Unit
     }.
