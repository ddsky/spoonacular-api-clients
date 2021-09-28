-module(spoonacular_inline_response_200_53).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_53/0]).

-type spoonacular_inline_response_200_53() ::
    #{ 'videos' := list(),
       'totalResults' := integer()
     }.

encode(#{ 'videos' := Videos,
          'totalResults' := TotalResults
        }) ->
    #{ 'videos' => Videos,
       'totalResults' => TotalResults
     }.
