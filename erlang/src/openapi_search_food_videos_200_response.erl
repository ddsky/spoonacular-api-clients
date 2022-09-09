-module(openapi_search_food_videos_200_response).

-export([encode/1]).

-export_type([openapi_search_food_videos_200_response/0]).

-type openapi_search_food_videos_200_response() ::
    #{ 'videos' := openapi_set:openapi_set(),
       'totalResults' := integer()
     }.

encode(#{ 'videos' := Videos,
          'totalResults' := TotalResults
        }) ->
    #{ 'videos' => Videos,
       'totalResults' => TotalResults
     }.
