-module(spoonacular_inline_response_200_46_recommended_wines).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_46_recommended_wines/0]).

-type spoonacular_inline_response_200_46_recommended_wines() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'averageRating' := integer(),
       'description' := binary(),
       'imageUrl' := binary(),
       'link' := binary(),
       'price' := binary(),
       'ratingCount' := integer(),
       'score' := integer()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'averageRating' := AverageRating,
          'description' := Description,
          'imageUrl' := ImageUrl,
          'link' := Link,
          'price' := Price,
          'ratingCount' := RatingCount,
          'score' := Score
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'averageRating' => AverageRating,
       'description' => Description,
       'imageUrl' => ImageUrl,
       'link' => Link,
       'price' => Price,
       'ratingCount' => RatingCount,
       'score' => Score
     }.
