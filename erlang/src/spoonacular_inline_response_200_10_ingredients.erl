-module(spoonacular_inline_response_200_10_ingredients).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_10_ingredients/0]).

-type spoonacular_inline_response_200_10_ingredients() ::
    #{ 'amount' => spoonacular_inline_response_200_10_amount:spoonacular_inline_response_200_10_amount(),
       'image' := binary(),
       'name' := binary(),
       'price' := integer()
     }.

encode(#{ 'amount' := Amount,
          'image' := Image,
          'name' := Name,
          'price' := Price
        }) ->
    #{ 'amount' => Amount,
       'image' => Image,
       'name' => Name,
       'price' => Price
     }.
