-module(spoonacular_analyze_recipe_request).

-export([encode/1]).

-export_type([spoonacular_analyze_recipe_request/0]).

-type spoonacular_analyze_recipe_request() ::
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
