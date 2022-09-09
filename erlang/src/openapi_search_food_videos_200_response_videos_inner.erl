-module(openapi_search_food_videos_200_response_videos_inner).

-export([encode/1]).

-export_type([openapi_search_food_videos_200_response_videos_inner/0]).

-type openapi_search_food_videos_200_response_videos_inner() ::
    #{ 'title' := binary(),
       'length' := integer(),
       'rating' := integer(),
       'shortTitle' := binary(),
       'thumbnail' := binary(),
       'views' := integer(),
       'youTubeId' := binary()
     }.

encode(#{ 'title' := Title,
          'length' := Length,
          'rating' := Rating,
          'shortTitle' := ShortTitle,
          'thumbnail' := Thumbnail,
          'views' := Views,
          'youTubeId' := YouTubeId
        }) ->
    #{ 'title' => Title,
       'length' => Length,
       'rating' => Rating,
       'shortTitle' => ShortTitle,
       'thumbnail' => Thumbnail,
       'views' => Views,
       'youTubeId' => YouTubeId
     }.
