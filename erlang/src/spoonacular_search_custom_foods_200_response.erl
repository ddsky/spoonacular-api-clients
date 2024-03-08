-module(spoonacular_search_custom_foods_200_response).

-export([encode/1]).

-export_type([spoonacular_search_custom_foods_200_response/0]).

-type spoonacular_search_custom_foods_200_response() ::
    #{ 'customFoods' := spoonacular_set:spoonacular_set(),
       'type' := binary(),
       'offset' := integer(),
       'number' := integer()
     }.

encode(#{ 'customFoods' := CustomFoods,
          'type' := Type,
          'offset' := Offset,
          'number' := Number
        }) ->
    #{ 'customFoods' => CustomFoods,
       'type' => Type,
       'offset' => Offset,
       'number' => Number
     }.
