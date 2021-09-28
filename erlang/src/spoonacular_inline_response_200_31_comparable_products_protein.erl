-module(spoonacular_inline_response_200_31_comparable_products_protein).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_31_comparable_products_protein/0]).

-type spoonacular_inline_response_200_31_comparable_products_protein() ::
    #{ 'difference' := integer(),
       'id' := integer(),
       'image' := binary(),
       'title' := binary()
     }.

encode(#{ 'difference' := Difference,
          'id' := Id,
          'image' := Image,
          'title' := Title
        }) ->
    #{ 'difference' => Difference,
       'id' => Id,
       'image' => Image,
       'title' => Title
     }.
