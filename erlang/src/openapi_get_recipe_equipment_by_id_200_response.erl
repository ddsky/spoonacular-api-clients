-module(openapi_get_recipe_equipment_by_id_200_response).

-export([encode/1]).

-export_type([openapi_get_recipe_equipment_by_id_200_response/0]).

-type openapi_get_recipe_equipment_by_id_200_response() ::
    #{ 'equipment' := openapi_set:openapi_set()
     }.

encode(#{ 'equipment' := Equipment
        }) ->
    #{ 'equipment' => Equipment
     }.
