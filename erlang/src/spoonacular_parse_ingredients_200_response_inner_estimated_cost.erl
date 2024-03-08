-module(spoonacular_parse_ingredients_200_response_inner_estimated_cost).

-export([encode/1]).

-export_type([spoonacular_parse_ingredients_200_response_inner_estimated_cost/0]).

-type spoonacular_parse_ingredients_200_response_inner_estimated_cost() ::
    #{ 'value' := integer(),
       'unit' := binary()
     }.

encode(#{ 'value' := Value,
          'unit' := Unit
        }) ->
    #{ 'value' => Value,
       'unit' => Unit
     }.
