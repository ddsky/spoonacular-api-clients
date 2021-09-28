-module(spoonacular_inline_response_200_30).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_30/0]).

-type spoonacular_inline_response_200_30() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'breadcrumbs' := list(),
       'imageType' := binary(),
       'badges' := list(),
       'importantBadges' := list(),
       'ingredientCount' := integer(),
       'generatedText' => maps:map(),
       'ingredientList' := binary(),
       'ingredients' := list(),
       'likes' := integer(),
       'aisle' := binary(),
       'nutrition' := spoonacular_inline_response_200_28_nutrition:spoonacular_inline_response_200_28_nutrition(),
       'price' := integer(),
       'servings' := spoonacular_inline_response_200_28_servings:spoonacular_inline_response_200_28_servings(),
       'spoonacularScore' := integer()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'breadcrumbs' := Breadcrumbs,
          'imageType' := ImageType,
          'badges' := Badges,
          'importantBadges' := ImportantBadges,
          'ingredientCount' := IngredientCount,
          'generatedText' := GeneratedText,
          'ingredientList' := IngredientList,
          'ingredients' := Ingredients,
          'likes' := Likes,
          'aisle' := Aisle,
          'nutrition' := Nutrition,
          'price' := Price,
          'servings' := Servings,
          'spoonacularScore' := SpoonacularScore
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'breadcrumbs' => Breadcrumbs,
       'imageType' => ImageType,
       'badges' => Badges,
       'importantBadges' => ImportantBadges,
       'ingredientCount' => IngredientCount,
       'generatedText' => GeneratedText,
       'ingredientList' => IngredientList,
       'ingredients' => Ingredients,
       'likes' => Likes,
       'aisle' => Aisle,
       'nutrition' => Nutrition,
       'price' => Price,
       'servings' => Servings,
       'spoonacularScore' => SpoonacularScore
     }.
