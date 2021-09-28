-module(spoonacular_inline_object_2).

-export([encode/1]).

-export_type([spoonacular_inline_object_2/0]).

-type spoonacular_inline_object_2() ::
    #{ 'ingredients' := list(),
       'servings' := integer()
     }.

encode(#{ 'ingredients' := Ingredients,
          'servings' := Servings
        }) ->
    #{ 'ingredients' => Ingredients,
       'servings' => Servings
     }.
