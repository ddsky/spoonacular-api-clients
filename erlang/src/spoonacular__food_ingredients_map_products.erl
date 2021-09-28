-module(spoonacular__food_ingredients_map_products).

-export([encode/1]).

-export_type([spoonacular__food_ingredients_map_products/0]).

-type spoonacular__food_ingredients_map_products() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'upc' := binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'upc' := Upc
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'upc' => Upc
     }.
