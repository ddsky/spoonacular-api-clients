-module(spoonacular_inline_object_6).

-export([encode/1]).

-export_type([spoonacular_inline_object_6/0]).

-type spoonacular_inline_object_6() ::
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
