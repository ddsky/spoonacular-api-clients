-module(spoonacular_search_grocery_products_by_upc_200_response_ingredients_inner).

-export([encode/1]).

-export_type([spoonacular_search_grocery_products_by_upc_200_response_ingredients_inner/0]).

-type spoonacular_search_grocery_products_by_upc_200_response_ingredients_inner() ::
    #{ 'description' => spoonacular_any_type:spoonacular_any_type(),
       'name' := binary(),
       'safety_level' => spoonacular_any_type:spoonacular_any_type()
     }.

encode(#{ 'description' := Description,
          'name' := Name,
          'safety_level' := SafetyLevel
        }) ->
    #{ 'description' => Description,
       'name' => Name,
       'safety_level' => SafetyLevel
     }.
