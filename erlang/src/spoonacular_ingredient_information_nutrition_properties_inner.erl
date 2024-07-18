-module(spoonacular_ingredient_information_nutrition_properties_inner).

-export([encode/1]).

-export_type([spoonacular_ingredient_information_nutrition_properties_inner/0]).

-type spoonacular_ingredient_information_nutrition_properties_inner() ::
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
