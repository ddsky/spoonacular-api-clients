-module(spoonacular_inline_response_200_41_items).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_41_items/0]).

-type spoonacular_inline_response_200_41_items() ::
    #{ 'id' := integer(),
       'name' := binary(),
       'measures' => spoonacular_inline_response_200_41_measures:spoonacular_inline_response_200_41_measures(),
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
