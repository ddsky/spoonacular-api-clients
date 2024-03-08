-module(spoonacular_get_ingredient_information_200_response).

-export([encode/1]).

-export_type([spoonacular_get_ingredient_information_200_response/0]).

-type spoonacular_get_ingredient_information_200_response() ::
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
       'estimatedCost' := spoonacular_parse_ingredients_200_response_inner_estimated_cost:spoonacular_parse_ingredients_200_response_inner_estimated_cost(),
       'consistency' := binary(),
       'shoppingListUnits' := list(),
       'aisle' := binary(),
       'image' := binary(),
       'meta' := list(),
       'nutrition' := spoonacular_get_ingredient_information_200_response_nutrition:spoonacular_get_ingredient_information_200_response_nutrition(),
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
