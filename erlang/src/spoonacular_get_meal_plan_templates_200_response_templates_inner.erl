-module(spoonacular_get_meal_plan_templates_200_response_templates_inner).

-export([encode/1]).

-export_type([spoonacular_get_meal_plan_templates_200_response_templates_inner/0]).

-type spoonacular_get_meal_plan_templates_200_response_templates_inner() ::
    #{ 'id' := integer(),
       'name' := binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name
        }) ->
    #{ 'id' => Id,
       'name' => Name
     }.
