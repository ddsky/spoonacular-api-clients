-module(spoonacular_product_information).

-export([encode/1]).

-export_type([spoonacular_product_information/0]).

-type spoonacular_product_information() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'upc' => binary(),
       'usdaCode' => binary(),
       'breadcrumbs' := list(),
       'imageType' := binary(),
       'badges' := list(),
       'importantBadges' := list(),
       'ingredientCount' := integer(),
       'generatedText' => binary(),
       'ingredientList' := binary(),
       'ingredients' := list(),
       'likes' := integer(),
       'aisle' := binary(),
       'credits' => spoonacular_product_information_credits:spoonacular_product_information_credits(),
       'nutrition' := spoonacular_search_grocery_products_by_upc_200_response_nutrition:spoonacular_search_grocery_products_by_upc_200_response_nutrition(),
       'price' := integer(),
       'servings' := spoonacular_search_grocery_products_by_upc_200_response_servings:spoonacular_search_grocery_products_by_upc_200_response_servings(),
       'spoonacularScore' := integer()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'upc' := Upc,
          'usdaCode' := UsdaCode,
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
          'credits' := Credits,
          'nutrition' := Nutrition,
          'price' := Price,
          'servings' := Servings,
          'spoonacularScore' := SpoonacularScore
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'upc' => Upc,
       'usdaCode' => UsdaCode,
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
       'credits' => Credits,
       'nutrition' => Nutrition,
       'price' => Price,
       'servings' => Servings,
       'spoonacularScore' => SpoonacularScore
     }.
