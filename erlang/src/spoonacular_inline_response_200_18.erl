-module(spoonacular_inline_response_200_18).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_18/0]).

-type spoonacular_inline_response_200_18() ::
    #{ 'dishes' := list(),
       'ingredients' := list(),
       'cuisines' := list(),
       'modifiers' := list()
     }.

encode(#{ 'dishes' := Dishes,
          'ingredients' := Ingredients,
          'cuisines' := Cuisines,
          'modifiers' := Modifiers
        }) ->
    #{ 'dishes' => Dishes,
       'ingredients' => Ingredients,
       'cuisines' => Cuisines,
       'modifiers' => Modifiers
     }.
