-module(spoonacular_inline_response_200_20).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_20/0]).

-type spoonacular_inline_response_200_20() ::
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
       'aisle' := binary(),
       'image' := binary(),
       'meta' := list(),
       'nutrition' := spoonacular__recipes_parse_ingredients_nutrition:spoonacular__recipes_parse_ingredients_nutrition()
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
