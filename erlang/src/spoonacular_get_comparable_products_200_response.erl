-module(spoonacular_get_comparable_products_200_response).

-export([encode/1]).

-export_type([spoonacular_get_comparable_products_200_response/0]).

-type spoonacular_get_comparable_products_200_response() ::
    #{ 'comparableProducts' := spoonacular_get_comparable_products_200_response_comparable_products:spoonacular_get_comparable_products_200_response_comparable_products()
     }.

encode(#{ 'comparableProducts' := ComparableProducts
        }) ->
    #{ 'comparableProducts' => ComparableProducts
     }.
