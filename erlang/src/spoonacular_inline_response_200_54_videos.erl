-module(spoonacular_inline_response_200_54_videos).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_54_videos/0]).

-type spoonacular_inline_response_200_54_videos() ::
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
