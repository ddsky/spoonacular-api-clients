-module(spoonacular_get_recipe_equipment_by_id_200_response_equipment_inner).

-export([encode/1]).

-export_type([spoonacular_get_recipe_equipment_by_id_200_response_equipment_inner/0]).

-type spoonacular_get_recipe_equipment_by_id_200_response_equipment_inner() ::
    #{ 'image' := binary(),
       'name' := binary()
     }.

encode(#{ 'image' := Image,
          'name' := Name
        }) ->
    #{ 'image' => Image,
       'name' => Name
     }.
