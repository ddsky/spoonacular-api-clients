-module(openapi_get_ingredient_substitutes_200_response).

-export([encode/1]).

-export_type([openapi_get_ingredient_substitutes_200_response/0]).

-type openapi_get_ingredient_substitutes_200_response() ::
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
