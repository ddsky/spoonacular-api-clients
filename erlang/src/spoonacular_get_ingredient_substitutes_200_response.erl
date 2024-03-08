-module(spoonacular_get_ingredient_substitutes_200_response).

-export([encode/1]).

-export_type([spoonacular_get_ingredient_substitutes_200_response/0]).

-type spoonacular_get_ingredient_substitutes_200_response() ::
    #{ 'ingredient' := binary(),
       'substitutes' := list(),
       'message' := binary()
     }.

encode(#{ 'ingredient' := Ingredient,
          'substitutes' := Substitutes,
          'message' := Message
        }) ->
    #{ 'ingredient' => Ingredient,
       'substitutes' => Substitutes,
       'message' => Message
     }.
