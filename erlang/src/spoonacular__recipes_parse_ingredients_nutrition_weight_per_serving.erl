-module(spoonacular__recipes_parse_ingredients_nutrition_weight_per_serving).

-export([encode/1]).

-export_type([spoonacular__recipes_parse_ingredients_nutrition_weight_per_serving/0]).

-type spoonacular__recipes_parse_ingredients_nutrition_weight_per_serving() ::
    #{ 'amount' := integer(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
