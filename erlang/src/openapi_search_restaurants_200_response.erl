-module(openapi_search_restaurants_200_response).

-export([encode/1]).

-export_type([openapi_search_restaurants_200_response/0]).

-type openapi_search_restaurants_200_response() ::
    #{ 'restaurants' => list()
     }.

encode(#{ 'restaurants' := Restaurants
        }) ->
    #{ 'restaurants' => Restaurants
     }.
