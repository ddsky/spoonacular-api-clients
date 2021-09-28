-module(spoonacular_inline_response_200_29_custom_foods).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_29_custom_foods/0]).

-type spoonacular_inline_response_200_29_custom_foods() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'servings' := integer(),
       'imageUrl' := binary(),
       'price' := integer()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'servings' := Servings,
          'imageUrl' := ImageUrl,
          'price' := Price
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'servings' => Servings,
       'imageUrl' => ImageUrl,
       'price' => Price
     }.
