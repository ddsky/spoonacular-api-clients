-module(openapi_search_restaurants_200_response_restaurants_inner_address).

-export([encode/1]).

-export_type([openapi_search_restaurants_200_response_restaurants_inner_address/0]).

-type openapi_search_restaurants_200_response_restaurants_inner_address() ::
    #{ 'street_addr' => binary(),
       'city' => binary(),
       'state' => binary(),
       'zipcode' => binary(),
       'country' => binary(),
       'lat' => integer(),
       'lon' => integer(),
       'street_addr_2' => binary(),
       'latitude' => integer(),
       'longitude' => integer()
     }.

encode(#{ 'street_addr' := StreetAddr,
          'city' := City,
          'state' := State,
          'zipcode' := Zipcode,
          'country' := Country,
          'lat' := Lat,
          'lon' := Lon,
          'street_addr_2' := StreetAddr2,
          'latitude' := Latitude,
          'longitude' := Longitude
        }) ->
    #{ 'street_addr' => StreetAddr,
       'city' => City,
       'state' => State,
       'zipcode' => Zipcode,
       'country' => Country,
       'lat' => Lat,
       'lon' => Lon,
       'street_addr_2' => StreetAddr2,
       'latitude' => Latitude,
       'longitude' => Longitude
     }.
