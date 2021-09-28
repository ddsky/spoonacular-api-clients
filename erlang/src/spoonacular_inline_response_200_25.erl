-module(spoonacular_inline_response_200_25).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_25/0]).

-type spoonacular_inline_response_200_25() ::
    #{ 'results' := list(),
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
