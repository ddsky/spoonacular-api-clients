-module(openapi_search_restaurants_200_response_restaurants_inner_local_hours).

-export([encode/1]).

-export_type([openapi_search_restaurants_200_response_restaurants_inner_local_hours/0]).

-type openapi_search_restaurants_200_response_restaurants_inner_local_hours() ::
    #{ 'operational' => openapi_search_restaurants_200_response_restaurants_inner_local_hours_operational:openapi_search_restaurants_200_response_restaurants_inner_local_hours_operational(),
       'delivery' => openapi_search_restaurants_200_response_restaurants_inner_local_hours_operational:openapi_search_restaurants_200_response_restaurants_inner_local_hours_operational(),
       'pickup' => openapi_search_restaurants_200_response_restaurants_inner_local_hours_operational:openapi_search_restaurants_200_response_restaurants_inner_local_hours_operational(),
       'dine_in' => openapi_search_restaurants_200_response_restaurants_inner_local_hours_operational:openapi_search_restaurants_200_response_restaurants_inner_local_hours_operational()
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
