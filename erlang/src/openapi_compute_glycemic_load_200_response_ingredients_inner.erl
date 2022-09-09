-module(openapi_compute_glycemic_load_200_response_ingredients_inner).

-export([encode/1]).

-export_type([openapi_compute_glycemic_load_200_response_ingredients_inner/0]).

-type openapi_compute_glycemic_load_200_response_ingredients_inner() ::
    #{ 'id' := integer(),
       'original' := binary(),
       'glycemicIndex' := integer(),
       'glycemicLoad' := integer()
     }.

encode(#{ 'id' := Id,
          'original' := Original,
          'glycemicIndex' := GlycemicIndex,
          'glycemicLoad' := GlycemicLoad
        }) ->
    #{ 'id' => Id,
       'original' => Original,
       'glycemicIndex' => GlycemicIndex,
       'glycemicLoad' => GlycemicLoad
     }.
