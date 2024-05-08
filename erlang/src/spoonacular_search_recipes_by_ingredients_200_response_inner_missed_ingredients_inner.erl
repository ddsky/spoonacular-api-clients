-module(spoonacular_search_recipes_by_ingredients_200_response_inner_missed_ingredients_inner).

-export([encode/1]).

-export_type([spoonacular_search_recipes_by_ingredients_200_response_inner_missed_ingredients_inner/0]).

-type spoonacular_search_recipes_by_ingredients_200_response_inner_missed_ingredients_inner() ::
    #{ 'aisle' := binary(),
       'amount' := integer(),
       'id' := integer(),
       'image' := binary(),
       'meta' => list(),
       'name' := binary(),
       'extendedName' => binary(),
       'original' := binary(),
       'originalName' := binary(),
       'unit' := binary(),
       'unitLong' := binary(),
       'unitShort' := binary()
     }.

encode(#{ 'aisle' := Aisle,
          'amount' := Amount,
          'id' := Id,
          'image' := Image,
          'meta' := Meta,
          'name' := Name,
          'extendedName' := ExtendedName,
          'original' := Original,
          'originalName' := OriginalName,
          'unit' := Unit,
          'unitLong' := UnitLong,
          'unitShort' := UnitShort
        }) ->
    #{ 'aisle' => Aisle,
       'amount' => Amount,
       'id' => Id,
       'image' => Image,
       'meta' => Meta,
       'name' => Name,
       'extendedName' => ExtendedName,
       'original' => Original,
       'originalName' => OriginalName,
       'unit' => Unit,
       'unitLong' => UnitLong,
       'unitShort' => UnitShort
     }.
