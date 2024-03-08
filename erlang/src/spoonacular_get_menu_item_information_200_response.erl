-module(spoonacular_get_menu_item_information_200_response).

-export([encode/1]).

-export_type([spoonacular_get_menu_item_information_200_response/0]).

-type spoonacular_get_menu_item_information_200_response() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'restaurantChain' := binary(),
       'nutrition' := spoonacular_search_grocery_products_by_upc_200_response_nutrition:spoonacular_search_grocery_products_by_upc_200_response_nutrition(),
       'badges' := list(),
       'breadcrumbs' := list(),
       'generatedText' => binary(),
       'imageType' := binary(),
       'likes' := integer(),
       'servings' := spoonacular_search_grocery_products_by_upc_200_response_servings:spoonacular_search_grocery_products_by_upc_200_response_servings(),
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
