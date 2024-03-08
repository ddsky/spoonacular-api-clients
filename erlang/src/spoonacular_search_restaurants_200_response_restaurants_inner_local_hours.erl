-module(spoonacular_search_restaurants_200_response_restaurants_inner_local_hours).

-export([encode/1]).

-export_type([spoonacular_search_restaurants_200_response_restaurants_inner_local_hours/0]).

-type spoonacular_search_restaurants_200_response_restaurants_inner_local_hours() ::
    #{ 'operational' => spoonacular_search_restaurants_200_response_restaurants_inner_local_hours_operational:spoonacular_search_restaurants_200_response_restaurants_inner_local_hours_operational(),
       'delivery' => spoonacular_search_restaurants_200_response_restaurants_inner_local_hours_operational:spoonacular_search_restaurants_200_response_restaurants_inner_local_hours_operational(),
       'pickup' => spoonacular_search_restaurants_200_response_restaurants_inner_local_hours_operational:spoonacular_search_restaurants_200_response_restaurants_inner_local_hours_operational(),
       'dine_in' => spoonacular_search_restaurants_200_response_restaurants_inner_local_hours_operational:spoonacular_search_restaurants_200_response_restaurants_inner_local_hours_operational()
     }.

encode(#{ 'operational' := Operational,
          'delivery' := Delivery,
          'pickup' := Pickup,
          'dine_in' := DineIn
        }) ->
    #{ 'operational' => Operational,
       'delivery' => Delivery,
       'pickup' => Pickup,
       'dine_in' => DineIn
     }.
