-module(spoonacular_search_restaurants_200_response).

-export([encode/1]).

-export_type([spoonacular_search_restaurants_200_response/0]).

-type spoonacular_search_restaurants_200_response() ::
    #{ 'restaurants' => list()
     }.

encode(#{ 'restaurants' := Restaurants
        }) ->
    #{ 'restaurants' => Restaurants
     }.
