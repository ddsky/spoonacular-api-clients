-module(openapi_compute_glycemic_load_200_response).

-export([encode/1]).

-export_type([openapi_compute_glycemic_load_200_response/0]).

-type openapi_compute_glycemic_load_200_response() ::
    #{ 'totalGlycemicLoad' := integer(),
       'ingredients' := openapi_set:openapi_set()
     }.

encode(#{ 'totalGlycemicLoad' := TotalGlycemicLoad,
          'ingredients' := Ingredients
        }) ->
    #{ 'totalGlycemicLoad' => TotalGlycemicLoad,
       'ingredients' => Ingredients
     }.
