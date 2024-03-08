-module(spoonacular_get_comparable_products_200_response_comparable_products).

-export([encode/1]).

-export_type([spoonacular_get_comparable_products_200_response_comparable_products/0]).

-type spoonacular_get_comparable_products_200_response_comparable_products() ::
    #{ 'calories' := list(),
       'likes' := list(),
       'price' := list(),
       'protein' := spoonacular_set:spoonacular_set(),
       'spoonacularScore' := spoonacular_set:spoonacular_set(),
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
