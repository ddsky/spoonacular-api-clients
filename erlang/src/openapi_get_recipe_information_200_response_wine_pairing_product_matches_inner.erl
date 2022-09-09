-module(openapi_get_recipe_information_200_response_wine_pairing_product_matches_inner).

-export([encode/1]).

-export_type([openapi_get_recipe_information_200_response_wine_pairing_product_matches_inner/0]).

-type openapi_get_recipe_information_200_response_wine_pairing_product_matches_inner() ::
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
