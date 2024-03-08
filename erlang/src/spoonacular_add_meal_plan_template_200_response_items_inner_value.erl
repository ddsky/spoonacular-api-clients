-module(spoonacular_add_meal_plan_template_200_response_items_inner_value).

-export([encode/1]).

-export_type([spoonacular_add_meal_plan_template_200_response_items_inner_value/0]).

-type spoonacular_add_meal_plan_template_200_response_items_inner_value() ::
    #{ 'id' => integer(),
       'servings' => integer(),
       'title' => binary(),
       'imageType' => binary()
     }.

encode(#{ 'id' := Id,
          'servings' := Servings,
          'title' := Title,
          'imageType' := ImageType
        }) ->
    #{ 'id' => Id,
       'servings' => Servings,
       'title' => Title,
       'imageType' => ImageType
     }.
