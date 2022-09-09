-module(openapi_get_comparable_products_200_response).

-export([encode/1]).

-export_type([openapi_get_comparable_products_200_response/0]).

-type openapi_get_comparable_products_200_response() ::
    #{ 'comparableProducts' := openapi_get_comparable_products_200_response_comparable_products:openapi_get_comparable_products_200_response_comparable_products()
     }.

encode(#{ 'comparableProducts' := ComparableProducts
        }) ->
    #{ 'comparableProducts' => ComparableProducts
     }.
