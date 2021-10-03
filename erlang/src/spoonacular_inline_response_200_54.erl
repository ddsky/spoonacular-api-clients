-module(spoonacular_inline_response_200_54).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_54/0]).

-type spoonacular_inline_response_200_54() ::
    #{ 'videos' := list(),
       'totalResults' := integer()
     }.

encode(#{ 'videos' := Videos,
          'totalResults' := TotalResults
        }) ->
    #{ 'videos' => Videos,
       'totalResults' => TotalResults
     }.
