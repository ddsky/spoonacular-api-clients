-module(spoonacular_inline_response_200_11_ingredients).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_11_ingredients/0]).

-type spoonacular_inline_response_200_11_ingredients() ::
    #{ 'amount' => spoonacular_inline_response_200_10_amount:spoonacular_inline_response_200_10_amount(),
       'image' := binary(),
       'name' := binary()
     }.

encode(#{ 'amount' := Amount,
          'image' := Image,
          'name' := Name
        }) ->
    #{ 'amount' => Amount,
       'image' => Image,
       'name' => Name
     }.
