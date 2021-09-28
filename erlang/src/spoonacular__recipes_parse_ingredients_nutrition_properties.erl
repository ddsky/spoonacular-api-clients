-module(spoonacular__recipes_parse_ingredients_nutrition_properties).

-export([encode/1]).

-export_type([spoonacular__recipes_parse_ingredients_nutrition_properties/0]).

-type spoonacular__recipes_parse_ingredients_nutrition_properties() ::
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
