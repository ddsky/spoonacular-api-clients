-module(spoonacular_detect_food_in_text_200_response).

-export([encode/1]).

-export_type([spoonacular_detect_food_in_text_200_response/0]).

-type spoonacular_detect_food_in_text_200_response() ::
    #{ 'annotations' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'annotations' := Annotations
        }) ->
    #{ 'annotations' => Annotations
     }.
