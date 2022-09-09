-module(openapi_add_meal_plan_template_200_response_items_inner_value).

-export([encode/1]).

-export_type([openapi_add_meal_plan_template_200_response_items_inner_value/0]).

-type openapi_add_meal_plan_template_200_response_items_inner_value() ::
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
