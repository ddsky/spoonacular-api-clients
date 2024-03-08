-module(spoonacular_guess_nutrition_by_dish_name_200_response_calories_confidence_range95_percent).

-export([encode/1]).

-export_type([spoonacular_guess_nutrition_by_dish_name_200_response_calories_confidence_range95_percent/0]).

-type spoonacular_guess_nutrition_by_dish_name_200_response_calories_confidence_range95_percent() ::
    #{ 'max' := integer(),
       'min' := integer()
     }.

encode(#{ 'max' := Max,
          'min' := Min
        }) ->
    #{ 'max' => Max,
       'min' => Min
     }.
