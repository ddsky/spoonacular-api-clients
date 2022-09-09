-module(openapi_search_grocery_products_by_upc_200_response).

-export([encode/1]).

-export_type([openapi_search_grocery_products_by_upc_200_response/0]).

-type openapi_search_grocery_products_by_upc_200_response() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'badges' := list(),
       'importantBadges' := list(),
       'breadcrumbs' := list(),
       'generatedText' := binary(),
       'imageType' := binary(),
       'ingredientCount' => integer(),
       'ingredientList' := binary(),
       'ingredients' := openapi_set:openapi_set(),
       'likes' := integer(),
       'nutrition' := openapi_search_grocery_products_by_upc_200_response_nutrition:openapi_search_grocery_products_by_upc_200_response_nutrition(),
       'price' := integer(),
       'servings' := openapi_search_grocery_products_by_upc_200_response_servings:openapi_search_grocery_products_by_upc_200_response_servings(),
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
