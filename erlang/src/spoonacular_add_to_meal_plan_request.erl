-module(spoonacular_add_to_meal_plan_request).

-export([encode/1]).

-export_type([spoonacular_add_to_meal_plan_request/0]).

-type spoonacular_add_to_meal_plan_request() ::
    #{ 'username' := binary(),
       'hash' := binary()
     }.

encode(#{ 'username' := Username,
          'hash' := Hash
        }) ->
    #{ 'username' => Username,
       'hash' => Hash
     }.
