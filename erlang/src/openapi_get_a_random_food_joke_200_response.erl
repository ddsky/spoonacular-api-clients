-module(openapi_get_a_random_food_joke_200_response).

-export([encode/1]).

-export_type([openapi_get_a_random_food_joke_200_response/0]).

-type openapi_get_a_random_food_joke_200_response() ::
    #{ 'text' := binary()
     }.

encode(#{ 'text' := Text
        }) ->
    #{ 'text' => Text
     }.
