-module(spoonacular_parse_ingredients_200_response_inner).

-export([encode/1]).

-export_type([spoonacular_parse_ingredients_200_response_inner/0]).

-type spoonacular_parse_ingredients_200_response_inner() ::
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
       'aisle' := binary(),
       'image' := binary(),
       'meta' := list(),
       'nutrition' := spoonacular_parse_ingredients_200_response_inner_nutrition:spoonacular_parse_ingredients_200_response_inner_nutrition()
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
          'aisle' := Aisle,
          'image' := Image,
          'meta' := Meta,
          'nutrition' := Nutrition
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
       'aisle' => Aisle,
       'image' => Image,
       'meta' => Meta,
       'nutrition' => Nutrition
     }.
