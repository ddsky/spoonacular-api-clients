-module(spoonacular_ingredient_information).

-export([encode/1]).

-export_type([spoonacular_ingredient_information/0]).

-type spoonacular_ingredient_information() ::
    #{ 'id' := integer(),
       'original' := binary(),
       'originalName' := binary(),
       'name' := binary(),
       'amount' := integer(),
       'unit' := binary(),
       'unitShort' := binary(),
       'unitLong' := binary(),
       'possibleUnits' := list(),
       'estimatedCost' := spoonacular_ingredient_information_estimated_cost:spoonacular_ingredient_information_estimated_cost(),
       'consistency' := binary(),
       'shoppingListUnits' => list(),
       'aisle' := binary(),
       'image' := binary(),
       'meta' := list(),
       'nutrition' => spoonacular_ingredient_information_nutrition:spoonacular_ingredient_information_nutrition(),
       'categoryPath' => list()
     }.

encode(#{ 'id' := Id,
          'original' := Original,
          'originalName' := OriginalName,
          'name' := Name,
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
