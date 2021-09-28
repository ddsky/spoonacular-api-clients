-module(spoonacular_inline_response_200_46).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_46/0]).

-type spoonacular_inline_response_200_46() ::
    #{ 'recommendedWines' := list(),
       'totalFound' := integer()
     }.

encode(#{ 'recommendedWines' := RecommendedWines,
          'totalFound' := TotalFound
        }) ->
    #{ 'recommendedWines' => RecommendedWines,
       'totalFound' => TotalFound
     }.
