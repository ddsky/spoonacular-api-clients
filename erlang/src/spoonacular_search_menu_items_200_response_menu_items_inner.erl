-module(spoonacular_search_menu_items_200_response_menu_items_inner).

-export([encode/1]).

-export_type([spoonacular_search_menu_items_200_response_menu_items_inner/0]).

-type spoonacular_search_menu_items_200_response_menu_items_inner() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'restaurantChain' := binary(),
       'image' := binary(),
       'imageType' := binary(),
       'servings' => spoonacular_search_grocery_products_by_upc_200_response_servings:spoonacular_search_grocery_products_by_upc_200_response_servings()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'restaurantChain' := RestaurantChain,
          'image' := Image,
          'imageType' := ImageType,
          'servings' := Servings
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'restaurantChain' => RestaurantChain,
       'image' => Image,
       'imageType' => ImageType,
       'servings' => Servings
     }.
