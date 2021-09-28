-module(spoonacular_inline_response_200_3_extended_ingredients).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_3_extended_ingredients/0]).

-type spoonacular_inline_response_200_3_extended_ingredients() ::
    #{ 'aisle' := binary(),
       'amount' := integer(),
       'consitency' := binary(),
       'id' := integer(),
       'image' := binary(),
       'measures' => spoonacular_inline_response_200_3_measures:spoonacular_inline_response_200_3_measures(),
       'meta' => list(),
       'name' := binary(),
       'original' := binary(),
       'originalName' := binary(),
       'unit' := binary()
     }.

encode(#{ 'aisle' := Aisle,
          'amount' := Amount,
          'consitency' := Consitency,
          'id' := Id,
          'image' := Image,
          'measures' := Measures,
          'meta' := Meta,
          'name' := Name,
          'original' := Original,
          'originalName' := OriginalName,
          'unit' := Unit
        }) ->
    #{ 'aisle' => Aisle,
       'amount' => Amount,
       'consitency' => Consitency,
       'id' => Id,
       'image' => Image,
       'measures' => Measures,
       'meta' => Meta,
       'name' => Name,
       'original' => Original,
       'originalName' => OriginalName,
       'unit' => Unit
     }.
