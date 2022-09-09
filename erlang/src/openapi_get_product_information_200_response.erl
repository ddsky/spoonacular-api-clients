-module(openapi_get_product_information_200_response).

-export([encode/1]).

-export_type([openapi_get_product_information_200_response/0]).

-type openapi_get_product_information_200_response() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'breadcrumbs' := list(),
       'imageType' := binary(),
       'badges' := list(),
       'importantBadges' := list(),
       'ingredientCount' := integer(),
       'generatedText' => openapi_any_type:openapi_any_type(),
       'ingredientList' := binary(),
       'ingredients' := list(),
       'likes' := integer(),
       'aisle' := binary(),
       'nutrition' := openapi_search_grocery_products_by_upc_200_response_nutrition:openapi_search_grocery_products_by_upc_200_response_nutrition(),
       'price' := integer(),
       'servings' := openapi_search_grocery_products_by_upc_200_response_servings:openapi_search_grocery_products_by_upc_200_response_servings(),
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
