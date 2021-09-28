-module(spoonacular_inline_response_200_36).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_36/0]).

-type spoonacular_inline_response_200_36() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'restaurantChain' := binary(),
       'nutrition' := spoonacular_inline_response_200_28_nutrition:spoonacular_inline_response_200_28_nutrition(),
       'badges' := list(),
       'breadcrumbs' := list(),
       'generatedText' => binary(),
       'imageType' := binary(),
       'likes' := integer(),
       'servings' := spoonacular_inline_response_200_28_servings:spoonacular_inline_response_200_28_servings(),
       'price' => integer(),
       'spoonacularScore' => integer()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'restaurantChain' := RestaurantChain,
          'nutrition' := Nutrition,
          'badges' := Badges,
          'breadcrumbs' := Breadcrumbs,
          'generatedText' := GeneratedText,
          'imageType' := ImageType,
          'likes' := Likes,
          'servings' := Servings,
          'price' := Price,
          'spoonacularScore' := SpoonacularScore
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'restaurantChain' => RestaurantChain,
       'nutrition' => Nutrition,
       'badges' => Badges,
       'breadcrumbs' => Breadcrumbs,
       'generatedText' => GeneratedText,
       'imageType' => ImageType,
       'likes' => Likes,
       'servings' => Servings,
       'price' => Price,
       'spoonacularScore' => SpoonacularScore
     }.
