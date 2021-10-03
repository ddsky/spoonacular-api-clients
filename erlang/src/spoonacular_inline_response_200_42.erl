-module(spoonacular_inline_response_200_42).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_42/0]).

-type spoonacular_inline_response_200_42() ::
    #{ 'aisles' := list(),
       'cost' := integer(),
       'startDate' := integer(),
       'endDate' := integer()
     }.

encode(#{ 'aisles' := Aisles,
          'cost' := Cost,
          'startDate' := StartDate,
          'endDate' := EndDate
        }) ->
    #{ 'aisles' => Aisles,
       'cost' => Cost,
       'startDate' => StartDate,
       'endDate' => EndDate
     }.
