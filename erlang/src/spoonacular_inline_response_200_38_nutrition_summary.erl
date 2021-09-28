-module(spoonacular_inline_response_200_38_nutrition_summary).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_38_nutrition_summary/0]).

-type spoonacular_inline_response_200_38_nutrition_summary() ::
    #{ 'nutrients' := list()
     }.

encode(#{ 'nutrients' := Nutrients
        }) ->
    #{ 'nutrients' => Nutrients
     }.
