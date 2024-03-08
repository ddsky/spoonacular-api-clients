-module(spoonacular_search_food_videos_200_response).

-export([encode/1]).

-export_type([spoonacular_search_food_videos_200_response/0]).

-type spoonacular_search_food_videos_200_response() ::
    #{ 'videos' := spoonacular_set:spoonacular_set(),
       'totalResults' := integer()
     }.

encode(#{ 'videos' := Videos,
          'totalResults' := TotalResults
        }) ->
    #{ 'videos' => Videos,
       'totalResults' => TotalResults
     }.
