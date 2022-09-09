-module(openapi_get_product_information_200_response_ingredients_inner).

-export([encode/1]).

-export_type([openapi_get_product_information_200_response_ingredients_inner/0]).

-type openapi_get_product_information_200_response_ingredients_inner() ::
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
