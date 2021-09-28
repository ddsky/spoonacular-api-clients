-module(spoonacular__recipes_parse_ingredients_estimated_cost).

-export([encode/1]).

-export_type([spoonacular__recipes_parse_ingredients_estimated_cost/0]).

-type spoonacular__recipes_parse_ingredients_estimated_cost() ::
    #{ 'value' := integer(),
       'unit' := binary()
     }.

encode(#{ 'value' := Value,
          'unit' := Unit
        }) ->
    #{ 'value' => Value,
       'unit' => Unit
     }.
