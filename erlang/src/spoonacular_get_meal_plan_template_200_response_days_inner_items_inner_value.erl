-module(spoonacular_get_meal_plan_template_200_response_days_inner_items_inner_value).

-export([encode/1]).

-export_type([spoonacular_get_meal_plan_template_200_response_days_inner_items_inner_value/0]).

-type spoonacular_get_meal_plan_template_200_response_days_inner_items_inner_value() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'imageType' := binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'imageType' := ImageType
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'imageType' => ImageType
     }.
