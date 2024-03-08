-module(spoonacular_get_meal_plan_template_200_response).

-export([encode/1]).

-export_type([spoonacular_get_meal_plan_template_200_response/0]).

-type spoonacular_get_meal_plan_template_200_response() ::
    #{ 'id' := integer(),
       'name' := binary(),
       'days' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'days' := Days
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'days' => Days
     }.
