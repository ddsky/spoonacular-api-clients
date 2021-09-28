-module(spoonacular_inline_response_200_27).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_27/0]).

-type spoonacular_inline_response_200_27() ::
    #{ 'products' := list(),
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
