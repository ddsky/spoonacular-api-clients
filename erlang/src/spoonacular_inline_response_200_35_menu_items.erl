-module(spoonacular_inline_response_200_35_menu_items).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_35_menu_items/0]).

-type spoonacular_inline_response_200_35_menu_items() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'restaurantChain' := binary(),
       'image' := binary(),
       'imageType' := binary(),
       'servings' => spoonacular_inline_response_200_28_servings:spoonacular_inline_response_200_28_servings()
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
