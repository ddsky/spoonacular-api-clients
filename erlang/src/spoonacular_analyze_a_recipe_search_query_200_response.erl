-module(spoonacular_analyze_a_recipe_search_query_200_response).

-export([encode/1]).

-export_type([spoonacular_analyze_a_recipe_search_query_200_response/0]).

-type spoonacular_analyze_a_recipe_search_query_200_response() ::
    #{ 'dishes' := spoonacular_set:spoonacular_set(),
       'ingredients' := spoonacular_set:spoonacular_set(),
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
