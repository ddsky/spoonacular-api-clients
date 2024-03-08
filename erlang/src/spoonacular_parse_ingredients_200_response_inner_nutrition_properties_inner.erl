-module(spoonacular_parse_ingredients_200_response_inner_nutrition_properties_inner).

-export([encode/1]).

-export_type([spoonacular_parse_ingredients_200_response_inner_nutrition_properties_inner/0]).

-type spoonacular_parse_ingredients_200_response_inner_nutrition_properties_inner() ::
    #{ 'name' := binary(),
       'amount' := integer(),
       'unit' := binary()
     }.

encode(#{ 'name' := Name,
          'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'name' => Name,
       'amount' => Amount,
       'unit' => Unit
     }.
