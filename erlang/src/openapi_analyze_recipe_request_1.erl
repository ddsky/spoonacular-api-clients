-module(openapi_analyze_recipe_request_1).

-export([encode/1]).

-export_type([openapi_analyze_recipe_request_1/0]).

-type openapi_analyze_recipe_request_1() ::
    #{ 'title' => binary(),
       'servings' => integer(),
       'ingredients' => list(),
       'instructions' => binary()
     }.

encode(#{ 'title' := Title,
          'servings' := Servings,
          'ingredients' := Ingredients,
          'instructions' := Instructions
        }) ->
    #{ 'title' => Title,
       'servings' => Servings,
       'ingredients' => Ingredients,
       'instructions' => Instructions
     }.
