-module(spoonacular_inline_response_200_28).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_28/0]).

-type spoonacular_inline_response_200_28() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'badges' := list(),
       'importantBadges' := list(),
       'breadcrumbs' := list(),
       'generatedText' := binary(),
       'imageType' := binary(),
       'ingredientCount' => integer(),
       'ingredientList' := binary(),
       'ingredients' := list(),
       'likes' := integer(),
       'nutrition' := spoonacular_inline_response_200_28_nutrition:spoonacular_inline_response_200_28_nutrition(),
       'price' := integer(),
       'servings' := spoonacular_inline_response_200_28_servings:spoonacular_inline_response_200_28_servings(),
       'spoonacularScore' := integer()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'badges' := Badges,
          'importantBadges' := ImportantBadges,
          'breadcrumbs' := Breadcrumbs,
          'generatedText' := GeneratedText,
          'imageType' := ImageType,
          'ingredientCount' := IngredientCount,
          'ingredientList' := IngredientList,
          'ingredients' := Ingredients,
          'likes' := Likes,
          'nutrition' := Nutrition,
          'price' := Price,
          'servings' := Servings,
          'spoonacularScore' := SpoonacularScore
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'badges' => Badges,
       'importantBadges' => ImportantBadges,
       'breadcrumbs' => Breadcrumbs,
       'generatedText' => GeneratedText,
       'imageType' => ImageType,
       'ingredientCount' => IngredientCount,
       'ingredientList' => IngredientList,
       'ingredients' => Ingredients,
       'likes' => Likes,
       'nutrition' => Nutrition,
       'price' => Price,
       'servings' => Servings,
       'spoonacularScore' => SpoonacularScore
     }.
