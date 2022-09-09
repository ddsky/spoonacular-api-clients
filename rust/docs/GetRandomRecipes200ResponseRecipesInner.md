# GetRandomRecipes200ResponseRecipesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **i32** |  | 
**title** | **String** |  | 
**image** | **String** |  | 
**image_type** | **String** |  | 
**servings** | **f32** |  | 
**ready_in_minutes** | **i32** |  | 
**license** | **String** |  | 
**source_name** | **String** |  | 
**source_url** | **String** |  | 
**spoonacular_source_url** | **String** |  | 
**aggregate_likes** | **f32** |  | 
**health_score** | **f32** |  | 
**spoonacular_score** | **f32** |  | 
**price_per_serving** | **f32** |  | 
**analyzed_instructions** | Option<[**Vec<serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**cheap** | **bool** |  | 
**credits_text** | **String** |  | 
**cuisines** | Option<**Vec<String>**> |  | [optional]
**dairy_free** | **bool** |  | 
**diets** | Option<**Vec<String>**> |  | [optional]
**gaps** | **String** |  | 
**gluten_free** | **bool** |  | 
**instructions** | **String** |  | 
**ketogenic** | **bool** |  | 
**low_fodmap** | **bool** |  | 
**occasions** | Option<**Vec<String>**> |  | [optional]
**sustainable** | **bool** |  | 
**vegan** | **bool** |  | 
**vegetarian** | **bool** |  | 
**very_healthy** | **bool** |  | 
**very_popular** | **bool** |  | 
**whole30** | **bool** |  | 
**weight_watcher_smart_points** | **f32** |  | 
**dish_types** | Option<**Vec<String>**> |  | [optional]
**extended_ingredients** | Option<[**Vec<crate::models::GetRecipeInformation200ResponseExtendedIngredientsInner>**](getRecipeInformation_200_response_extendedIngredients_inner.md)> |  | [optional]
**summary** | **String** |  | 
**wine_pairing** | Option<[**crate::models::GetRecipeInformation200ResponseWinePairing**](getRecipeInformation_200_response_winePairing.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


