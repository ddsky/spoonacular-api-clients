-module(spoonacular_recipe_information_extended_ingredients_inner).

-export([encode/1]).

-export_type([spoonacular_recipe_information_extended_ingredients_inner/0]).

-type spoonacular_recipe_information_extended_ingredients_inner() ::
    #{ 'aisle' := binary(),
       'amount' := integer(),
       'consistency' := binary(),
       'id' := integer(),
       'image' := binary(),
       'measures' => spoonacular_recipe_information_extended_ingredients_inner_measures:spoonacular_recipe_information_extended_ingredients_inner_measures(),
       'meta' => list(),
       'name' := binary(),
       'original' := binary(),
       'originalName' := binary(),
       'unit' := binary()
     }.

encode(#{ 'aisle' := Aisle,
          'amount' := Amount,
          'consistency' := Consistency,
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
       'consistency' => Consistency,
       'id' => Id,
       'image' => Image,
       'measures' => Measures,
       'meta' => Meta,
       'name' => Name,
       'original' => Original,
       'originalName' => OriginalName,
       'unit' => Unit
     }.
