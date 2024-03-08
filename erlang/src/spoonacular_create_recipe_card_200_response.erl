-module(spoonacular_create_recipe_card_200_response).

-export([encode/1]).

-export_type([spoonacular_create_recipe_card_200_response/0]).

-type spoonacular_create_recipe_card_200_response() ::
    #{ 'url' := binary()
     }.

encode(#{ 'url' := Url
        }) ->
    #{ 'url' => Url
     }.
