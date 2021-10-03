-module(spoonacular_inline_response_200_49).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_49/0]).

-type spoonacular_inline_response_200_49() ::
    #{ 'nutrition' := spoonacular_inline_response_200_49_nutrition:spoonacular_inline_response_200_49_nutrition(),
       'category' := spoonacular_inline_response_200_49_category:spoonacular_inline_response_200_49_category(),
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
