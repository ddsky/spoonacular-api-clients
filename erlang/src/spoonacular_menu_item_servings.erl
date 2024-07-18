-module(spoonacular_menu_item_servings).

-export([encode/1]).

-export_type([spoonacular_menu_item_servings/0]).

-type spoonacular_menu_item_servings() ::
    #{ 'number' := integer(),
       'size' := integer(),
       'unit' := binary()
     }.

encode(#{ 'number' := Number,
          'size' := Size,
          'unit' := Unit
        }) ->
    #{ 'number' => Number,
       'size' => Size,
       'unit' => Unit
     }.
