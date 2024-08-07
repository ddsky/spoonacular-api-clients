cmake_minimum_required(VERSION 3.5)

project(spoonacular)

set(CMAKE_AUTOMOC ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core Network Gui)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Network Gui)

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

add_library(${PROJECT_NAME}
  OAIAddMealPlanTemplate_200_response.h
  OAIAddMealPlanTemplate_200_response_items_inner.h
  OAIAddMealPlanTemplate_200_response_items_inner_value.h
  OAIAddToMealPlan_request.h
  OAIAddToMealPlan_request_value.h
  OAIAddToMealPlan_request_value_ingredients_inner.h
  OAIAddToShoppingList_request.h
  OAIAnalyzeARecipeSearchQuery_200_response.h
  OAIAnalyzeARecipeSearchQuery_200_response_dishes_inner.h
  OAIAnalyzeARecipeSearchQuery_200_response_ingredients_inner.h
  OAIAnalyzeRecipeInstructions_200_response.h
  OAIAnalyzeRecipeInstructions_200_response_ingredients_inner.h
  OAIAnalyzeRecipeInstructions_200_response_parsedInstructions_inner.h
  OAIAnalyzeRecipeInstructions_200_response_parsedInstructions_inner_steps_inner.h
  OAIAnalyzeRecipeInstructions_200_response_parsedInstructions_inner_steps_inner_ingredients_inner.h
  OAIAnalyzeRecipe_request.h
  OAIAutocompleteIngredientSearch_200_response_inner.h
  OAIAutocompleteProductSearch_200_response.h
  OAIAutocompleteProductSearch_200_response_results_inner.h
  OAIAutocompleteRecipeSearch_200_response_inner.h
  OAIClassifyCuisine_200_response.h
  OAIClassifyGroceryProductBulk_200_response_inner.h
  OAIClassifyGroceryProductBulk_request_inner.h
  OAIClassifyGroceryProduct_200_response.h
  OAIClassifyGroceryProduct_request.h
  OAIComparableProduct.h
  OAIComputeGlycemicLoad_200_response.h
  OAIComputeGlycemicLoad_200_response_ingredients_inner.h
  OAIComputeGlycemicLoad_request.h
  OAIComputeIngredientAmount_200_response.h
  OAIConnectUser_200_response.h
  OAIConnectUser_request.h
  OAIConvertAmounts_200_response.h
  OAICreateRecipeCard_200_response.h
  OAIDetectFoodInText_200_response.h
  OAIDetectFoodInText_200_response_annotations_inner.h
  OAIGenerateMealPlan_200_response.h
  OAIGenerateMealPlan_200_response_nutrients.h
  OAIGetARandomFoodJoke_200_response.h
  OAIGetAnalyzedRecipeInstructions_200_response_inner.h
  OAIGetAnalyzedRecipeInstructions_200_response_inner_steps_inner.h
  OAIGetAnalyzedRecipeInstructions_200_response_inner_steps_inner_ingredients_inner.h
  OAIGetComparableProducts_200_response.h
  OAIGetComparableProducts_200_response_comparableProducts.h
  OAIGetConversationSuggests_200_response.h
  OAIGetConversationSuggests_200_response_suggests.h
  OAIGetConversationSuggests_200_response_suggests___inner.h
  OAIGetDishPairingForWine_200_response.h
  OAIGetIngredientSubstitutes_200_response.h
  OAIGetMealPlanTemplate_200_response.h
  OAIGetMealPlanTemplate_200_response_days_inner.h
  OAIGetMealPlanTemplate_200_response_days_inner_items_inner.h
  OAIGetMealPlanTemplate_200_response_days_inner_items_inner_value.h
  OAIGetMealPlanTemplates_200_response.h
  OAIGetMealPlanTemplates_200_response_templates_inner.h
  OAIGetMealPlanWeek_200_response.h
  OAIGetMealPlanWeek_200_response_days_inner.h
  OAIGetMealPlanWeek_200_response_days_inner_items_inner.h
  OAIGetMealPlanWeek_200_response_days_inner_items_inner_value.h
  OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary.h
  OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_nutrients_inner.h
  OAIGetRandomRecipes_200_response.h
  OAIGetRecipeEquipmentByID_200_response.h
  OAIGetRecipeEquipmentByID_200_response_equipment_inner.h
  OAIGetRecipeIngredientsByID_200_response.h
  OAIGetRecipeIngredientsByID_200_response_ingredients_inner.h
  OAIGetRecipeNutritionWidgetByID_200_response.h
  OAIGetRecipeNutritionWidgetByID_200_response_bad_inner.h
  OAIGetRecipeNutritionWidgetByID_200_response_good_inner.h
  OAIGetRecipePriceBreakdownByID_200_response.h
  OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner.h
  OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner_amount.h
  OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner_amount_metric.h
  OAIGetShoppingList_200_response.h
  OAIGetShoppingList_200_response_aisles_inner.h
  OAIGetShoppingList_200_response_aisles_inner_items_inner.h
  OAIGetShoppingList_200_response_aisles_inner_items_inner_measures.h
  OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original.h
  OAIGetSimilarRecipes_200_response_inner.h
  OAIGetWineDescription_200_response.h
  OAIGetWinePairing_200_response.h
  OAIGetWinePairing_200_response_productMatches_inner.h
  OAIGetWineRecommendation_200_response.h
  OAIGetWineRecommendation_200_response_recommendedWines_inner.h
  OAIGuessNutritionByDishName_200_response.h
  OAIGuessNutritionByDishName_200_response_calories.h
  OAIGuessNutritionByDishName_200_response_calories_confidenceRange95Percent.h
  OAIImageAnalysisByURL_200_response.h
  OAIImageAnalysisByURL_200_response_category.h
  OAIImageAnalysisByURL_200_response_nutrition.h
  OAIImageAnalysisByURL_200_response_nutrition_calories.h
  OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent.h
  OAIImageAnalysisByURL_200_response_recipes_inner.h
  OAIImageClassificationByURL_200_response.h
  OAIIngredientBasics.h
  OAIIngredientInformation.h
  OAIIngredientInformation_estimatedCost.h
  OAIIngredientInformation_nutrition.h
  OAIIngredientInformation_nutrition_properties_inner.h
  OAIIngredientSearch_200_response.h
  OAIIngredientSearch_200_response_results_inner.h
  OAIMapIngredientsToGroceryProducts_200_response_inner.h
  OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner.h
  OAIMapIngredientsToGroceryProducts_request.h
  OAIMenuItem.h
  OAIMenuItem_servings.h
  OAIProductInformation.h
  OAIProductInformation_credits.h
  OAIQuickAnswer_200_response.h
  OAIRecipeInformation.h
  OAIRecipeInformation_extendedIngredients_inner.h
  OAIRecipeInformation_extendedIngredients_inner_measures.h
  OAIRecipeInformation_extendedIngredients_inner_measures_metric.h
  OAIRecipeInformation_winePairing.h
  OAIRecipeInformation_winePairing_productMatches_inner.h
  OAISearchAllFood_200_response.h
  OAISearchAllFood_200_response_searchResults_inner.h
  OAISearchCustomFoods_200_response.h
  OAISearchCustomFoods_200_response_customFoods_inner.h
  OAISearchFoodVideos_200_response.h
  OAISearchFoodVideos_200_response_videos_inner.h
  OAISearchGroceryProductsByUPC_200_response.h
  OAISearchGroceryProductsByUPC_200_response_nutrition.h
  OAISearchGroceryProductsByUPC_200_response_nutrition_caloricBreakdown.h
  OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner.h
  OAISearchGroceryProductsByUPC_200_response_servings.h
  OAISearchGroceryProducts_200_response.h
  OAISearchMenuItems_200_response.h
  OAISearchRecipesByIngredients_200_response_inner.h
  OAISearchRecipesByIngredients_200_response_inner_missedIngredients_inner.h
  OAISearchRecipesByNutrients_200_response_inner.h
  OAISearchRecipes_200_response.h
  OAISearchRecipes_200_response_results_inner.h
  OAISearchRestaurants_200_response.h
  OAISearchRestaurants_200_response_restaurants_inner.h
  OAISearchRestaurants_200_response_restaurants_inner_address.h
  OAISearchRestaurants_200_response_restaurants_inner_local_hours.h
  OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational.h
  OAISearchResult.h
  OAISearchSiteContent_200_response.h
  OAISummarizeRecipe_200_response.h
  OAITalkToChatbot_200_response.h
  OAITalkToChatbot_200_response_media_inner.h
  OAITasteInformation.h
  OAIDefaultApi.h
  OAIIngredientsApi.h
  OAIMealPlanningApi.h
  OAIMenuItemsApi.h
  OAIMiscApi.h
  OAIProductsApi.h
  OAIRecipesApi.h
  OAIWineApi.h
  OAIHelpers.h
  OAIHttpRequest.h
  OAIObject.h
  OAIEnum.h
  OAIHttpFileElement.h
  OAIServerConfiguration.h
  OAIServerVariable.h
  OAIOauth.h
  OAIAddMealPlanTemplate_200_response.cpp
  OAIAddMealPlanTemplate_200_response_items_inner.cpp
  OAIAddMealPlanTemplate_200_response_items_inner_value.cpp
  OAIAddToMealPlan_request.cpp
  OAIAddToMealPlan_request_value.cpp
  OAIAddToMealPlan_request_value_ingredients_inner.cpp
  OAIAddToShoppingList_request.cpp
  OAIAnalyzeARecipeSearchQuery_200_response.cpp
  OAIAnalyzeARecipeSearchQuery_200_response_dishes_inner.cpp
  OAIAnalyzeARecipeSearchQuery_200_response_ingredients_inner.cpp
  OAIAnalyzeRecipeInstructions_200_response.cpp
  OAIAnalyzeRecipeInstructions_200_response_ingredients_inner.cpp
  OAIAnalyzeRecipeInstructions_200_response_parsedInstructions_inner.cpp
  OAIAnalyzeRecipeInstructions_200_response_parsedInstructions_inner_steps_inner.cpp
  OAIAnalyzeRecipeInstructions_200_response_parsedInstructions_inner_steps_inner_ingredients_inner.cpp
  OAIAnalyzeRecipe_request.cpp
  OAIAutocompleteIngredientSearch_200_response_inner.cpp
  OAIAutocompleteProductSearch_200_response.cpp
  OAIAutocompleteProductSearch_200_response_results_inner.cpp
  OAIAutocompleteRecipeSearch_200_response_inner.cpp
  OAIClassifyCuisine_200_response.cpp
  OAIClassifyGroceryProductBulk_200_response_inner.cpp
  OAIClassifyGroceryProductBulk_request_inner.cpp
  OAIClassifyGroceryProduct_200_response.cpp
  OAIClassifyGroceryProduct_request.cpp
  OAIComparableProduct.cpp
  OAIComputeGlycemicLoad_200_response.cpp
  OAIComputeGlycemicLoad_200_response_ingredients_inner.cpp
  OAIComputeGlycemicLoad_request.cpp
  OAIComputeIngredientAmount_200_response.cpp
  OAIConnectUser_200_response.cpp
  OAIConnectUser_request.cpp
  OAIConvertAmounts_200_response.cpp
  OAICreateRecipeCard_200_response.cpp
  OAIDetectFoodInText_200_response.cpp
  OAIDetectFoodInText_200_response_annotations_inner.cpp
  OAIGenerateMealPlan_200_response.cpp
  OAIGenerateMealPlan_200_response_nutrients.cpp
  OAIGetARandomFoodJoke_200_response.cpp
  OAIGetAnalyzedRecipeInstructions_200_response_inner.cpp
  OAIGetAnalyzedRecipeInstructions_200_response_inner_steps_inner.cpp
  OAIGetAnalyzedRecipeInstructions_200_response_inner_steps_inner_ingredients_inner.cpp
  OAIGetComparableProducts_200_response.cpp
  OAIGetComparableProducts_200_response_comparableProducts.cpp
  OAIGetConversationSuggests_200_response.cpp
  OAIGetConversationSuggests_200_response_suggests.cpp
  OAIGetConversationSuggests_200_response_suggests___inner.cpp
  OAIGetDishPairingForWine_200_response.cpp
  OAIGetIngredientSubstitutes_200_response.cpp
  OAIGetMealPlanTemplate_200_response.cpp
  OAIGetMealPlanTemplate_200_response_days_inner.cpp
  OAIGetMealPlanTemplate_200_response_days_inner_items_inner.cpp
  OAIGetMealPlanTemplate_200_response_days_inner_items_inner_value.cpp
  OAIGetMealPlanTemplates_200_response.cpp
  OAIGetMealPlanTemplates_200_response_templates_inner.cpp
  OAIGetMealPlanWeek_200_response.cpp
  OAIGetMealPlanWeek_200_response_days_inner.cpp
  OAIGetMealPlanWeek_200_response_days_inner_items_inner.cpp
  OAIGetMealPlanWeek_200_response_days_inner_items_inner_value.cpp
  OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary.cpp
  OAIGetMealPlanWeek_200_response_days_inner_nutritionSummary_nutrients_inner.cpp
  OAIGetRandomRecipes_200_response.cpp
  OAIGetRecipeEquipmentByID_200_response.cpp
  OAIGetRecipeEquipmentByID_200_response_equipment_inner.cpp
  OAIGetRecipeIngredientsByID_200_response.cpp
  OAIGetRecipeIngredientsByID_200_response_ingredients_inner.cpp
  OAIGetRecipeNutritionWidgetByID_200_response.cpp
  OAIGetRecipeNutritionWidgetByID_200_response_bad_inner.cpp
  OAIGetRecipeNutritionWidgetByID_200_response_good_inner.cpp
  OAIGetRecipePriceBreakdownByID_200_response.cpp
  OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner.cpp
  OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner_amount.cpp
  OAIGetRecipePriceBreakdownByID_200_response_ingredients_inner_amount_metric.cpp
  OAIGetShoppingList_200_response.cpp
  OAIGetShoppingList_200_response_aisles_inner.cpp
  OAIGetShoppingList_200_response_aisles_inner_items_inner.cpp
  OAIGetShoppingList_200_response_aisles_inner_items_inner_measures.cpp
  OAIGetShoppingList_200_response_aisles_inner_items_inner_measures_original.cpp
  OAIGetSimilarRecipes_200_response_inner.cpp
  OAIGetWineDescription_200_response.cpp
  OAIGetWinePairing_200_response.cpp
  OAIGetWinePairing_200_response_productMatches_inner.cpp
  OAIGetWineRecommendation_200_response.cpp
  OAIGetWineRecommendation_200_response_recommendedWines_inner.cpp
  OAIGuessNutritionByDishName_200_response.cpp
  OAIGuessNutritionByDishName_200_response_calories.cpp
  OAIGuessNutritionByDishName_200_response_calories_confidenceRange95Percent.cpp
  OAIImageAnalysisByURL_200_response.cpp
  OAIImageAnalysisByURL_200_response_category.cpp
  OAIImageAnalysisByURL_200_response_nutrition.cpp
  OAIImageAnalysisByURL_200_response_nutrition_calories.cpp
  OAIImageAnalysisByURL_200_response_nutrition_calories_confidenceRange95Percent.cpp
  OAIImageAnalysisByURL_200_response_recipes_inner.cpp
  OAIImageClassificationByURL_200_response.cpp
  OAIIngredientBasics.cpp
  OAIIngredientInformation.cpp
  OAIIngredientInformation_estimatedCost.cpp
  OAIIngredientInformation_nutrition.cpp
  OAIIngredientInformation_nutrition_properties_inner.cpp
  OAIIngredientSearch_200_response.cpp
  OAIIngredientSearch_200_response_results_inner.cpp
  OAIMapIngredientsToGroceryProducts_200_response_inner.cpp
  OAIMapIngredientsToGroceryProducts_200_response_inner_products_inner.cpp
  OAIMapIngredientsToGroceryProducts_request.cpp
  OAIMenuItem.cpp
  OAIMenuItem_servings.cpp
  OAIProductInformation.cpp
  OAIProductInformation_credits.cpp
  OAIQuickAnswer_200_response.cpp
  OAIRecipeInformation.cpp
  OAIRecipeInformation_extendedIngredients_inner.cpp
  OAIRecipeInformation_extendedIngredients_inner_measures.cpp
  OAIRecipeInformation_extendedIngredients_inner_measures_metric.cpp
  OAIRecipeInformation_winePairing.cpp
  OAIRecipeInformation_winePairing_productMatches_inner.cpp
  OAISearchAllFood_200_response.cpp
  OAISearchAllFood_200_response_searchResults_inner.cpp
  OAISearchCustomFoods_200_response.cpp
  OAISearchCustomFoods_200_response_customFoods_inner.cpp
  OAISearchFoodVideos_200_response.cpp
  OAISearchFoodVideos_200_response_videos_inner.cpp
  OAISearchGroceryProductsByUPC_200_response.cpp
  OAISearchGroceryProductsByUPC_200_response_nutrition.cpp
  OAISearchGroceryProductsByUPC_200_response_nutrition_caloricBreakdown.cpp
  OAISearchGroceryProductsByUPC_200_response_nutrition_nutrients_inner.cpp
  OAISearchGroceryProductsByUPC_200_response_servings.cpp
  OAISearchGroceryProducts_200_response.cpp
  OAISearchMenuItems_200_response.cpp
  OAISearchRecipesByIngredients_200_response_inner.cpp
  OAISearchRecipesByIngredients_200_response_inner_missedIngredients_inner.cpp
  OAISearchRecipesByNutrients_200_response_inner.cpp
  OAISearchRecipes_200_response.cpp
  OAISearchRecipes_200_response_results_inner.cpp
  OAISearchRestaurants_200_response.cpp
  OAISearchRestaurants_200_response_restaurants_inner.cpp
  OAISearchRestaurants_200_response_restaurants_inner_address.cpp
  OAISearchRestaurants_200_response_restaurants_inner_local_hours.cpp
  OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational.cpp
  OAISearchResult.cpp
  OAISearchSiteContent_200_response.cpp
  OAISummarizeRecipe_200_response.cpp
  OAITalkToChatbot_200_response.cpp
  OAITalkToChatbot_200_response_media_inner.cpp
  OAITasteInformation.cpp
  OAIDefaultApi.cpp
  OAIIngredientsApi.cpp
  OAIMealPlanningApi.cpp
  OAIMenuItemsApi.cpp
  OAIMiscApi.cpp
  OAIProductsApi.cpp
  OAIRecipesApi.cpp
  OAIWineApi.cpp
  OAIHelpers.cpp
  OAIHttpRequest.cpp
  OAIHttpFileElement.cpp
  OAIOauth.cpp
  )

target_include_directories(${PROJECT_NAME}
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

target_link_libraries(${PROJECT_NAME}
    PUBLIC
        Qt${QT_VERSION_MAJOR}::Core
        Qt${QT_VERSION_MAJOR}::Network
        Qt${QT_VERSION_MAJOR}::Gui

)

configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
    "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    INSTALL_DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}"
)

install(
    TARGETS ${PROJECT_NAME}
    EXPORT ${PROJECT_NAME}Targets
    LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}"
    INCLUDES DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}"
)

install(
    FILES ${HEADER_FILES}
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
)

install(
    FILES "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)

install(
    EXPORT ${PROJECT_NAME}Targets
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)
