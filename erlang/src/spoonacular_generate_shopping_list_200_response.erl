-module(spoonacular_generate_shopping_list_200_response).

-export([encode/1]).

-export_type([spoonacular_generate_shopping_list_200_response/0]).

-type spoonacular_generate_shopping_list_200_response() ::
    #{ 'aisles' := spoonacular_set:spoonacular_set(),
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
