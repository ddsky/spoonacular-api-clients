-module(openapi_get_shopping_list_200_response).

-export([encode/1]).

-export_type([openapi_get_shopping_list_200_response/0]).

-type openapi_get_shopping_list_200_response() ::
    #{ 'aisles' := openapi_set:openapi_set(),
       'cost' := integer(),
       'startDate' := integer(),
       'endDate' := integer()
     }.

encode(#{ 'aisles' := Aisles,
          'cost' := Cost,
          'startDate' := StartDate,
          'endDate' := EndDate
        }) ->
    #{ 'aisles' => Aisles,
       'cost' => Cost,
       'startDate' => StartDate,
       'endDate' => EndDate
     }.
