-module(openapi_get_comparable_products_200_response_comparable_products).

-export([encode/1]).

-export_type([openapi_get_comparable_products_200_response_comparable_products/0]).

-type openapi_get_comparable_products_200_response_comparable_products() ::
    #{ 'calories' := list(),
       'likes' := list(),
       'price' := list(),
       'protein' := openapi_set:openapi_set(),
       'spoonacularScore' := openapi_set:openapi_set(),
       'sugar' := list()
     }.

encode(#{ 'calories' := Calories,
          'likes' := Likes,
          'price' := Price,
          'protein' := Protein,
          'spoonacularScore' := SpoonacularScore,
          'sugar' := Sugar
        }) ->
    #{ 'calories' => Calories,
       'likes' => Likes,
       'price' => Price,
       'protein' => Protein,
       'spoonacularScore' => SpoonacularScore,
       'sugar' => Sugar
     }.
