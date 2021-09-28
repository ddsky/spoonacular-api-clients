-module(spoonacular_inline_response_200_48).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_48/0]).

-type spoonacular_inline_response_200_48() ::
    #{ 'nutrition' := spoonacular_inline_response_200_48_nutrition:spoonacular_inline_response_200_48_nutrition(),
       'category' := spoonacular_inline_response_200_48_category:spoonacular_inline_response_200_48_category(),
       'recipes' := list()
     }.

encode(#{ 'nutrition' := Nutrition,
          'category' := Category,
          'recipes' := Recipes
        }) ->
    #{ 'nutrition' => Nutrition,
       'category' => Category,
       'recipes' => Recipes
     }.
