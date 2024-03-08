-module(spoonacular_ingredient_search_200_response).

-export([encode/1]).

-export_type([spoonacular_ingredient_search_200_response/0]).

-type spoonacular_ingredient_search_200_response() ::
    #{ 'results' := spoonacular_set:spoonacular_set(),
       'offset' := integer(),
       'number' := integer(),
       'totalResults' := integer()
     }.

encode(#{ 'results' := Results,
          'offset' := Offset,
          'number' := Number,
          'totalResults' := TotalResults
        }) ->
    #{ 'results' => Results,
       'offset' => Offset,
       'number' => Number,
       'totalResults' => TotalResults
     }.
