-module(spoonacular_inline_response_200_24).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_24/0]).

-type spoonacular_inline_response_200_24() ::
    #{ 'name' := binary(),
       'image' := binary(),
       'id' := integer(),
       'aisle' := binary(),
       'possibleUnits' := list()
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
