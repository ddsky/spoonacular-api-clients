-module(spoonacular_inline_response_200_42_items).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_42_items/0]).

-type spoonacular_inline_response_200_42_items() ::
    #{ 'id' := integer(),
       'name' := binary(),
       'measures' => spoonacular_inline_response_200_42_measures:spoonacular_inline_response_200_42_measures(),
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
