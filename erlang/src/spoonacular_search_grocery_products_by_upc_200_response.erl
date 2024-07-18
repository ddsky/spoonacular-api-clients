-module(spoonacular_search_grocery_products_by_upc_200_response).

-export([encode/1]).

-export_type([spoonacular_search_grocery_products_by_upc_200_response/0]).

-type spoonacular_search_grocery_products_by_upc_200_response() ::
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
       'nutrition' := spoonacular_search_grocery_products_by_upc_200_response_nutrition:spoonacular_search_grocery_products_by_upc_200_response_nutrition(),
       'price' := integer(),
       'servings' := spoonacular_search_grocery_products_by_upc_200_response_servings:spoonacular_search_grocery_products_by_upc_200_response_servings(),
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
