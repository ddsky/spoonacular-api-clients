-module(spoonacular_inline_response_200_3_wine_pairing_product_matches).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_3_wine_pairing_product_matches/0]).

-type spoonacular_inline_response_200_3_wine_pairing_product_matches() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'description' := binary(),
       'price' := binary(),
       'imageUrl' := binary(),
       'averageRating' := integer(),
       'ratingCount' := integer(),
       'score' := integer(),
       'link' := binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'description' := Description,
          'price' := Price,
          'imageUrl' := ImageUrl,
          'averageRating' := AverageRating,
          'ratingCount' := RatingCount,
          'score' := Score,
          'link' := Link
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'description' => Description,
       'price' => Price,
       'imageUrl' => ImageUrl,
       'averageRating' => AverageRating,
       'ratingCount' => RatingCount,
       'score' => Score,
       'link' => Link
     }.
