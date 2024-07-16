-module(spoonacular_get_comparable_products_200_response_comparable_products).

-export([encode/1]).

-export_type([spoonacular_get_comparable_products_200_response_comparable_products/0]).

-type spoonacular_get_comparable_products_200_response_comparable_products() ::
    #{ 'calories' := list(),
       'likes' := list(),
       'price' := list(),
       'protein' := list(),
       'spoonacular_score' := list(),
       'sugar' := list()
     }.

encode(#{ 'calories' := Calories,
          'likes' := Likes,
          'price' := Price,
          'protein' := Protein,
          'spoonacular_score' := SpoonacularScore,
          'sugar' := Sugar
        }) ->
    #{ 'calories' => Calories,
       'likes' => Likes,
       'price' => Price,
       'protein' => Protein,
       'spoonacular_score' => SpoonacularScore,
       'sugar' => Sugar
     }.
