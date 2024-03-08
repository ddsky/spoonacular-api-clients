-module(spoonacular_get_comparable_products_200_response_comparable_products_protein_inner).

-export([encode/1]).

-export_type([spoonacular_get_comparable_products_200_response_comparable_products_protein_inner/0]).

-type spoonacular_get_comparable_products_200_response_comparable_products_protein_inner() ::
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
