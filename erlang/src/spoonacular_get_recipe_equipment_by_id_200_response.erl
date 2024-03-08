-module(spoonacular_get_recipe_equipment_by_id_200_response).

-export([encode/1]).

-export_type([spoonacular_get_recipe_equipment_by_id_200_response/0]).

-type spoonacular_get_recipe_equipment_by_id_200_response() ::
    #{ 'equipment' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'equipment' := Equipment
        }) ->
    #{ 'equipment' => Equipment
     }.
