-module(spoonacular_get_wine_pairing_200_response_product_matches_inner).

-export([encode/1]).

-export_type([spoonacular_get_wine_pairing_200_response_product_matches_inner/0]).

-type spoonacular_get_wine_pairing_200_response_product_matches_inner() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'averageRating' := integer(),
       'description' => spoonacular_any_type:spoonacular_any_type(),
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
