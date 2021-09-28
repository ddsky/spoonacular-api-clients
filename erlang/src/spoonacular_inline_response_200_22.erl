-module(spoonacular_inline_response_200_22).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_22/0]).

-type spoonacular_inline_response_200_22() ::
    #{ 'id' := integer(),
       'original' := binary(),
       'originalName' := binary(),
       'name' := binary(),
       'nameClean' := binary(),
       'amount' := integer(),
       'unit' := binary(),
       'unitShort' := binary(),
       'unitLong' := binary(),
       'possibleUnits' := list(),
       'estimatedCost' := spoonacular__recipes_parse_ingredients_estimated_cost:spoonacular__recipes_parse_ingredients_estimated_cost(),
       'consistency' := binary(),
       'shoppingListUnits' := list(),
       'aisle' := binary(),
       'image' := binary(),
       'meta' := list(),
       'nutrition' := spoonacular_inline_response_200_22_nutrition:spoonacular_inline_response_200_22_nutrition(),
       'categoryPath' := list()
     }.

encode(#{ 'id' := Id,
          'original' := Original,
          'originalName' := OriginalName,
          'name' := Name,
          'nameClean' := NameClean,
          'amount' := Amount,
          'unit' := Unit,
          'unitShort' := UnitShort,
          'unitLong' := UnitLong,
          'possibleUnits' := PossibleUnits,
          'estimatedCost' := EstimatedCost,
          'consistency' := Consistency,
          'shoppingListUnits' := ShoppingListUnits,
          'aisle' := Aisle,
          'image' := Image,
          'meta' := Meta,
          'nutrition' := Nutrition,
          'categoryPath' := CategoryPath
        }) ->
    #{ 'id' => Id,
       'original' => Original,
       'originalName' => OriginalName,
       'name' => Name,
       'nameClean' => NameClean,
       'amount' => Amount,
       'unit' => Unit,
       'unitShort' => UnitShort,
       'unitLong' => UnitLong,
       'possibleUnits' => PossibleUnits,
       'estimatedCost' => EstimatedCost,
       'consistency' => Consistency,
       'shoppingListUnits' => ShoppingListUnits,
       'aisle' => Aisle,
       'image' => Image,
       'meta' => Meta,
       'nutrition' => Nutrition,
       'categoryPath' => CategoryPath
     }.
