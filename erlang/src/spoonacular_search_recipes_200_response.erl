-module(spoonacular_search_recipes_200_response).

-export([encode/1]).

-export_type([spoonacular_search_recipes_200_response/0]).

-type spoonacular_search_recipes_200_response() ::
    #{ 'offset' := integer(),
       'number' := integer(),
       'results' := spoonacular_set:spoonacular_set(),
       'totalResults' := integer()
     }.

encode(#{ 'offset' := Offset,
          'number' := Number,
          'results' := Results,
          'totalResults' := TotalResults
        }) ->
    #{ 'offset' => Offset,
       'number' => Number,
       'results' => Results,
       'totalResults' => TotalResults
     }.
