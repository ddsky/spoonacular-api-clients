-module(openapi_search_restaurants_200_response_restaurants_inner_local_hours_operational).

-export([encode/1]).

-export_type([openapi_search_restaurants_200_response_restaurants_inner_local_hours_operational/0]).

-type openapi_search_restaurants_200_response_restaurants_inner_local_hours_operational() ::
    #{ 'Monday' => binary(),
       'Tuesday' => binary(),
       'Wednesday' => binary(),
       'Thursday' => binary(),
       'Friday' => binary(),
       'Saturday' => binary(),
       'Sunday' => binary()
     }.

encode(#{ 'Monday' := Monday,
          'Tuesday' := Tuesday,
          'Wednesday' := Wednesday,
          'Thursday' := Thursday,
          'Friday' := Friday,
          'Saturday' := Saturday,
          'Sunday' := Sunday
        }) ->
    #{ 'Monday' => Monday,
       'Tuesday' => Tuesday,
       'Wednesday' => Wednesday,
       'Thursday' => Thursday,
       'Friday' => Friday,
       'Saturday' => Saturday,
       'Sunday' => Sunday
     }.
