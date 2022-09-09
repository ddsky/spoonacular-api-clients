-module(openapi_search_recipes_by_ingredients_200_response_inner_missed_ingredients_inner).

-export([encode/1]).

-export_type([openapi_search_recipes_by_ingredients_200_response_inner_missed_ingredients_inner/0]).

-type openapi_search_recipes_by_ingredients_200_response_inner_missed_ingredients_inner() ::
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
