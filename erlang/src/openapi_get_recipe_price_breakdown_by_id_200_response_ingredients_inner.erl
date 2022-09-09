-module(openapi_get_recipe_price_breakdown_by_id_200_response_ingredients_inner).

-export([encode/1]).

-export_type([openapi_get_recipe_price_breakdown_by_id_200_response_ingredients_inner/0]).

-type openapi_get_recipe_price_breakdown_by_id_200_response_ingredients_inner() ::
    #{ 'amount' => openapi_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount:openapi_get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount(),
       'image' := binary(),
       'name' := binary(),
       'price' := integer()
     }.

encode(#{ 'amount' := Amount,
          'image' := Image,
          'name' := Name,
          'price' := Price
        }) ->
    #{ 'amount' => Amount,
       'image' => Image,
       'name' => Name,
       'price' => Price
     }.
