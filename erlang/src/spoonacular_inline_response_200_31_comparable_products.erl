-module(spoonacular_inline_response_200_31_comparable_products).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_31_comparable_products/0]).

-type spoonacular_inline_response_200_31_comparable_products() ::
    #{ 'calories' := list(),
       'likes' := list(),
       'price' := list(),
       'protein' := list(),
       'spoonacularScore' := list(),
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
