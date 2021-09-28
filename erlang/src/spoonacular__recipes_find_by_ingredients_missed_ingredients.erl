-module(spoonacular__recipes_find_by_ingredients_missed_ingredients).

-export([encode/1]).

-export_type([spoonacular__recipes_find_by_ingredients_missed_ingredients/0]).

-type spoonacular__recipes_find_by_ingredients_missed_ingredients() ::
    #{ 'aisle' := binary(),
       'amount' := integer(),
       'id' := integer(),
       'image' := binary(),
       'meta' => list(),
       'name' := binary(),
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
       'original' => Original,
       'originalName' => OriginalName,
       'unit' => Unit,
       'unitLong' => UnitLong,
       'unitShort' => UnitShort
     }.
