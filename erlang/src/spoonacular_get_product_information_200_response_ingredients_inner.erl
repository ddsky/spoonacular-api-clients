-module(spoonacular_get_product_information_200_response_ingredients_inner).

-export([encode/1]).

-export_type([spoonacular_get_product_information_200_response_ingredients_inner/0]).

-type spoonacular_get_product_information_200_response_ingredients_inner() ::
    #{ 'description' => binary(),
       'name' := binary(),
       'safety_level' => binary()
     }.

encode(#{ 'description' := Description,
          'name' := Name,
          'safety_level' := SafetyLevel
        }) ->
    #{ 'description' => Description,
       'name' => Name,
       'safety_level' => SafetyLevel
     }.
