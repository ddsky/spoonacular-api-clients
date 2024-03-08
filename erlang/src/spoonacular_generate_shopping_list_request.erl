-module(spoonacular_generate_shopping_list_request).

-export([encode/1]).

-export_type([spoonacular_generate_shopping_list_request/0]).

-type spoonacular_generate_shopping_list_request() ::
    #{ 'username' := binary(),
       'start_date' := binary(),
       'end_date' := binary(),
       'hash' := binary()
     }.

encode(#{ 'username' := Username,
          'start_date' := StartDate,
          'end_date' := EndDate,
          'hash' := Hash
        }) ->
    #{ 'username' => Username,
       'start-date' => StartDate,
       'end-date' => EndDate,
       'hash' => Hash
     }.
