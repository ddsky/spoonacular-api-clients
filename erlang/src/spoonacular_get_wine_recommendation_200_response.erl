-module(spoonacular_get_wine_recommendation_200_response).

-export([encode/1]).

-export_type([spoonacular_get_wine_recommendation_200_response/0]).

-type spoonacular_get_wine_recommendation_200_response() ::
    #{ 'recommendedWines' := spoonacular_set:spoonacular_set(),
       'totalFound' := integer()
     }.

encode(#{ 'recommendedWines' := RecommendedWines,
          'totalFound' := TotalFound
        }) ->
    #{ 'recommendedWines' => RecommendedWines,
       'totalFound' => TotalFound
     }.
