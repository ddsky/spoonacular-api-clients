-module(openapi_get_shopping_list_200_response_aisles_inner_items_inner).

-export([encode/1]).

-export_type([openapi_get_shopping_list_200_response_aisles_inner_items_inner/0]).

-type openapi_get_shopping_list_200_response_aisles_inner_items_inner() ::
    #{ 'id' := integer(),
       'name' := binary(),
       'measures' => openapi_get_shopping_list_200_response_aisles_inner_items_inner_measures:openapi_get_shopping_list_200_response_aisles_inner_items_inner_measures(),
       'pantryItem' := boolean(),
       'aisle' := binary(),
       'cost' := integer(),
       'ingredientId' := integer()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'measures' := Measures,
          'pantryItem' := PantryItem,
          'aisle' := Aisle,
          'cost' := Cost,
          'ingredientId' := IngredientId
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'measures' => Measures,
       'pantryItem' => PantryItem,
       'aisle' => Aisle,
       'cost' => Cost,
       'ingredientId' => IngredientId
     }.
