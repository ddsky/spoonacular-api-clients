-module(spoonacular_autocomplete_ingredient_search_200_response_inner).

-export([encode/1]).

-export_type([spoonacular_autocomplete_ingredient_search_200_response_inner/0]).

-type spoonacular_autocomplete_ingredient_search_200_response_inner() ::
    #{ 'name' := binary(),
       'image' := binary(),
       'id' => integer(),
       'aisle' => binary(),
       'possibleUnits' => list()
     }.

encode(#{ 'name' := Name,
          'image' := Image,
          'id' := Id,
          'aisle' := Aisle,
          'possibleUnits' := PossibleUnits
        }) ->
    #{ 'name' => Name,
       'image' => Image,
       'id' => Id,
       'aisle' => Aisle,
       'possibleUnits' => PossibleUnits
     }.
