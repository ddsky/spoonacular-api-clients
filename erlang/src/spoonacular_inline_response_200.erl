-module(spoonacular_inline_response_200).

-export([encode/1]).

-export_type([spoonacular_inline_response_200/0]).

-type spoonacular_inline_response_200() ::
    #{ 'offset' := integer(),
       'number' := integer(),
       'results' := list(),
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
