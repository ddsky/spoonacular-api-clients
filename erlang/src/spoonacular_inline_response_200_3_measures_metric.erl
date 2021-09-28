-module(spoonacular_inline_response_200_3_measures_metric).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_3_measures_metric/0]).

-type spoonacular_inline_response_200_3_measures_metric() ::
    #{ 'amount' := integer(),
       'unitLong' := binary(),
       'unitShort' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unitLong' := UnitLong,
          'unitShort' := UnitShort
        }) ->
    #{ 'amount' => Amount,
       'unitLong' => UnitLong,
       'unitShort' => UnitShort
     }.
