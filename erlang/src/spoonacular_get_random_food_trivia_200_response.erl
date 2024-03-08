-module(spoonacular_get_random_food_trivia_200_response).

-export([encode/1]).

-export_type([spoonacular_get_random_food_trivia_200_response/0]).

-type spoonacular_get_random_food_trivia_200_response() ::
    #{ 'text' := binary()
     }.

encode(#{ 'text' := Text
        }) ->
    #{ 'text' => Text
     }.
