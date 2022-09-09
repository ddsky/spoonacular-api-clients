-module(openapi_analyze_a_recipe_search_query_200_response).

-export([encode/1]).

-export_type([openapi_analyze_a_recipe_search_query_200_response/0]).

-type openapi_analyze_a_recipe_search_query_200_response() ::
    #{ 'dishes' := openapi_set:openapi_set(),
       'ingredients' := openapi_set:openapi_set(),
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
