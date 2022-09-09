-module(openapi_search_grocery_products_by_upc_200_response_ingredients_inner).

-export([encode/1]).

-export_type([openapi_search_grocery_products_by_upc_200_response_ingredients_inner/0]).

-type openapi_search_grocery_products_by_upc_200_response_ingredients_inner() ::
    #{ 'description' => openapi_any_type:openapi_any_type(),
       'name' := binary(),
       'safety_level' => openapi_any_type:openapi_any_type()
     }.

encode(#{ 'description' := Description,
          'name' := Name,
          'safety_level' := SafetyLevel
        }) ->
    #{ 'description' => Description,
       'name' => Name,
       'safety_level' => SafetyLevel
     }.
