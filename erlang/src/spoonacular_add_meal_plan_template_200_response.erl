-module(spoonacular_add_meal_plan_template_200_response).

-export([encode/1]).

-export_type([spoonacular_add_meal_plan_template_200_response/0]).

-type spoonacular_add_meal_plan_template_200_response() ::
    #{ 'name' := binary(),
       'items' := spoonacular_set:spoonacular_set(),
       'publishAsPublic' := boolean()
     }.

encode(#{ 'name' := Name,
          'items' := Items,
          'publishAsPublic' := PublishAsPublic
        }) ->
    #{ 'name' => Name,
       'items' => Items,
       'publishAsPublic' => PublishAsPublic
     }.
