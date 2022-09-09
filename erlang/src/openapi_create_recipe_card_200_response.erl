-module(openapi_create_recipe_card_200_response).

-export([encode/1]).

-export_type([openapi_create_recipe_card_200_response/0]).

-type openapi_create_recipe_card_200_response() ::
    #{ 'url' := binary()
     }.

encode(#{ 'url' := Url
        }) ->
    #{ 'url' => Url
     }.
