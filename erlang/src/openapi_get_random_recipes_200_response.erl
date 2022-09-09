-module(openapi_get_random_recipes_200_response).

-export([encode/1]).

-export_type([openapi_get_random_recipes_200_response/0]).

-type openapi_get_random_recipes_200_response() ::
    #{ 'recipes' := openapi_set:openapi_set()
     }.

encode(#{ 'recipes' := Recipes
        }) ->
    #{ 'recipes' => Recipes
     }.
