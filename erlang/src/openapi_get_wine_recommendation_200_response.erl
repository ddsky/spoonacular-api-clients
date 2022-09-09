-module(openapi_get_wine_recommendation_200_response).

-export([encode/1]).

-export_type([openapi_get_wine_recommendation_200_response/0]).

-type openapi_get_wine_recommendation_200_response() ::
    #{ 'recommendedWines' := openapi_set:openapi_set(),
       'totalFound' := integer()
     }.

encode(#{ 'recommendedWines' := RecommendedWines,
          'totalFound' := TotalFound
        }) ->
    #{ 'recommendedWines' => RecommendedWines,
       'totalFound' => TotalFound
     }.
