-module(spoonacular_inline_response_200_13_ingredients_1).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_13_ingredients_1/0]).

-type spoonacular_inline_response_200_13_ingredients_1() ::
    #{ 'id' := integer(),
       'name' := binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name
        }) ->
    #{ 'id' => Id,
       'name' => Name
     }.
