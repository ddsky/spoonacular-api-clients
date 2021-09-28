-module(spoonacular_inline_response_200_31).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_31/0]).

-type spoonacular_inline_response_200_31() ::
    #{ 'comparableProducts' := spoonacular_inline_response_200_31_comparable_products:spoonacular_inline_response_200_31_comparable_products()
     }.

encode(#{ 'comparableProducts' := ComparableProducts
        }) ->
    #{ 'comparableProducts' => ComparableProducts
     }.
